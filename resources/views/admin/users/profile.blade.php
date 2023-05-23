<x-admin-master>

@section('content')
<h1 class="h3 mb-0 text-gray-800">Profile for : {{ auth()->user()->name }}</h1>
@endsection


@section('form')

<div class="row"></div>
    <div class="col-sm-6">
     
      {{-- @can('viewAdmin', $user)
      @can('view', $user) --}}
      @can('viewAdminOrUser', $user)
        <form method="POST" action="{{ route('user.profile.update', $user->id) }}" enctype="multipart/form-data">
            @csrf
            @method('PUT')

            <div class="ml-3 mb-4">
                <img class="img-profile rounded-circle" height="60px" width="60px" src="{{ $user->avatar}}">
            </div>

            <div class="form-group">
                    <input type="file" name="avatar" id="avatar">
            </div>

            <div class="form-group">
                <label for="username">Username</label>
                <input type="text" name="username" class="form-control" id="username" aria-describedby="" placeholder="username:" value="{{$user->username }}">
       
            </div>

            <div class="form-group">
                    <label for="name">Name</label>
                    <input type="text" name="name" class="form-control" id="name" aria-describedby="" placeholder="name:" value="{{ $user->name }}">
                    @error('name')
                    <div class="alert-danger">{{ $message }}</div>
                    @enderror
                </div>
        
            <div class="form-group">
                <label for="email">Email</label>
                <input type="email" name="email" class="form-control" id="email" aria-describedby="" placeholder="email:" value="{{ $user->email }}">
                @error('email')
                <div class="alert-danger">{{ $message }}</div>
                @enderror
            </div>

            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" name="password" class="form-control" id="password" aria-describedby="" placeholder="password:">
                @error('password')
                <div class="alert-danger">{{ $message }}</div>
                @enderror
            </div>

            <div class="form-group">
                <label for="password-confirmation">Confirm Password</label>
                <input type="password" name="password-confirmation" class="form-control" id="password-confirmation" aria-describedby="" placeholder="confirm password:">
                @error('password-confirmation')
                <div class="alert-danger">{{ $message }}</div>
                @enderror
            </div>
            
           

            <button type="submit" class="btn btn-primary">Submit</button>
        
        </form>
        @endcan
        {{-- @endcan --}}
       
    </div>
</div>
@endsection


@section('form2')
<br>
<br>
@can('viewAdmin', $user)
<div class="row"></div>
    <div class="col-sm-12">
        <h1 class="h3 mb-0 text-gray-800">ROLES</h1>
        
  <!-- DataTales Example -->
  <div class="card shadow mb-4">
    <div class="card-header py-3">
      <h6 class="m-0 font-weight-bold text-primary">All Roles</h6>
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
          @foreach ($roles as $role)
            <tr>
              <td><input type="checkbox" name="" id="" 
                    @foreach ($user->roles as $user_role)
                        @if ($user_role ->slug==$role->slug)
                            checked
                        @endif
                    @endforeach
                ></td>
              <td>{{ $role->id }}</td>
              <td>{{ $role->name }}</td>
              <td>{{ $role->slug }}</td>

                <form method="POST" action="{{ route('user.role.attach', $user) }}">
                    @csrf
                    @method('PUT')
                    <input type="hidden" name="role" value="{{ $role->id }}">
                    <td><button class="btn btn-primary"
                        {{-- to make sure we can get double entry error --}}
                        @if($user->roles->contains($role))
                            disabled
                    @endif>Attach</button></td>
                </form>
             

                <form method="POST" action="{{ route('user.role.detach', $user) }}">
                    @csrf
                    @method('PUT')
                    <input type="hidden" name="role" value="{{ $role->id }}">
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
  </div>
  @endcan
 
 








    </div>
       
</div>
@endsection


</x-admin-master>