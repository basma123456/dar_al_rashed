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
        $events = $q->active()->paginate(config('app.pagination_num'))->withQueryString();
        return view('site/events/index', compact('events'));
    }



    public function show(Request $request, Post $post)
    {
       if($post->active == 'no'){
           return redirect()->back();
       }
        $q = $this->moduleService->getModuleWithPosts('events')['posts'];
        $events = $q->active()->limit(4)->except($post)->get();
        return view('site/events/show', compact('post', 'events'));
    }


}
