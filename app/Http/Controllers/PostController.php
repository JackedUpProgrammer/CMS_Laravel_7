<?php

namespace App\Http\Controllers;

use App\Post;
use Illuminate\Http\Request;

class PostController extends Controller
{
    public function show(Post $post){
        //   $post = Post::findOrFail($id);
        return view('blog-post')->with('post',$post);
    }

    public function create(){
        return view('admin.posts.create');
    }

   
}
