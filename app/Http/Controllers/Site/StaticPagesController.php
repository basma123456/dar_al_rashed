<?php

namespace App\Http\Controllers\Site;

use App\Http\Controllers\Controller;
use App\Models\Post;
use Illuminate\Http\Request;

class StaticPagesController extends Controller
{
    public function show($id, $title)
    {
        $post = Post::where('module', 'staticpages')->with('postLangsCurrent')->findOrFail($id);
        return view('site.pages.show', compact('post'));
    }
}
