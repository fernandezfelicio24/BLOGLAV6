@extends('template_backend.homemaster')
@section('sub-judul','Edit User')
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
<form action="{{route('user.update',$user->id)}}" method="POST">
    {{ csrf_field() }}
    @Method('put')
    <div class="form-group">

        <label>Nama User</label>
    <input type="text" class="form-control" name="namauser" value="{{$user->name}}">
    </div>
    <div class="form-group">

        <label>Email</label>
    <input type="email" class="form-control" name="email" value="{{$user->email}}" readonly>
    </div>
    <div class="form-group">

        <label>Tipe User</label>
        <select  class="form-control"name="tipe" id="">
            <option value="" holder>Pilih Tipe User</option>
            <option value="1" holder
            @if ($user->tipe==1)
                Selected
            @endif
            >Administrator</option>
            <option value="0" holder
            @if ($user->tipe==0)
            Selected
             @endif
            >Author</option>
        </select>
    </div>

    <div class="form-group">

        <label>Password</label>
        <input type="password" class="form-control" name="password">
    </div>
    <div class="form-group">
    <button class="btn btn-primary btn-block">Update User</button>
    </div>

</form>


@endsection