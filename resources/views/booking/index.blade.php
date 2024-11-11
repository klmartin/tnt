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
                <th>
                  <b>Ge</b>osite name
                </th>
                <th>Contact</th>
                @if($roleId == 1)
                <th>Customer</th>
                @endif
                <th>Location</th>
             
                <th data-type="date" data-format="YYYY/DD/MM">Depature Date</th>
                
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>Sanje Waterfalls: A Hidden Gem in Udzungwa Mountains National Park</td>
                <td>+255 653 495 586</td>

                @if($roleId == 1)
                <td>Philbert Malulu</td>
                @endif

                <td>Morogoro, Udzungwa</td>
               
                <td>2024/07/11</td>
            
              </tr>
             
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