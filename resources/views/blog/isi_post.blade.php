@extends('template_blog.content')


@section('isi')

       
        @foreach ($datablog as $data)
            <!-- PAGE HEADER -->
		<div id="post-header" class="page-header">
                <div class="page-header-bg" style="background-image: url( {{ asset($data->gambar) }} )"  height="1400" width="750"></div>
			<div class="container">
				<div class="row">
					<div class="col-md-10">
						<div class="post-category">
                                                <a href="category.html">{{$data->category->nama}}</a>
						</div>
                                        <h1>{{$data->judul}}</h1>
						<ul class="post-meta">
							<li><a href="author.html">{{$data->users->name}}</a></li>
							<li>{{$data->created_at }}</li>
							
							{{-- <li><i class="fa fa-eye"></i> 807</li> --}}
						</ul>
					</div>
				</div>
			</div>
		</div>
		<!-- /PAGE HEADER -->
        </header>
        <div class="col-md-8 hot-post-left">
                <br>
                <br>
                 <div class="section-row">
        {!!$data->content!!}
                </div>
        @endforeach
        </div>  
@endsection

