<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Permission extends Model
{
    protected $table = 'customized_permissions';

    protected $fillable = [
        'add',
        'edit',
        'delete',
        'print',
        'active',
        'show',
        'list',
        'module_id',
    ];


}
