<?php

namespace App\Http\Controllers\Site;

use App\Http\Controllers\Controller;
use App\Http\Services\Site\ModuleService;
use App\Models\Post;
use Illuminate\Http\Request;

class HomeController extends Controller
{

    public function index(Request $request)
    {
        $data['sliders'] = Post::with('postLangsCurrent')->where('module' , 'Album')->get();
        return view('site/index' , compact('data'));
    }

}
