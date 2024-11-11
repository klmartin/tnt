@include('includes.header')

<body>
@php
      $roleId = Auth::user()->getRoleId();
@endphp

 @include('includes.head')

@include('includes.sidebar')

<main id="main" class="main">

<div class="pagetitle">
  <h1> Total Bookings</h1>

</div><!-- End Page Title -->

<section class="section">
  <div class="row">
    <div class="col-lg-12">

      <div class="card">
        <div class="card-body">
          <h5 class="card-title">Bookings</h5>

       <!-- Table with stripped rows -->
<table class="table datatable">
    <thead>
      <tr>
        <th><b>Ge</b>osite name</th>
        <th>Contact</th>
        @if($roleId == 1)
        <th>Customer</th>
        @endif
        <th data-type="date" data-format="YYYY/DD/MM">Departure Date</th>
        <th data-type="date" data-format="YYYY/DD/MM">Arrival Date</th>
        <th>Action</th>
      </tr>
    </thead>
    <tbody>
      @foreach($booking as $bookingItem)
        <tr>
          <td>{{ $bookingItem->shop->name ?? 'N/A' }}</td> <!-- Geosite Name -->
          <td>{{ $bookingItem->user_phone ?? 'N/A' }}</td> <!-- Contact Number -->
          @if($roleId == 1)
          <td>{{ $bookingItem->user->name ?? 'N/A' }}</td> <!-- Customer Name -->
          @endif
          <td>{{ $bookingItem->travel_date ?? 'N/A' }}</td> <!-- Departure Date -->
          <td>{{ $bookingItem->return_date ?? 'N/A' }}</td>
          <td>
            <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#bookingModal">
            View Booking
          </button>
          </td>

        </tr>
      @endforeach
    </tbody>
  </table>
  <!-- End Table with stripped rows -->

        </div>
      </div>

    </div>
  </div>
</section>

</main><!-- End #main -->




 @include('includes.footer')
