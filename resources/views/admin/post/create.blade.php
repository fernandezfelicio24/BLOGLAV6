@extends('template_backend.homemaster')
@section('sub-judul','Tambah Post')
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
<form action="{{route('post.store')}}" method="POST" enctype="multipart/form-data">
    {{ csrf_field() }}

    <div class="form-group">

        <label>Judul</label>
        <input type="text" class="form-control" name="judul">
    </div>

    <div class="form-group">

        <label>Kategori</label>
        <select class="form-control" name="kategori_id">
            <option value="" holder>Pilih Kategori</option>
            @foreach ($category as $result)
        <option value="{{$result->id}}" >
                {{$result->nama}}
            </option>
            @endforeach
           
        </select>
    </div>

    <div class="form-group">
        <label>Pilih Tag</label>
        <select class="form-control select2" multiple="" name="tags[]">

            @foreach ($tags as $hasil)
        <option value="{{$hasil->id}}">{{$hasil->nama}}</option>
            @endforeach
         
          
        </select>
      </div>

    <div class="form-group">

        <label>Konten</label>
        <textarea name="konten" class="form-control" cols="30" rows="10" id="content"></textarea>
    </div>

    <div class="form-group">

        <label>Thumbnail</label>
        <input type="file" name="gambar" class="form-control">
    </div>

    <div class="form-group">
    <button class="btn btn-primary btn-block">Simpan Post</button>
    </div>

</form>

<script src="https://cdn.ckeditor.com/4.14.1/standard/ckeditor.js"></script>
<script>

CKEDITOR.replace( 'content' );
</script>
@endsection 