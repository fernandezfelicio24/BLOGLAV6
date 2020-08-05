@extends('template_backend.homemaster')
@section('sub-judul','kategori')
@section('content')
   
@if (Session::has('success'))
<div class="alert alert-success" role="alert">
    {{Session('success')}}
  </div>
  @endif
<a href="{{route('category.create')}}" class="btn btn-info btn-sm">Tambah Kategori</a>
   <br>
    <table class="table table-striped table-hover table-sm table-border">
            <thead>
                <tr>
                    <th>No</th>
                    <th>Nama Kategori</th>
                    <th>Action</th>
                </tr>
               
            </thead>
            <tbody>
                @foreach ($category as $result => $hasil)
                <tr>
                <td>{{$result+$category->firstitem()}}</td>
                    <td>  {{$hasil->nama}} </td>
                <td> 
                <form action="{{(route('category.destroy',$hasil->id))}}" method="POST">
                    {{ csrf_field() }}
                         @method('DELETE')
                         <a href="{{route('category.edit',$hasil->id)}}" class="btn btn-primary btn-sm">Edit</a>
                        <button type="submit" class="btn btn-danger btn-sm">Hapus</button>
                </form>
               
                    </td>
                   
                </tr>
                @endforeach
            </tbody>
    </table>
    {{$category->links()}}
     

 
 
@endsection