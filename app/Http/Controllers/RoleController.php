<?php

namespace App\Http\Controllers;

use App\Role;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;

class RoleController extends Controller
{
    //
 

    public function store(){

        request()->validate([
            'name'=>'required'
        ]);

        $roles=Role::All();
        Role::create([
            'name'=>Str::ucfirst(request('name')),
            'slug'=>Str::lower(request('name')),
        ]);
        return back()->with('roles', $roles);
    }


    public function index(){
         $roles=Role::All();
       return view('admin.roles.index')->with('roles', $roles);
   }


   public function destroy(Role $role){
    $role->delete();
    Session::flash('deleted_role', 'role was deleted successfully');
    return back();
   
    }


}
