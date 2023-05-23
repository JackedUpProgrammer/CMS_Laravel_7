<x-admin-master>

@section('content')
    <h1 class="h3 mb-0 text-gray-800">ROLES</h1>


    @if (session()->has('deleted_role'))
    <div class="alert alert-danger">
        {{ session('deleted_role') }}
    </div>
    @endif

    @if (session()->has('updated_role'))
    <div class="alert alert-success">
        {{ session('updated_role') }}
    </div>
    @endif


@endsection
    

@section('form')
<div class="row">
  <div class="col-sm-3">


          <form action="{{ route('roles.store') }}" method="post">
              @csrf
              <div class="form-group">
                      <label for="name"  class="h3 mb-0 text-gray-800">Name</label>
                      <input type="text" class="form-control" name="name" id="">
                      <div>
                        @error('name')
                                <span><strong>{{ $message }}</strong></span>
                        @enderror
                </div>
              
              </div>
              <button class="btn btn-info btn-block" type="submit">Create</button>
          </form>

    </div>

  <div class="col-sm-1">
  {{-- just for a gap   --}}
  </div> 


  <div class="col-sm-8">
		  <div class="card shadow mb-5 col-sm-9">
            <div class="card-header py-3">
              <h6 class="m-0 font-weight-bold text-primary">Roles</h6>
            </div>
            <div class="card-body">
              <div class="table-responsive">
                <table class="table centre table table-bordered" id="USERSTable" width="100%"  cellspacing="0">
                  <thead>
                    <tr>
                      <th>Id</th>
                      <th>Name</th>
                      <th>Slug</th>
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
                   

                      <td> 
                      <form method="POST" action="{{ route('role.destroy', $role->id) }}">
                        @csrf
                        @method('DELETE')
                        <button type="submit" class="btn btn-danger">Delete</button>
                      </form> 
                      </td>

                      <td>
                        <form method="POST" action="{{ route('role.edit', $role->id) }}">
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
        </div>

</div>
@endsection
    
    
    
    
</x-admin-master>