<?php

namespace App\Http\Controllers\Site;

use App\Http\Controllers\Controller;
use App\Http\Services\Site\ModuleService;
use App\Models\Post;
use Illuminate\Http\Request;

class NewsController extends Controller
{
    protected $moduleService;

    public function __construct(ModuleService $moduleService)
    {
        $this->moduleService = $moduleService;
    }

    public function news(Request $request)
    {
        $q = $this->moduleService->getModuleWithPosts('News')['posts'];
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
        $news = $q->active()->paginate(config('app.pagination_num'))->withQueryString();
        return view('site/news/index', compact('news'));
    }



    public function showNew(Request $request, Post $post)
    {
        if($post->active == 'no'){
            return redirect()->back();
        }
        $q = $this->moduleService->getModuleWithPosts('News')['posts'];
        $news =$q->active()->except($post)->limit(4)->get();
        return view('site/news/show', compact('post', 'news'));
    }

}
