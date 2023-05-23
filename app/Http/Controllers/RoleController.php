<?php

namespace App\Http\Controllers;

use App\Role;
use Illuminate\Http\Request;

class RoleController extends Controller
{
    //
    public function index(){
        $roles=Role::All();
        return view('admin.roles.index')->with('roles', $roles);
    }

    public function store(){
        return view('admin.roles.index');
    }




}
