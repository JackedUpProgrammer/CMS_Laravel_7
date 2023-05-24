<x-admin-master>

@section('admin-master')

@if(auth()->user()->userHasRole('admin'))
<h1 class="h3 mb-0 text-gray-800">Dashboard</h1>  
@endif
@endsection


@section('form')
@if(auth()->user()->userHasRole('admin'))

  
<script src="{{ asset('https://cdn.jsdelivr.net/npm/chart.js') }}"></script>

<div class="row">
    <div class="col-sm-4">
        <canvas id="myChart"></canvas>
    </div>
    <div class="col-sm-4">
        <canvas id="myChart2"></canvas>
    </div>
</div>

<script>
    const ctx = document.getElementById('myChart');
    ctx.style.width = '400px'; // Adjust the width as desired
    ctx.style.height = '300px'; // Adjust the height as desired

    new Chart(ctx, {
        type: 'pie',
        data: {
            labels: ['Posts', 'Users'],
            datasets: [{
                label: 'Counts',
                data: [{{ $posts->count() }}, {{ $users->count() }}],
                borderWidth: 5
            }]
        },
        options: {
            responsive: false, // Disable responsive resizing
            scales: {
                y: {
                    beginAtZero: true
                }
            }
        }
    });

    const ctx2 = document.getElementById('myChart2');
    ctx2.style.width = '400px'; // Adjust the width as desired
    ctx2.style.height = '300px'; // Adjust the height as desired

    new Chart(ctx2, {
        type: 'bar',
        data: {
            labels: ['Posts', 'Users'],
            datasets: [{
                label: 'Counts',
                data: [{{ $posts->count() }}, {{ $users->count() }}],
                borderWidth: 5
            }]
        },
        options: {
            responsive: false, // Disable responsive resizing
            scales: {
                y: {
                    beginAtZero: true
                }
            }
        }
    });
</script>

    
 

@endif
@endsection

@section('scripts')
<script src="{{ asset('https://cdnjs.cloudflare.com/ajax/libs/Chart.js/4.3.0/chart.min.js') }}" integrity="sha512-mlz/Fs1VtBou2TrUkGzX4VoGvybkD9nkeXWJm3rle0DPHssYYx4j+8kIS15T78ttGfmOjH0lLaBXGcShaVkdkg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
@endsection


</x-admin-master>