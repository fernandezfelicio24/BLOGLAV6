@extends('template_backend.homemaster')
@section('sub-judul','Edit kategori')
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
<form action="{{route('category.update',$category->id)}}" method="POST">
    {{ csrf_field() }}
    @method('patch')
    <div class="form-group">

        <label>Kategori</label>
    <input type="text" class="form-control" name="namakategori" value="{{$category->nama}}">
    </div>
    <div class="form-group">
    <button class="btn btn-primary btn-block">Simpan Kategori</button>
    </div>

</form>


@endsection