<x-admin-master>

    @section('content')
    <h1 class="h3 mb-0 text-gray-800">EDIT POST</h1>
    
    
    
    @section('form')
    <form method="POST" action="{{ route('post.update',$post->id) }}" enctype="multipart/form-data">
        @csrf
        @method('PATCH')
        {{-- patch is update --}}
        <div class="form-group">
                <label for="title"></label>
                <input type="text" name="title" class="form-control" id="title" aria-describedby="" value="{{ $post->title }}" placeholder="Enter title">
        </div>
    
        <div class="form-group">
                <div><img height="100px" src="{{ $post->post_image }}" alt=""></div>
                <label for="file">File</label>
                <input type="file" name="post_image" class="form-control-file" value="{{ $post->post_image }}" id="post_image"  placeholder="">
        </div>
    
        <div class="form-group">
            <textarea name="body" class="form-control" id="body" cols="30" rows="7">{{ $post->body }}</textarea>
        </div>
    
        <button type="submit" class="btn btn-primary">Update</button>
    
    </form>
    @endsection
    
    
    
    
    </x-admin-master>