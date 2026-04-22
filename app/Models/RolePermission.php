<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class RolePermission extends Model
{
   protected $table='customized_role_permissions';
   protected $fillable = ['role_id' , 'permission_id' , 'permissions'];


    public function role()
    {
        $this->belongsTo(Role::class , 'role_id');
   }
}
