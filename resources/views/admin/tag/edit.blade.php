@extends('template_backend.homemaster')
@section('sub-judul','Edit Tag')
@section('content')


@if ($errors->any())

    <div class="alert alert-danger" role="alert">
        @foreach ($errors->all() as $error)
        <li>{{ $error }}</li>
    @endforeach
      </div>
@endif

@if (Session::has('success'))
<div class="alert alert-success" role="alert">
    {{Session('success')}}
  </div>

     
@endif
<form action="{{route('tag.update',$tag->id)}}" method="POST">
    {{ csrf_field() }}
    @method('patch')
    <div class="form-group">

        <label>Kategori</label>
    <input type="text" class="form-control" name="namatag" value="{{$tag->nama}}">
    </div>
    <div class="form-group">
    <button class="btn btn-primary btn-block">Simpan Tag</button>
    </div>

</form>


@endsection