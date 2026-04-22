<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Role extends Model
{


    protected $fillable = [

        'name',
        'name_ar',
        'guard_name'
    ];

    public function rolePermission()
    {
        return $this->hasMany(RolePermission::class  , 'role_id');
    }

    public function roleModules()
    {
        return $this->hasMany(RoleModule::class  , 'role_id');
    }

}
