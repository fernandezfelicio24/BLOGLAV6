<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\softDeletes;

class Posts extends Model
{
    use softDeletes;

    protected $fillable = ['judul','category_id','content','gambar','slug','users_id'];


    //Ini adalah contoh eloquent relationship dimana menghubungkan table 
    //Lewat model tanpa lansung ke database nya..
     

      public function category()
         {
             return $this->belongsTo('App\Category');
         }

         public function tags(){
            return $this->belongsToMany('App\Tags');
         }

         public function users(){
             return $this->belongsTo('App\User');
         }
}
