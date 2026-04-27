<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Setting extends Model
{
    protected $table = "settings";
    protected $fillable = [
        'site_name',
        'phone',
        'fax',
        'mail',
        'location',
        'location_ar',
        'site_name_ar',
        'email',
        'facebook',
        'twitter',
        'youtube',
        'linkedin',
        'google',
        'instagram',
        'lang',
        'profile',
        'keys',
        'descc',
        'descc_ar',
        'slogan',
        'slogan_ar',
        'admin_lang',
        'open_time',
        'location1',
        'phone2',
        'tiktok',
        'location2',
        'num_of_visitors',
        'last_update',
        'working_hours_ar',
        'working_hours_en',
        'rating',
        'num_of_raters',
        'map',
        'logo',
        'dark_logo',
    ];
    public $timestamps = false;


    public function logo()
    {
        $path = public_path($this->logo);
        if ($this->logo && file_exists($path)) {
            return asset($this->logo);
        } else {
            return asset("/site/assets/images/logo-light.png");
        }

    }


    public function logoDark()
    {
        $path = public_path($this->logo_dark);
        if ($this->logo_dark && file_exists($path)) {
            return asset($this->logo_dark);
        } else {
            return asset("/site/assets/images/logo-dark.png");
        }

    }
}
