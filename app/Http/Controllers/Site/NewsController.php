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
        $q = $this->moduleService->searchDateAndTitle($request, $q);
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
