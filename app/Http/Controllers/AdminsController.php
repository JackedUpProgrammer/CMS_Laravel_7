<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class AdminsController extends Controller
{
    //
    public function index(Auth $auth){
        return view('admin.index')->with('auth', $auth);
    }
}
