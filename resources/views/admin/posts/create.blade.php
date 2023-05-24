<x-admin-master>

@section('content')
<h1 class="h3 mb-0 text-gray-800">CREATE</h1>



@section('form')
{{-- @can('update', $post) --}}
<form method="POST" action="{{ route('post.store') }}" enctype="multipart/form-data">
    @csrf
    <div class="form-group">
        <label for="title"  class="h3 mb-0 text-gray-800">title</label>
            <input type="text" name="title" class="form-control" id="title" aria-describedby="" placeholder="Enter title">
    </div>

    <div class="form-group">
        <label for="file"  class="h3 mb-0 text-gray-800">File</label>
            <input type="file" name="post_image" class="form-control-file" id="post_image" placeholder="">
    </div>

    <div class="form-group">
        <label for="body"  class="h3 mb-0 text-gray-800">Body</label>
        <textarea name="body" class="form-control" id="body" cols="30" rows="10"></textarea>
    </div>

    <button type="submit" class="btn btn-primary">Submit</button>

</form>
{{-- @endcan --}}
@endsection




</x-admin-master>