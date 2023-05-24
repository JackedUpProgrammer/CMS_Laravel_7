<?php

namespace App;

use App\User;
use App\Permission;
use Illuminate\Support\Str;
use Illuminate\Database\Eloquent\Model;

class Role extends Model
{   
    protected $guarded = [];
    //
    public function permissions(){
        return $this->belongsToMany(Permission::class);
    }

    public function users(){
        return $this->belongsToMany(User::class);
    }

    public function setNameAttribute($i){
        $this->attributes['name'] = (Str::of(Str::lower($i)))->slug('-');
        $this->attributes['name'] = Str::ucfirst($i);
      }

      
}
