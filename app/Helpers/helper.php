<?php

use App\Models\Post;

function pages()
{

    return Post::where('module', 'staticpages')->with('postLangsCurrent')->get();
}

function getTagWord($word)
{
    return implode('-', explode(' ', $word));
}
