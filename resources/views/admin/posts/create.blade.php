<x-admin-master>

@section('content')
<h1 class="h3 mb-0 text-gray-800">CREATE</h1>

@if (session()->has('message1'))
<div class="alert alert-success">
    {{ session('message') }}
</div>
@endif
@endsection

@section('form')
<form method="POST" action="{{ route('post.store') }}" enctype="multipart/form-data">
    @csrf
    <div class="form-group">
            <label for="title"></label>
            <input type="text" name="title" class="form-control" id="title" aria-describedby="" placeholder="Enter title">
    </div>

    <div class="form-group">
            <label for="file">File</label>
            <input type="file" name="post_image" class="form-control-file" id="post_image" placeholder="">
    </div>

    <div class="form-group">
        <textarea name="body" class="form-control" id="body" cols="30" rows="10"></textarea>
    </div>

    <button type="submit" class="btn btn-primary">Submit</button>

</form>
@endsection




</x-admin-master>