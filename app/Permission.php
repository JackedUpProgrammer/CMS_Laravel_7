<?php

namespace App;

use App\Role;
use App\User;
use Illuminate\Support\Str;
use Illuminate\Database\Eloquent\Model;

class Permission extends Model
{
    //

    protected $guarded = [];

    public function roles(){
        return $this->belongsToMany(Role::class);
    }

    public function users(){
        return $this->belongsToMany(User::class);
    }

    public function setNameAttribute($i){
        $this->attributes['slug'] = (Str::of(Str::lower($i)))->slug('-');
        $this->attributes['name'] = Str::ucfirst($i);
      }
}
