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
    protected $catName;

    public function __construct(ModuleService $moduleService)
    {
        $this->moduleService = $moduleService;
        $this->name =   app()->getLocale()  == 'en' ? 'name_en' : "name_ar";
        $this->catName = app()->getLocale()  == 'en' ? 'name' : "name_ar";
    }

    public function index(Request $request)
    {
        $q = $this->moduleService->getModuleWithPosts('releases')['posts'];
        $q = $this->moduleService->search($request, $q , ['category' => $request->category]);
        $releases = $q->active()->paginate(config('app.pagination_num'))->withQueryString();
        $cats = Category::where('module' , 'releases')->get();
        $name = $this->name;
        $catName = $this->catName;
        return view('site/releases/index', compact('releases' , 'cats' , 'name' , 'catName'));
    }



    public function show(Request $request, Post $post)
    {
        if($post->active == 'no'){
            return redirect()->back();
        }
        $q = $this->moduleService->getModuleWithPosts('releases')['posts'];
        $cats = Category::where('module' , 'releases')->withCount('posts')->get();
        $name = $this->name;
        $catName  = $this->catName;
        $books = $q->active()->limit(4)->except($post)->get();
        return view('site/releases/show', compact('post' , 'cats' , 'name' , 'catName' , 'books'));
    }


}
