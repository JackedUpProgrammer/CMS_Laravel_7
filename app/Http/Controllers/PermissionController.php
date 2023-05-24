<?php

namespace App\Http\Controllers;

use App\Permission;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;

class PermissionController extends Controller
{
    //
    public function index(){
        $permissions = Permission::All();
        return view('admin.permissions.index')->with('permissions', $permissions);
    }




    public function destroy(Permission $permission){
        $permission->delete();
        Session::flash('deleted_permission', 'permission was deleted successfully');
        return back();
        }



    public function store(){

        request()->validate([
            'name'=>'required'
        ]);

        $permissions=Permission::All();
        Permission::create([
            'name'=>Str::ucfirst(request('name')),
            'slug'=>Str::lower(request('name')),
        ]);
        Session::flash('created_permission', 'Permission was created successfully');
        return back()->with('permissions', $permissions);
    }




    public function edit(Permission $permission){
        return view('admin.permissions.edit',[
            'permission'=> $permission,
            'permissions'=>Permission::all()

        ]); 
    }



    public function update(Permission $permission){
        $inputs = request()->validate([
         'name' =>['required','string', 'max:255'],
        ]);

        
         $permission->name = $inputs['name']; 
         $permission->slug = $inputs['name']->slug('-'); 

        if($permission->isDirty('name')){Session::flash('updated_permission', 'Permission was updated successfully: '. $inputs['name']);}
        else{Session::flash('updated_permission', 'Permission kept the same');};

        $permission->update($inputs);
        return redirect('/admin/permissions');
     }


}
