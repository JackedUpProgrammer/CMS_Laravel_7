<?php

namespace App\Http\Controllers;

use App\Role;
use App\Permission;
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

    
    public function edit(Role $role){
        $permissions=Permission::all();
        return view('admin.roles.edit',[
            'role'=> $role,
            'permissions'=>$permissions
        ]); 
    }




    public function update(Role $role){
        $inputs = request()->validate([
         'name' =>['required','string', 'max:255'],
        ]);

        
         $role->name = $inputs['name']; 
         $role->slug = $inputs['name']; 

        if($role->isDirty('name')){Session::flash('updated_role', 'Role was updated successfully: '. $inputs['name']);}
        else{Session::flash('updated_role', 'Role kept the same');};

        $role->update($inputs);
        return redirect('/admin/roles');
     }

}
