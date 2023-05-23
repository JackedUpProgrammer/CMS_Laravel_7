<?php

namespace App\Http\Controllers;

use App\Role;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;

class UserController extends Controller
{
    //
    public function show(User $user){
        return view('admin.users.profile', ['user' => $user, 'roles' => Role::all()]);

    }

    public function update(User $user){
       $inputs = request()->validate([
        'username' =>['required','string', 'max:255', 'alpha_dash'],
        'name' =>['required','string', 'max:255'],
        'email' =>['required','string', 'max:255'],
        'avatar'=>['file'],
        
       ]);
       if(request('avatar')){
        $inputs['avatar'] = request('avatar')->store('images');
       }

       $user->update($inputs);
       return redirect('/admin/users');
    }

    public function index(){
        $users = User::all();
        return view('admin.users.index')->with('users', $users);
    }

    public function destroy(User $user){
        $user->delete();
        Session::flash('deleted_message', 'user was deleted successfully');
        return back();
    }

    public function attach(User $user){
           $user->roles()->attach(request('role'));
           return back(); 
    }

    public function detach(User $user){
        $user->roles()->detach(request('role'));
        return back(); 
 }

    
}
