<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class RoleModule extends Model
{
    protected $fillable = ['role_id' , 'module_id' , 'permissions'];


    public function role()
    {
        $this->belongsTo(Role::class , 'role_id');
    }
    public function module()
    {
        $this->belongsTo(Module::class , 'module_id');
    }

}
