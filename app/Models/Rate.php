<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Rate extends Model
{
    protected $fillable=[
        'service_id',
        'value',
        'ip_address',
    ];





}
