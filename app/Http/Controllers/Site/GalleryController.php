<?php

namespace App\Http\Controllers\Site;

use App\Http\Controllers\Controller;
use App\Http\Services\Site\ModuleService;
use App\Models\Post;
use Illuminate\Http\Request;

class GalleryController extends Controller
{
//    public function index()
//    {
//        return view('site/gallery/index');
//    }
    protected $name;
    protected $moduleService;

    public function __construct(ModuleService $moduleService )
    {
        $this->moduleService = $moduleService;
        $this->name =   app()->getLocale()  == 'en' ? 'name_en' : "name_ar";
    }

    public function index(Request $request)
    {
        $q = $this->moduleService->getModuleWithPosts('gallery')['posts'];
        $q = $this->moduleService->search($request, $q);
        $galleries = $q->active()->get();
        $name = $this->name;
        return view('site/gallery/index', compact('galleries' , 'name'));
    }


    public function show(Request $request, Post $post)
    {
        if ($post->active == 'no') {
            return redirect()->back();
        }

        $q = $this->moduleService->getModuleWithPosts('gallery')['posts'];
        $galleries = $q->active()->except($post)->limit(4)->get();
        $name = $this->name;

        return view('site/gallery/show', compact('post', 'galleries' , 'name'));
    }

}
