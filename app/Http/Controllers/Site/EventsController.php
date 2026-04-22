<?php

namespace App\Http\Controllers\Site;

use App\Http\Controllers\Controller;
use App\Http\Services\Site\ModuleService;
use App\Models\Post;
use Illuminate\Http\Request;

class EventsController extends Controller
{
    protected $moduleService;

    public function __construct(ModuleService $moduleService)
    {
        $this->moduleService = $moduleService;
    }

    public function index(Request $request)
    {
        $q = $this->moduleService->getModuleWithPosts('events')['posts'];
        $q = $this->moduleService->searchDateAndTitle($request, $q);
        $events = $q->active()->paginate(config('app.pagination_num'))->withQueryString();
        return view('site/events/index', compact('events'));
    }


    public function show(Request $request, Post $post)
    {
        if ($post->active == 'no') {
            return redirect()->back();
        }
        $q = $this->moduleService->getModuleWithPosts('events')['posts'];
        $events = $q->active()->limit(4)->except($post)->get();
        return view('site/events/show', compact('post', 'events'));
    }


}
