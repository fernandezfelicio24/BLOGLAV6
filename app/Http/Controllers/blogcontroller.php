<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Posts;
use App\Category;
class blogcontroller extends Controller
{
    public function index(Posts $posts){
        $category_widget = Category::all();

        $data = $posts->orderBy('created_at','desc')->take(6)->get();
       // $data = $posts->latest()->take(6)->get();
        return view('welcome',compact('data','category_widget'));
    }

    public function isi_blog($slug){
        $category_widget = Category::all();

        $datablog = Posts::where('slug',$slug)->get();
        return view('blog.isi_post',compact('datablog','category_widget'));
    }

    public function list_post(){
        $category_widget = Category::all();

        $data = Posts::latest()->paginate(6);
        return view('blog.list_post',compact('data','category_widget'));
    }

    


  

}
