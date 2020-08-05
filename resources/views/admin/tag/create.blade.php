@extends('template_backend.homemaster')
@section('sub-judul','Tambah Tag')
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
<form action="{{route('tag.store')}}" method="POST">
    {{ csrf_field() }}
    <div class="form-group">

        <label>Tag</label>
        <input type="text" class="form-control" name="namatag">
    </div>
    <div class="form-group">
    <button class="btn btn-primary btn-block">Simpan Tag</button>
    </div>

</form>


@endsection