<?php
    
    use Illuminate\Support\Facades\Route;  
    
    Route::get('/post/{post}', 'PostController@show')->name('blog.post');
    
    
    Route::get('/posts', 'PostController@index')->name('posts.index');
    Route::get('/posts/create', 'PostController@create')->name('post.create');
    Route::post('/posts', 'PostController@store')->name('post.store');
    Route::delete('/delete/posts/{post}/destroy', 'PostController@destroy')->name('post.destroy');
    Route::get('/posts/{post}/edit', 'PostController@edit')->name('post.edit');
    Route::patch('/posts/{post}/update', 'PostController@update')->name('post.update');