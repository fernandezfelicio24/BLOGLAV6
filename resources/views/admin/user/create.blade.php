@extends('template_backend.homemaster')
@section('sub-judul','Tambah User')
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
<form action="{{route('user.store')}}" method="POST">
    {{ csrf_field() }}
    <div class="form-group">

        <label>Nama User</label>
        <input type="text" class="form-control" name="namauser">
    </div>
    <div class="form-group">

        <label>Email</label>
        <input type="email" class="form-control" name="email">
    </div>
    <div class="form-group">

        <label>Tipe User</label>
        <select  class="form-control"name="tipe" id="">
            <option value="" holder>Pilih Tipe User</option>
            <option value="1" holder>Administrator</option>
            <option value="0" holder>Penulis</option>
        </select>
    </div>

    <div class="form-group">

        <label>Password</label>
        <input type="password" class="form-control" name="password">
    </div>
    <div class="form-group">
    <button class="btn btn-primary btn-block">Simpan User</button>
    </div>

</form>


@endsection