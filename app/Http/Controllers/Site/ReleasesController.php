<?php

namespace App\Http\Controllers\Site;

use App\Http\Controllers\Controller;
use App\Http\Services\Site\ModuleService;
use App\Models\Category;
use App\Models\Post;
use Illuminate\Http\Request;

class ReleasesController extends Controller
{
    protected $moduleService;
    protected $name;

    public function __construct(ModuleService $moduleService)
    {
        $this->moduleService = $moduleService;
        $this->name =   app()->getLocale()  == 'en' ? 'name' : "name_ar";
    }

    public function index(Request $request)
    {
        $q = $this->moduleService->getModuleWithPosts('releases')['posts'];
        #################search part####################
        if (!empty($request->search)) {
            $q->where(function ($query) use ($request) {
                $query->where('name_ar', 'like', "%" . $request->search . "%")->orWhere('name_en', 'like', '%' . $request->search . "%");
            });
        }
        if (!empty($request->date) && is_numeric($request->date)) {
            $q->whereHas('postLangs', function ($query) use ($request) {
                $query->whereDate('txt1', '<=', date_create('12/31/' . $request->date)->format('Y-m-d'))
                    ->whereDate('txt1', '>=', date_create('1/1/' . $request->date)->format('Y-m-d'));
            });
        }
        #################end search part####################
        $releases = $q->active()->paginate(config('app.pagination_num'))->withQueryString();
        $cats = Category::where('module' , 'releases')->get();
        $name = $this->name;
        return view('site/releases/index', compact('releases' , 'cats' , 'name'));
    }



    public function show(Request $request, Post $post)
    {
        if($post->active == 'no'){
            return redirect()->back();
        }
        $q = $this->moduleService->getModuleWithPosts('releases')['posts'];
        $releases = $q->active()->limit(4)->except($post)->get();
        return view('site/releases/show', compact('post', 'releases'));
    }


}
