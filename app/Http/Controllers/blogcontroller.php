<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Posts;
use App\Category;
use App\Tags;
class blogcontroller extends Controller
{
    public function index(Posts $posts){
        $category_widget = Category::all();

        $data = $posts->orderBy('created_at','desc')->take(6)->get();

        $datatags = Tags::all();
       // $data = $posts->latest()->take(6)->get();
        return view('welcome',compact('data','category_widget' ,'datatags'));
    }

    public function isi_blog($slug){
        $category_widget = Category::all();

        $datablog = Posts::where('slug',$slug)->get();
        $datatags = Tags::all();
        return view('blog.isi_post',compact('datablog','category_widget','datatags'));
    }

    public function list_post(){
        $category_widget = Category::all();

        $data = Posts::latest()->paginate(6);
        $datatags = Tags::all();  
        return view('blog.list_post',compact('data','category_widget', 'datatags'));
    }

    public function list_category(category $category){
        $category_widget = Category::all();
        $data =  $category->posts()->paginate(6);
        $datatags = Tags::all();   
        return view('blog.list_post',compact('data','category_widget', 'datatags'));
    }
    
    public function cari(request $request){
        $category_widget = Category::all();
        $data =  Posts::where('judul',$request->cari)->orWhere('judul','like','%'.$request->cari.'%')->paginate(6);
        $datatags = Tags::all();   
        return view('blog.list_post',compact('data','category_widget', 'datatags'));
    }

  

}
