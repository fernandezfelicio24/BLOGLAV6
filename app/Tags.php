<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Tags extends Model
{
    protected $fillable = ['nama','slug'];


    //relasi many to many, banyak tags bisa dimiliki  banyak post dan sebaliknyas
    public function post()
    {
        return $this->belongsToMany('App\Post');
    }
    
}
