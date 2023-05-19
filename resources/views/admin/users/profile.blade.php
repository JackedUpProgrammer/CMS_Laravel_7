<x-admin-master>

@section('content')
<h1 class="h3 mb-0 text-gray-800">Profile for : {{ auth()->user()->name }}</h1>
@endsection


@section('form')
<div class="row"></div>
    <div class="col-sm-6">
        <form method="POST" action="" enctype="multipart/form-data">
            @csrf


            <div class="ml-3 mb-4">
                <img class="img-profile rounded-circle" height="60px" width="60px" src="https://source.unsplash.com/QAB-WJcbgJk/60x60">
            </div>

            <div class="form-group">
                    <input type="file" name="" id="">
            </div>

            <div class="form-group">
                <label for="username">Username</label>
                <input type="text" name="username" class="form-control" id="username" aria-describedby="" placeholder="username:" value="{{ auth()->user()->username }}">
            </div>

            <div class="form-group">
                    <label for="name">Name</label>
                    <input type="text" name="name" class="form-control" id="name" aria-describedby="" placeholder="name:" value="{{ auth()->user()->name }}">
            </div>
        
            <div class="form-group">
                <label for="email">Email</label>
                <input type="email" name="email" class="form-control" id="email" aria-describedby="" placeholder="email:" value="{{ auth()->user()->email }}">
            </div>

            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" name="password" class="form-control" id="password" aria-describedby="" placeholder="password:">
            </div>

            <div class="form-group">
                <label for="password-confirmation">Confirm Password</label>
                <input type="password" name="password-confirmation" class="form-control" id="password-confirmation" aria-describedby="" placeholder="confirm password:">
            </div>
            
           

            <button type="submit" class="btn btn-primary">Submit</button>
        
        </form>
    </div>
@endsection


</x-admin-master>