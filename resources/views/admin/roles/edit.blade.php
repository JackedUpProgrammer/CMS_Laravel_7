<x-admin-master>

    @section('content')
        <h1 class="h2 mb-0 text-gray-800">Edit Role {{ $role->name }}'s Permissions</h1>

    @endsection
        




    @section('form')


<div class="row">
<div class="col-lg-2">
            <div class="">
                <form method="POST" action="{{ route('role.update', $role->id) }}">
                @csrf
                @method('PUT')

                <div class="form-group">
                        <label class="h4 mb-0 text-gray-800" for="name">Name</label>
                        <input type="text" name="name" class="form-control" id="name" aria-describedby="" placeholder="name:" value="{{ $role->name }}">
                    @error('name')
                        <div class="alert-danger">{{ $message }}</div>
                        @enderror 
                </div>
        
            
                <button type="submit" class="btn btn-primary">Submit</button>
            
                </form>

            </div>
            <br>
            <br>
            <br>

            
</div>
</div>




<div class="row">
 <div class="col-lg-4">
            <!-- DataTales Example -->
        @if($permissions->isNotEmpty())
            <div class="card shadow mb-4">
              <div class="card-header py-3">
                <h6 class="m-0 font-weight-bold text-primary">Permissions</h6>
              </div>
              <div class="card-body">
                <div class="table-responsive">
                  <table class="table table-responsive table table-bordered" id="ROLESTable" width="100%" cellspacing="0">
                    <thead>
                      <tr>
                          <th>Options</th>
                        <th>id</th>
                        <th>Name</th>
                        <th>Slug</th>
                        <th>Attach</th>
                        <th>Detach</th>
                        
                    
                      
                      </tr>
                    </thead>
                    <tbody>
                    @foreach ($permissions as $permission)
                      <tr>
                        <td><input type="checkbox" name="" id="" 
                              @foreach ($role->permissions as $role_permission)
                                  @if ($role_permission ->slug==$permission->slug)
                                      checked
                                  @endif
                              @endforeach 
                          ></td>
                        <td>{{ $permission->id }}</td>
                        <td>{{ $permission->name }}</td>
                        <td>{{ $permission->slug }}</td>

                          <form method="POST" action="{{ route('role.permission.attach', $role) }}">
                              @csrf
                              @method('PUT')
                              <input type="hidden" name="permission" value="{{ $permission->id }}">
                              <td>
                                  <button class="btn btn-primary"
                                  {{-- to make sure we can get double entry error --}}
                                  @if($role->permissions->contains($permission))
                                      disabled
                              @endif>Attach</button>
                          </td>
                          </form>
                      

                          <form method="POST" action="{{ route('role.permission.detach', $role) }}">
                              @csrf
                              @method('PUT')
                              <input type="hidden" name="permission" value="{{ $permission->id }}">
                              <td><button class="btn btn-danger">Detach</button></td>
                          </form>
                      


                        {{-- <td> 
                            <form method="POST" action="{{ route('user.destroy', $user->id) }}">
                                @csrf
                                @method('DELETE')
                                <button type="submit" class="btn btn-danger">Delete</button>
                              </form> 
                        </td> --}}

                        {{-- <td>  --}}
                          {{-- @can('view', $post)
                          <form method="POST" action="{{ route('post.edit', $post->id) }}">
                            @csrf
                            @method('GET')
                            <button type="submit" class="btn btn-primary">Edit</button>
                          </form> 
                          @endcan --}}
                          {{-- </td> --}}
                        
                      </tr>
                    @endforeach
                  </tbody>
                  </table>
                </div>
              </div>
              @endif
          </div>
        
  </div>        
</div>







    @endsection
        
        
        
        
    </x-admin-master>