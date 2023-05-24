<?php

namespace App\Http\Controllers;

use App\Post;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class AdminsController extends Controller
{
    //
    public function index(Auth $auth){
        return view('admin.index',[
            'auth'=> $auth,
            'posts'=>Post::All(),
            'users'=>User::All()
        ]);
    }
}
