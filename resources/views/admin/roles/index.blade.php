<x-admin-master>

    @section('content')
    <h1 class="h3 mb-0 text-gray-800">ROLES</h1>
    @endsection
    
    
    @section('form')


<div class="row">

    <div class="col-sm-3">

        <form action="{{ route('roles.store') }}" method="post">
            @csrf
            <div class="form-group">
                    <label for="name">Name</label>
                    <input type="text" class="form-control" name="name" id="">
            </div>
            <button class="btn btn-info btn-block" type="submit">Create</button>
        </form>

    </div>

    <div class="col-sm-9">
         <!-- DataTales Example -->
		<div class="card shadow mb-4">
            <div class="card-header py-3">
              <h6 class="m-0 font-weight-bold text-primary">Roles</h6>
            </div>
            <div class="card-body">
              <div class="table-responsive">
                <table class="table table-responsive table table-bordered" id="USERSTable" width="100%" cellspacing="0">
                  <thead>
                    <tr>
                      <th>Id</th>
                      <th>Name</th>
                      <th>Slug</th>
                      <th>Created At</th>
                      <th>Updated At</th>
                      <th>Delete</th>
                      <th>Edit</th>
                     
                    </tr>
                  </thead>
                  <tbody>
                  @foreach ($roles as $role)
                    <tr>
                      
                      <td>{{ $role->id }}</td>
                      <td>{{ $role->name }}</td>
                      <td>{{ $role->slug }}</td>
                      <td>{{ $role->created_at }}</td>
                      <td>{{ $role->updated_at }}</td>

                      <td> 
                      {{-- <form method="POST" action="{{ route('post.destroy', $post->id) }}">
                        @csrf
                        @method('DELETE') --}}
                        <button type="submit" class="btn btn-danger">Delete</button>
                      {{-- </form>  --}}
                      </td>

                      <td>
                        {{-- <form method="POST" action="{{ route('post.edit', $post->id) }}">
                          @csrf
                          @method('GET') --}}
                          <button type="submit" class="btn btn-primary">Edit</button>
                        {{-- </form>  --}}

                        </td>
                      
                    </tr>
                  @endforeach
                </tbody>
                </table>
              </div>
            </div>
          </div>
    </div>

</div>


    @endsection
    
    
    
    
    </x-admin-master>