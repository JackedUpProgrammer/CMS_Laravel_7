<x-admin-master>

    @section('content')
        <h1 class="h2 mb-0 text-gray-800">Edit Permission {{ $permission->name }}</h1>

    @endsection
        




    @section('form')


<div class="row">
<div class="col-lg-2">
            <div class="">
                <form method="POST" action="{{ route('permission.update', $permission->id) }}">
                @csrf
                @method('PUT')

                <div class="form-group">
                        <label class="h4 mb-0 text-gray-800" for="name">Name</label>
                        <input type="text" name="name" class="form-control" id="name" aria-describedby="" placeholder="name:" value="{{ $permission->name }}">
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



    @endsection
        
        
        
        
    </x-admin-master>