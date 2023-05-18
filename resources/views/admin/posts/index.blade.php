<x-admin-master>
@section('content')
<h1 class="h3 mb-0 text-gray-800">All Posts</h1>


@if (session()->has('deleted_message'))
<div class="alert alert-danger">
    {{ session('deleted_message') }}
</div>
@endif

@if (session()->has('created_message'))
<div class="alert alert-success">
    {{ session('created_message') }}
</div>
@endif

@endsection



@section('posts')
          <!-- DataTales Example -->
          <div class="card shadow mb-4">
            <div class="card-header py-3">
              <h6 class="m-0 font-weight-bold text-primary">All Posts</h6>
            </div>
            <div class="card-body">
              <div class="table-responsive">
                <table class="table table-responsive table table-bordered" id="dataTable" width="100%" cellspacing="0">
                  <thead>
                    <tr>
                      <th>Id</th>
                      <th>Owner</th>
                      <th>Title</th>
                      <th>Post image</th>
                      <th>Created at</th>
                      <th>Updated at</th>
                      <th>Delete</th>
                      <th>Edit</th>
                     
                    </tr>
                  </thead>
                  <tbody>
                  @foreach ($posts as $post)
                    <tr>
                      <td>{{ $post->id }}</td>
                      <td>{{ $post->user->name }}</td>
                      <td>{{ $post->title }}</td>
                      <td><div><img height="40px" src="{{asset($post->post_image)}}" alt=""></div></td>
                      <td>{{ $post->created_at->diffForHumans() }}</td>
                      <td>{{ $post->updated_at->diffForHumans() }}</td>

                      <td> 
                      <form method="POST" action="{{ route('post.destroy', $post->id) }}">
                        @csrf
                        @method('DELETE')
                        <button type="submit" class="btn btn-danger">Delete</button>
                      </form> 
                      </td>

                      <td> 
                        <form method="POST" action="{{ route('post.edit', $post->id) }}">
                          @csrf
                          @method('GET')
                          <button type="submit" class="btn btn-primary">Edit</button>
                        </form> 
                        </td>
                      
                    </tr>
                  @endforeach
                </tbody>
                </table>
              </div>
            </div>
          </div>

@endsection


@section('scripts')
  <!-- Page level plugins -->
  <script src="{{ asset('vendor/chart.js/Chart.min.js') }}"></script>
  <!-- Page level custom scripts -->
  <script src="{{ asset('js/demo/chart-area-demo.js') }}"></script>
  <script src="{{ asset('js/demo/chart-pie-demo.js') }}"></script>
  <script src="{{ asset('js/demo/datatables-demo.js') }}"></script>
@endsection

</x-admin-master>