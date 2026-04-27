<?php

namespace App\Http\Controllers\Site;

use App\Http\Controllers\Controller;
use App\Http\Services\Site\ModuleService;
use App\Models\Post;
use App\Models\Rate;
use Illuminate\Http\Request;

class ServiceController extends Controller
{
    protected $moduleService;

    public function __construct(ModuleService $moduleService)
    {
        $this->moduleService = $moduleService;
    }

    public function index(Request $request)
    {
        $q = $this->moduleService->getModuleWithPosts('services')['posts'];
        $q = $this->moduleService->search($request, $q);
        $services = $q->active()->get();
        return view('site/services/index', compact('services'));
    }



    public function show(Request $request, Post $post)
    {
        if($post->active == 'no'){
            return redirect()->back();
        }

        $rate = Rate::where('service_id' , $post->id)->avg('value')??0;
        $q = $this->moduleService->getModuleWithPosts('services')['posts'];
        $services =$q->active()->except($post)->limit(4)->get();
        return view('site/services/show', compact('post', 'services' , 'rate'));
    }

}
