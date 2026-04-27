<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\Admin\PostRequest;
use App\Http\Services\Admin\LogsService;
use App\Http\Services\Admin\PostService;
//use App\Models\admin\Logs;
use App\Http\Traits\ImageTrait;
use App\Http\Traits\SettingTrait;
use App\Models\Category;
use App\Models\Module;
use App\Models\ModuleMoreFields;
use App\Models\Post;
use App\Models\PostsLang;
use App\Models\PostsMoreFields;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Lang;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Str;

class PostController extends Controller
{
    use ImageTrait;
    use SettingTrait;

    protected $name;
    protected $postService;
    protected $logsService;


    public function __construct(PostService $postService, LogsService $logsService)
    {
        $this->postService = $postService;
        $this->name = app()->getLocale() == 'ar' ? 'name_' . app()->getLocale() : 'name';
        $this->logsService = $logsService;
    }


    public function create($module, Request $request)
    {
        $name = $this->name;
        $moduleRow = Module::with('moreFields')->where('title', $module)->firstOrFail();

        $cat = Category::where('module', '=', $moduleRow->title)->get();
        $fields = [];

        if (count($moduleRow->moreFields)) {
            foreach ($moduleRow->moreFields as $row) {
                $serializedData = $row->fValues;
                $unserializedData = unserialize($serializedData);
                $fields[$row->fieldName] = $unserializedData;
            }
        }
        return view('admin/posts/create', compact('moduleRow', 'cat', 'name'));
    }



    public function edit($module, $id)
    {
        $name = $this->name;
        $data = Post::with('postLangsCurrent', 'moduleRelation', 'moreFields')->with(['postLangs' => function ($q) {
            $q->take(2);
        }])
            ->where('posts.module', $module)
            ->find($id);

        $morefields_data = ModuleMoreFields::where('mid', $data->module_id)->get();
        $fields = [];
        if ($morefields_data) {
            foreach ($morefields_data as $row) {
                $serializedData = $row->fValues;
                $unserializedData = unserialize($serializedData);
                $fields[$row->fieldName] = $unserializedData;
            }
        }
        $cat = Category::where('module', '=', $data->moduleRelation->title)->get();
        Log::info($data);
        return view('admin/posts/edit', compact('data', 'morefields_data', 'fields', 'name', 'id', 'cat'));

    }


    public function getArrForUpdate(Request $request, $postRow)
    {
        $details = ($postRow->module == 'video' || $postRow->module == 'videos') ? $request->details : $request->details_ar;
        $arrAr = [
            'posts_lang.name' => $request->parname_rtl ?? 0,
            'posts.name_ar' => $request->parname_rtl ?? 0,
            'lang' => 'ar',
            'posts_lang.details' => $details ?? 0, //videos
            'posts_lang.short' => $request->short_ar ?? 0, //videos
            'posts_lang.keyss' => $request->keyss_ar ?? 0,
            'posts_lang.descc' => $request->descc_ar ?? 0,
            'posts_lang.txt1' => $request->txt_ar0 ?? 0,
            'posts_lang.txt2' => $request->txt_ar1 ?? 0,
            'posts_lang.txt3' => $request->txt_ar2 ?? 0,
            'posts_lang.txt4' => $request->txt_ar3 ?? 0,
            'posts_lang.area1' => $request->area_ar0 ?? 0,
            'posts_lang.area2' => $request->area_ar1 ?? 0,
            'posts_lang.area3' => $request->area_ar2 ?? 0,
            'posts_lang.area4' => $request->area_ar3 ?? 0,
        ];
        $arrEn = [
            'posts.name_en' => $request->parname,
            'posts.news_date' => $request->news_date,
            // 'posts.title_url' => Str::slug($request->pename, '-'),
            'cat' => $request->cat ?? null,
            'posts_lang.name' => $request->parname,
            'posts_lang.details' => $request->details ?? 0,
            'posts_lang.short' => $request->short ?? 0,
            'posts_lang.keyss' => $request->keyss_en ?? 0,
            'posts_lang.descc' => $request->descc_en ?? 0,
            'posts_lang.txt1' => $request->txt0 ?? 0,
            'posts_lang.txt2' => $request->txt1 ?? 0,
            'posts_lang.txt3' => $request->txt2 ?? 0,
            'posts_lang.txt4' => $request->txt3 ?? 0,
            'posts_lang.area1' => $request->area0 ?? 0,
            'posts_lang.area2' => $request->area1 ?? 0,
            'posts_lang.area3' => $request->area2 ?? 0,
            'posts_lang.area4' => $request->area3 ?? 0,
            'file_type' => $request->file_type,
        ];

        $pic = null;
        if ($request->hasFile('pic')) {
            $pic = $this->updateImage($request, '/uploads/posts/images', $request->pic, 'pic', $postRow);
            if ($pic) {
                $arrEn = array_merge(['pic' => $pic], $arrEn);
            }
        }

        return ['ar' => $arrAr, 'en' => $arrEn];
    }


    public function update($module, $id, PostRequest $request)
    {
        $data = $this->postService->queryPostByQueryBuilder($id, 'en');
        $postRow = $data->first();
        $postRow->moreFields()->delete();
        $moduleRow = Module::with('moreFields')->where('title', $module)->first();
        if ($moduleRow->up > 0) {
            $this->updateImageForMoreUploads($request, '/uploads/posts/', [$request->up0, $request->up1, $request->up2], ['up0', 'up1', 'up2'], $data, ['up1', 'up2', 'up3'], $postRow);
        }
        $arrayData = $this->getArrForUpdate($request, $postRow);
        $this->postService->updateByQueryBuilder($arrayData['en'], $arrayData['ar'], $id);
        if ($request->title_url) {
            $data->update(['title_url' => Str::slug($request->title_url, '-'),]);
        }


        /****************settings and logs part***************/
        $this->lastUpdateForSettings();
        $this->logsService->saveLog($id, $module, 'Edit post for ' . $module . ' module (' . $id . ')');
        /****************settings and logs part***************/

        if (!$data) {
            return back()->with('error', '$error_occured');
        }
        return back()->with('success', '$success_edit');
    }


    public function getArrForStore(Request $request, $moduleRow, $p_order)
    {
//        dd($request->all());
        $img = null;
        if ($request->hasFile('pic')) {
            $img = $this->storeImage($request, '/uploads/posts/images/', $request->pic, 'pic');
        }
        $arr = [
            'name_en' => $request->parname,
            'name_ar' => $request->parname_rtl,
            'module' => $moduleRow->title,
            'module_id' => $moduleRow->id,
            'pic' => $img,
            'news_date' => $request->news_date,
            'p_order' => $p_order,
            'cat' => $request->cat ?? null,
            'cat2' => 0,
            'add_date' => 0,
            'views' => 0,
            'downloads' => 0,
            'comments' => 0,
            'url' => 0,
            'title_url' => Str::slug($request->parname, '-'),
            'real_url' => 0,
            'code' => 0,
            'country' => 0,
            'region' => 0,
            'rate' => 0,
            'file_type' => $request->file_type,
        ];
        /****************images*********/
        $images_uploades = []; //here
        if ($moduleRow->up > 0) {
            $images_uploades = $this->storeImagesForMoreUploadsForPost($request, '/uploads/posts/', [$request->up0, $request->up1, $request->up2], ['up0', 'up1', 'up2'], ['up1', 'up2', 'up3']);
            $arr = array_merge($arr, $images_uploades);
        }
        /********************end images***********/

        return $arr;
    }


    public function store(PostRequest $request, $module)
    {
        $request->validated();
        $moduleRow = Module::where('title', $module)->firstOrFail();
        $order_q = Post::where('module', $request->module)->max('p_order');
        $p_order = ($order_q !== null) ? $order_q + 1 : 1;
        $arr = $this->getArrForStore($request, $moduleRow, $p_order);
        $lastInsertID = $this->postService->insertNewPostAndGetId($arr);

        /***********************start more fields field*****************/
        $moduleId = Module::where('title', $module)->value('id');
        $data0 = \App\Models\ModuleMoreFields::where('mid', $moduleId)->get();
        foreach ($data0 as $row0) {
            if ($row0->fType == 'checkbox' or $row0->fType == 'radio' or $row0->fType == 'dropdown') {
                $valofcheckbox = $request->input('morefield' . $row0->id);


                $field = $data0->where('fieldName', $row0->fieldName)->first();
                $fType = $field ? $field->fType : null;
                $morid = $field ? $field->id : null;

                $fieldValuesSerialized = serialize($valofcheckbox);
                $data6 = \App\Models\PostsMoreFields::updateOrCreate([
                    'post_id' => $lastInsertID,
                    'field_name' => $row0->fieldName,
                ], [
                    'field_value' => $fieldValuesSerialized,
                ]);
                //  print_r($valofcheckbox);
            }
            if ($row0->fType == 'textbox') {
                $valoftxtbox = $request->input('morefield' . $row0->id);
                $data6 = PostsMoreFields::updateOrCreate([
                    'post_id' => $lastInsertID,
                    'field_name' => $row0->fieldName,
                ], [
                    'field_value' => $valoftxtbox,
                ]);
            }
            if ($row0->fType == 'fileupload') {
                 $image_names = null;

                 if ($request->hasFile('morefield' . $row0->id)) {
                    $fileName = $request->file('morefield' . $row0->id);

                     $image_name = time() . '.' . $fileName->getClientOriginalExtension();
                    $filePath = public_path('uploads/posts/images');
                    $fileName->move($filePath, $image_name);

                 }

                 $data6 = PostsMoreFields::updateOrCreate([
                    'post_id' => $lastInsertID,
                    'field_name' => $row0->fieldName,
                ], [
                    'field_value' => $image_name,
                ]);
            }
        }
        /***********************end more fields field*****************/

        $postLangs = $this->postService->attachPostFields($request, $lastInsertID);


        /****************settings and logs part***************/
        $this->lastUpdateForSettings();
        $this->logsService->saveLog($lastInsertID, $module, 'Add a new post for ' . $module . ' module (' . $lastInsertID . ')');
        /****************settings and logs part***************/

        if ($lastInsertID or $postLangs) {
            return redirect(route('admin.module.show', $request->module))->with('success', __('admin.added_successfully'));
        } else {
            return back()->with('error', __('admin.error_occured'));
        }
    }

    public function changePostOrder($module, $direction, Post $post)
    {
        $msg = $this->postService->changePostOrder($module, $direction, $post);
        return redirect()->back()->with(['msg' => $msg]);
    }

    public function changePostOrderToLastFirst(Post $post)
    {
        $check = $this->postService->changePostOrderToLastFirst($post);
        if ($check) {
            return redirect()->back()->with(['msg' => __('lang.success')]);
        }

    }

    public function changeStatus(Post $post)
    {
        $msg = $this->postService->changeStatus($post);
        return redirect()->back()->with(['msg' => $msg]);
    }





    public function show($module, $id)
    {
        $name = $this->name;
        $data = Post::with('postLangsCurrent', 'moduleRelation', 'moreFields')->with(['postLangs' => function ($q) {
            $q->take(2);
        }])
            ->where('posts.module', $module)
            ->find($id);

        $morefields_data = ModuleMoreFields::where('mid', $data->module_id)->get();
        $fields = [];
        if ($morefields_data) {
            foreach ($morefields_data as $row) {
                $serializedData = $row->fValues;
                $unserializedData = unserialize($serializedData);
                $fields[$row->fieldName] = $unserializedData;
            }
        }
        $cat = Category::where('module', '=', $data->moduleRelation->title)->get();
        Log::info($data);
        return view('admin/posts/show', compact('data', 'morefields_data', 'fields', 'name', 'id', 'cat'));

    }


    public function delete(Post $post)
    {
        $post->delete();
        return redirect()->back()->with('success', __('admin.deleted_successfully'));
    }


    public function deleteAlSelected(Request $request, $module_title)
    {
        if(empty($request->post_id)){
            return redirect()->back()->with('error', __('admin.select_posts_first'));
        }
        Post::whereIn('id', $request->post_id)->delete();
        return redirect()->back()->with('success', __('admin.deleted_successfully'));
    }
}
