<x-admin-master>

@section('admin-master')

@if(auth()->user()->userHasRole('admin'))

<h1 class="h3 mb-0 text-gray-800">Dashboard</h1>  

@endif




@endsection






</x-admin-master>