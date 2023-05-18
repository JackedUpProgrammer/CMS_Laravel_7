<?php

namespace App\Http\Controllers;

use App\Post;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;
use Illuminate\Database\Eloquent\Relations\HasMany;


class PostController extends Controller
{
    public function show(Post $post){
        //   $post = Post::findOrFail($id);
        
        return view('blog-post')->with('post',$post);
    }

    public function create(){
        $this->authorize('update',$post);
        return view('admin.posts.create');
    }
  

   public function store(){
    $inputs = request()->validate([
        'title' => 'required|min:1|max:255',    //title is the name ascpect on the form
         'post_image' => 'file',
         'body' => 'required'                    
     ]);

     if(request('post_image')){
        $inputs['post_image'] = request('post_image')->store('images'); //if exists,create folder to store photos in and get file 
     }
     
     auth()->user()->posts()->create($inputs);
     Session::flash('created_message', 'post was created successfully');
      return redirect('admin/posts');
     
     }

     public function index(){
          $posts= Post::all();
        // $posts = auth()->user()->posts();  if you want to display background data
        //$posts = auth()->user()->posts;    if you want to display the results
         //$posts = auth()->user()->posts;
        
        
        return view('admin.posts.index')->with('posts', $posts);
     }

     public function destroy(Post $post){
        $post->delete();
        Session::flash('deleted_message', 'post was deleted successfully');
        return back();
    }

    public function edit(Post $post){
       
        return view('admin.posts.edit')->with('post', $post);
        
    }

    public function update(Post $post){
        $inputs = request()->validate([
            'title' => 'required|min:1|max:255',    //title is the name ascpect on the form
             'post_image' => 'file',
             'body' => 'required'                    
         ]);
        
        if(request('post_image')){
            $inputs['post_image'] = request('post_image')->store('images'); //if exists,create folder to store photos in and get file 
            $post->post_image = $inputs['post_image']; 
        }
            $post->title = $inputs['title']; 
            $post->body = $inputs['body']; 

            $this->authorize('update',$post);

            // auth()->user()->posts()->save($post);
            $post->save();
       
            Session::flash('updated_message', 'post was updated successfully');
            return redirect('admin/posts');

       
    }

}