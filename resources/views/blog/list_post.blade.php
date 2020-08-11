@extends('template_blog.content')


@section('isi')

<!-- /post -->


<!-- post -->
@foreach ($data as $list_post)

<div class="post post-row">
    <a class="post-img" href="{{route('blog.isi',$list_post->slug)}}"><img src="{{asset($list_post->gambar)}}" height=350" width="250"></a>
    <div class="post-body">
        <div class="post-category">
            <a href="#">{{$list_post->category->nama}}</a>
  
        </div>
        <h3 class="post-title"><a href="#">{{$list_post->judul}}</a></h3>
        <ul class="post-meta">
            <li><a href="author.html">{{$list_post->users->name}}</a></li>
            <li>{{ \Carbon\Carbon::parse($list_post['created_at'])->diffForHumans() }}</li>
        </ul>
       
    </div>
</div>
<!-- /post -->

@endforeach
<center>{{$data->links()}}</center>

                   



@endsection