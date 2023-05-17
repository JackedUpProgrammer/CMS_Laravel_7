<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Post extends Model
{   

    protected $fillable = [
        'title', 'post_image', 'body',
    ];


    //
    public function user(){
        return $this->belongsTo(User::class);
    }
}