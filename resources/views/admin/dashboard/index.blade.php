@include('includes.header')

<body>
@php
      $roleId = Auth::user()->getRoleId();
@endphp

 @include('includes.head')

@include('includes.sidebar')

  <main id="main" class="main">

    <div class="pagetitle">
      <h1>Dashboard</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="index.html">Home</a></li>
          <li class="breadcrumb-item active">Dashboard</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->



    @if($roleId == 1)

    <section class="section dashboard">
      <div class="row">

        <!-- Left side columns -->
        <div class="col-lg-12">
          <div class="row">

            <!-- Sales Card -->
            <div class="col-xxl-6 col-md-6">
              <div class="card info-card sales-card">



                <div class="card-body">
                  <h5 class="card-title">Bookings <span>| Today</span></h5>

                  <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                      <i class="bi bi-cart"></i>
                    </div>
                    <div class="ps-3">
                      <h6>{{ $totalBookings }}</h6>


                    </div>
                  </div>
                </div>

              </div>
            </div><!-- End Sales Card -->


            <!-- Customers Card -->
            <div class="col-xxl-6 col-xl-12">

              <div class="card info-card customers-card">



                <div class="card-body">
                  <h5 class="card-title">Customers <span>| This Year</span></h5>

                  <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                      <i class="bi bi-people"></i>
                    </div>
                    <div class="ps-3">
                      <h6>{{ $customersTotal }}</h6>

                    </div>
                  </div>

                </div>
              </div>

            </div><!-- End Customers Card -->

            <!-- Reports -->
            <div class="col-12">
              <div class="card">

                <div class="filter">
                  <a class="icon" href="#" data-bs-toggle="dropdown"><i class="bi bi-three-dots"></i></a>
                  <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
                    <li class="dropdown-header text-start">
                      <h6>Filter</h6>
                    </li>

                    <li><a class="dropdown-item" href="#">Today</a></li>
                    <li><a class="dropdown-item" href="#">This Month</a></li>
                    <li><a class="dropdown-item" href="#">This Year</a></li>
                  </ul>
                </div>

                <div class="card-body">
                  <h5 class="card-title">Reports <span>/Today</span></h5>

                  <!-- Line Chart -->
                  <div id="reportsChart"></div>

                  <script>
                    document.addEventListener("DOMContentLoaded", () => {
                      new ApexCharts(document.querySelector("#reportsChart"), {
                        series: [ {
                          name: 'Customers',
                          data: [4, 2, 8, 6, 9, 3, 1]
                        }],
                        chart: {
                          height: 350,
                          type: 'area',
                          toolbar: {
                            show: false
                          },
                        },
                        markers: {
                          size: 4
                        },
                        colors: ['#4154f1', '#2eca6a', '#ff771d'],
                        fill: {
                          type: "gradient",
                          gradient: {
                            shadeIntensity: 1,
                            opacityFrom: 0.3,
                            opacityTo: 0.4,
                            stops: [0, 90, 100]
                          }
                        },
                        dataLabels: {
                          enabled: false
                        },
                        stroke: {
                          curve: 'smooth',
                          width: 2
                        },
                        xaxis: {
                          type: 'datetime',
                          categories: ["2024-11-09", "2024-11-10", "2024-11-11", "2024-11-12", "2024-11-13", "2024-11-14", "2024-11-15"]
                        },
                        tooltip: {
                          x: {
                            format: 'dd/MM/yy HH:mm'
                          },
                        }
                      }).render();
                    });
                  </script>
                  <!-- End Line Chart -->

                </div>

              </div>
            </div><!-- End Reports -->





          </div>
        </div><!-- End Left side columns -->

        <!-- Right side columns -->

        <!-- End Right side columns -->

      </div>
    </section>
    @elseif($roleId == 2)

    <section class="section dashboard">
      <div class="row">

        <!-- Left side columns -->
        <div class="col-lg-12">
          <div class="row">

            <!-- Sales Card -->
            <div class="col-xxl-6 col-md-6">
              <div class="card info-card sales-card">



                <div class="card-body">
                  <h5 class="card-title">Geosites <span>Total</span></h5>

                  <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                      <i class="ri-archive-fill"></i>
                    </div>
                    <div class="ps-3">
                      <h6>{{ $shopsTotal }}</h6>

                    </div>
                  </div>
                </div>

              </div>
            </div><!-- End Sales Card -->

            <!-- Revenue Card -->
            <!-- <div class="col-xxl-4 col-md-6">
              <div class="card info-card revenue-card">



                <div class="card-body">
                  <h5 class="card-title">Transactions <span>| General</span></h5>

                  <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                      <i class="bi bi-currency-dollar"></i>
                    </div>
                    <div class="ps-3">
                      <h6>30,000 </h6>
                      <span class="text-success small pt-1 fw-bold">90%</span> <span class="text-muted small pt-2 ps-1">Keep going</span>

                    </div>
                  </div>
                </div>

              </div>
            </div> -->
            <!-- End Revenue Card -->

            <!-- Customers Card -->
            <div class="col-xxl-6 col-xl-12">

              <div class="card info-card customers-card">

                <div class="card-body">
                  <h5 class="card-title">Bookings <span>| This Year</span></h5>

                  <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                      <i class="ri-24-hours-fill"></i>
                    </div>
                    <div class="ps-3">
                      <h6>{{ $myBookings }}</h6>

                    </div>
                  </div>

                </div>
              </div>

            </div><!-- End Customers Card -->



            <!-- Google maps -->
            <div class="col-12">
              <div class="card recent-sales overflow-auto">

                <div class="filter">
                  <a class="icon" href="#" data-bs-toggle="dropdown"><i class="bi bi-three-dots"></i></a>
                  <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
                    <li class="dropdown-header text-start">
                      <h6>Filter</h6>
                    </li>

                  </ul>
                </div>

                <div class="card-body">
                <div class="card-body">
                  <a href=""><h5 class="card-title">Geotourism Attractions <span>| Click to book</span></h5></a>

                  <div id="map-canvas" style="width: 100%; height: 400px;"></div>

                </div>
                </div>

              </div>
            </div><!-- End maps -->



          </div>
        </div><!-- End Left side columns -->

        <!-- Right side columns -->
        <div class="col-lg-4">

          <!-- Recent Activity -->
          <div class="card">
            <div class="filter">
              <a class="icon" href="#" data-bs-toggle="dropdown"><i class="bi bi-three-dots"></i></a>
              <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
                <li class="dropdown-header text-start">
                  <h6>Filter</h6>
                </li>

                <li><a class="dropdown-item" href="#">Today</a></li>
                <li><a class="dropdown-item" href="#">This Month</a></li>
                <li><a class="dropdown-item" href="#">This Year</a></li>
              </ul>
            </div>

            <!-- <div class="card-body">
                  <h5 class="card-title">Recent Transactions <span>| This Year</span></h5>

                  <table class="table table-borderless datatable">
                    <thead>
                      <tr>
                        <th scope="col">#</th>
                        <th scope="col">Customer</th>
                        <th scope="col">Product</th>
                        <th scope="col">Price</th>
                        <th scope="col">Status</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <th scope="row"><a href="#">#2457</a></th>
                        <td>Brandon Jacob</td>
                        <td><a href="#" class="text-primary">At praesentium minu</a></td>
                        <td>$64</td>
                        <td><span class="badge bg-success">Approved</span></td>
                      </tr>
                      <tr>
                        <th scope="row"><a href="#">#2147</a></th>
                        <td>Bridie Kessler</td>
                        <td><a href="#" class="text-primary">Blanditiis dolor omnis similique</a></td>
                        <td>$47</td>
                        <td><span class="badge bg-warning">Pending</span></td>
                      </tr>
                      <tr>
                        <th scope="row"><a href="#">#2049</a></th>
                        <td>Ashleigh Langosh</td>
                        <td><a href="#" class="text-primary">At recusandae consectetur</a></td>
                        <td>$147</td>
                        <td><span class="badge bg-success">Approved</span></td>
                      </tr>
                      <tr>
                        <th scope="row"><a href="#">#2644</a></th>
                        <td>Angus Grady</td>
                        <td><a href="#" class="text-primar">Ut voluptatem id earum et</a></td>
                        <td>$67</td>
                        <td><span class="badge bg-danger">Rejected</span></td>
                      </tr>
                      <tr>
                        <th scope="row"><a href="#">#2644</a></th>
                        <td>Raheem Lehner</td>
                        <td><a href="#" class="text-primary">Sunt similique distinctio</a></td>
                        <td>$165</td>
                        <td><span class="badge bg-success">Approved</span></td>
                      </tr>
                    </tbody>
                  </table>

            </div> -->

          </div><!-- End Recent Activity -->





        </div><!-- End Right side columns -->

      </div>
    </section>

    @endif

  </main><!-- End #main -->

  <script type='text/javascript' src='https://maps.google.com/maps/api/js?language=en&key={{ env('GOOGLE_MAPS_API_KEY') }}&libraries=places&region=GB'></script>
<script defer>
  function initialize() {
    var mapOptions = {
      zoom: 8,
      minZoom: 6,
      maxZoom: 17,
      zoomControl: true,
      zoomControlOptions: {
        style: google.maps.ZoomControlStyle.DEFAULT
      },
      center: new google.maps.LatLng({{ $latitude }}, {{ $longitude }}),
      mapTypeId: google.maps.MapTypeId.SATELLITE,
      scrollwheel: false,
      panControl: false,
      mapTypeControl: true,
      mapTypeControlOptions: {
        style: google.maps.MapTypeControlStyle.DROPDOWN_MENU,
        position: google.maps.ControlPosition.TOP_RIGHT
      },
      scaleControl: false,
      overviewMapControl: false,
      rotateControl: false
    };

    var map = new google.maps.Map(document.getElementById('map-canvas'), mapOptions);
    var places = @json($mapShops);
    console.log(places)
    for (var i = 0; i < places.length; i++) {
      var place = places[i];
      if (place.latitude && place.longitude) {
        var marker = new google.maps.Marker({
          position: new google.maps.LatLng(place.latitude, place.longitude),
          map: map,
          title: place.name
        });

        attachInfoWindow(marker, place, map);
      }
    }
  }

  function attachInfoWindow(marker, place, map) {
    var infowindow = new google.maps.InfoWindow({
      content: generateContent(place)
    });

    marker.addListener('click', function () {
      infowindow.open(map, marker);
    });
  }

  function generateContent(place) {
    var defaultImageUrl = '/assets/images/sanje.jpg'; // Ensure this path is correct and accessible
    var thumbnailUrl = place.thumbnail || defaultImageUrl;
    if (thumbnailUrl.includes('localhost')) {
      thumbnailUrl = thumbnailUrl.replace('localhost', '127.0.0.1:8001');
    }

    var content = `
      <div class="gd-bubble">
        <div class="gd-bubble-inside">
          <div class="geodir-bubble_desc">
            <div class="geodir-bubble_image">
              <div class="geodir-post-slider">
                <div class="geodir-image-container geodir-image-sizes-medium_large">
                  <div class="geodir-image-wrapper" data-controlnav="1">
                    <ul class="geodir-post-image geodir-images clearfix">
                      <li>
                        <div class="geodir-post-title">
                          <h4 class="geodir-entry-title">
                            <a href="{{ route('attraction', '') }}/${place.id}" title="View: ${place.name}">${place.name}</a>
                          </h4>
                        </div>
                        <a href="{{ route('attraction', '') }}/${place.id}">
                          <img src="${thumbnailUrl}" alt="${place.name}" class="align size-medium_large" width="1400" height="930">
                        </a>
                      </li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="geodir-bubble-meta-side">
          <div class="geodir-output-location">
            <div class="geodir-output-location-mapbubble">
              <div class="geodir_post_meta geodir-field-post_title">
                <span class="geodir_post_meta_icon geodir-i-text">
                  <i class="fas fa-minus" aria-hidden="true"></i>
                  <span class="geodir_post_meta_title">Place Title: </span>
                </span>
                ${place.name}
              </div>
              <div class="geodir_post_meta geodir-field-address" itemscope="" itemtype="http://schema.org/PostalAddress">
                <span class="geodir_post_meta_icon geodir-i-address">
                  <i class="fas fa-map-marker-alt" aria-hidden="true"></i>
                  <span class="geodir_post_meta_title">Address: </span>
                </span>
                <span itemprop="streetAddress">${place.address}</span>
              </div>
            </div>
          </div>
        </div>
      </div>`;

    return content;
  }

  google.maps.event.addDomListener(window, 'load', initialize);
</script>


 @include('includes.footer')
