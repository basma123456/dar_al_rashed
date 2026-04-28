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

function render_html($value) {
    $value = html_entity_decode($value);
    $value = strip_tags($value, '<p><br>');
    $value = preg_replace('/<p><br><\/p>/', '', $value);

    return $value;}
