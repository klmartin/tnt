<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <title>Tanzania Geotourism</title>
  <meta content="" name="description">
  <meta content="" name="keywords">
  <!-- Favicons -->
  <link href="{{ asset('admin/assets/img/favicon.png') }}" rel="icon">
  <link href="{{ asset('admin/assets/img/apple-touch-icon.png') }}" rel="apple-touch-icon">
  <!-- Google Fonts -->
  <link href="https://fonts.gstatic.com" rel="preconnect">
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">
  <!-- Vendor CSS Files -->
  <link href="{{ asset('admin/assets/vendor/bootstrap/css/bootstrap.min.css') }}" rel="stylesheet">
  <link href="{{ asset('admin/assets/vendor/bootstrap-icons/bootstrap-icons.css') }}" rel="stylesheet">
  <link href="https://cdnjs.cloudflare.com/ajax/libs/dropzone/5.5.1/min/dropzone.min.css" rel="stylesheet" />
  <!-- Template Main CSS File -->
  <link href="{{ asset('admin/assets/css/style.css') }}" rel="stylesheet">
</head>

<body style="background-color: #FFFFFF;">
  <!-- ======= Header ======= -->
  <header id="header" class="header fixed-top d-flex align-items-center">

    <div class="d-flex align-items-center justify-content-between">
      <a href="index.html" class="logo d-flex align-items-center">
        <img src="{{ asset('admin/assets/img/logo.png') }}" alt="">
        <span class="d-none d-lg-block">GeotourismTZ</span>
      </a>
      <i class="bi bi-list toggle-sidebar-btn"></i>
    </div><!-- End Logo -->
    <nav class="header-nav ms-auto">
      <ul class="d-flex align-items-center">

        <li class="nav-item dropdown">
          <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow notifications">
          </ul><!-- End Notification Dropdown Items -->

        </li><!-- End Notification Nav -->

        <li class="nav-item dropdown">
        </li><!-- End Messages Nav -->

        <li class="nav-item dropdown pe-3">

          <a class="nav-link nav-profile d-flex align-items-center pe-0" href="#" data-bs-toggle="dropdown">
            <img src="{{ asset('admin/assets/img/profile-img.jpg') }}" alt="Profile" class="rounded-circle">
            <span></span>
          </a><!-- End Profile Iamge Icon -->

          <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow profile">
            <li class="dropdown-header">
              <h6>{{ Auth::user()->name }}</h6>
            
            </li>
            <li>
              <hr class="dropdown-divider">
            </li>

            <li>
              <a class="dropdown-item d-flex align-items-center" href="#">
                <i class="bi bi-person"></i>
                <span>My Profile</span>
              </a>
            </li>
            <li>
              <hr class="dropdown-divider">
            </li>

            <li>
              <a class="dropdown-item d-flex align-items-center" href="#">
                <i class="bi bi-gear"></i>
                <span>Account Settings</span>
              </a>
            </li>
            <li>
              <hr class="dropdown-divider">
            </li>


            <li>
              <hr class="dropdown-divider">
            </li>

            <li>
              <a class="dropdown-item d-flex align-items-center" href="#" onclick="event.preventDefault(); document.getElementById('logoutform').submit();">
                <i class="bi bi-box-arrow-right"></i>
                <span>Sign Out</span>
              </a>
            </li>


          </ul><!-- End Profile Dropdown Items -->
        </li><!-- End Profile Nav -->
        <form id="logoutform" action="{{ route('logout') }}" method="POST" style="display: none;">
          {{ csrf_field() }}
        </form>
      </ul>
    </nav><!-- End Icons Navigation -->

  </header><!-- End Header -->



  <main id="main1" class="main">
    <div class="pagetitle">
      <h1>Edit Attraction</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="javascript:void()">Attraction</a></li>
          <li class="breadcrumb-item active">Edit</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

    <div id="address-map-container" class="mb-2" style="width:100%;height:400px;">
      <div style="width: 100%; height: 100%" id="address-map"></div>
    </div>


    <section class="section">
      <div class="row">

        <div class="col-lg-6">
          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Preview Images</h5>

              <!-- Slides with controls -->
              <div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
                <div class="carousel-inner">

                  <!-- <div class="carousel-item active">
                    <img src="{{ asset('admin/assets/img/pexels-lan-yao-324969-20847187.jpg') }}" class="d-block w-100" alt="...">
                  </div> -->

                  @if($shop->id == 19)
                  <img src="{{ asset('admin/assets/img/sanje.jpg') }}" class="d-block w-100" alt="...">
                  @elseif($shop->id == 20)
                  <img src="{{ asset('dash/assets/img/hero-img5.jpeg') }}" class="d-block w-100" alt="...">
                  @elseif($shop->id == 21)
                  <img src="{{ asset('admin/assets/img/chemka1.jpg') }} class="d-block w-100" alt="...">

                  @elseif($shop->id == 22)
                  <img src="{{ asset('admin/assets/img/mboni3.jpg') }}" class="d-block w-100" alt="...">

                  @elseif($shop->id == 23)
                  <img src="{{ asset('admin/assets/img/odonyo.jpg') }}" class="d-block w-100" alt="...">
 
                  @elseif($shop->id == 16)
                  <img src="{{ asset('admin/assets/img/pexels-kelly-1179532-9229412.jpg') }}" class="d-block w-100" alt="...">


 
                  @endif

                  <!-- <div class="carousel-item active">
                    <img src="{{ asset('admin/assets/img/sanje2.jpg') }}" class="d-block w-100" alt="...">
                  </div> -->

                  

                  <!-- <div class="carousel-item active">
                    <img src="{{ asset('admin/assets/img/hero-img5.jpeg') }}" class="d-block w-100" alt="...">
                  </div>
                   -->

                  <!-- <div class="carousel-item">
                    <img src="{{ asset('admin/assets/img/pexels-nirav-shah-6927042-15904775.jpg') }}" class="d-block w-100" alt="...">
                  </div> -->

                  <!-- <div class="carousel-item">
                    <img src="{{ asset('admin/assets/img/pexels-sergey-pesterev-69811391-8427984.jpg') }}" class="d-block w-100" alt="...">
                  </div> -->

                  <!-- <div class="carousel-item">
                    <img src="{{ asset('admin/assets/img/sand.jpg') }}" class="d-block w-100" alt="...">
                  </div> -->

                  

                  <!-- <div class="carousel-item">
                    <img src="{{ asset('admin/assets/img/sand2.jpg') }}" class="d-block w-100" alt="...">
                  </div> -->

                 
                </div>

                <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
                  <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                  <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
                  <span class="carousel-control-next-icon" aria-hidden="true"></span>
                  <span class="visually-hidden">Next</span>
                </button>

              </div><!-- End Slides with controls -->

            </div>
          </div>



        </div>

        <div class="col-lg-6">
          <div class="card">
            <div class="card-body">
              <a href="{{ url('dashboard') }}"><h5 class="card-title">Home</h5></a>

              
                  <div class="form-group">
                     
                      <table class="table  table">
                          <tbody>
                              <tr>
                                  <th>
                                      {{ trans('cruds.shop.fields.id') }}
                                  </th>
                                  <td>
                                      ATTR{{ $shop->id }}2024
                                  </td>
                              </tr>
                              <tr>
                                  <th>
                                      {{ trans('cruds.shop.fields.name') }}
                                  </th>
                                  <td>
                                      {{ $shop->name }}
                                  </td>
                              </tr>
                             
                              <tr>
                                  <th>
                                      {{ trans('cruds.shop.fields.description') }}
                                  </th>
                                  <td>
                                      {{ $shop->description }}
                                  </td>
                              </tr>
                             
                              <tr>
                                  <th>
                                      {{ trans('cruds.shop.fields.address') }}
                                  </th>
                                  <td>
                                      {{ $shop->address }}
                                  </td>
                              </tr>
                              <!-- <tr>
                                  <th>
                                      {{ trans('cruds.shop.fields.active') }}
                                  </th>
                                  <td>
                                      <input type="checkbox" disabled="disabled" {{ $shop->active ? 'checked' : '' }}>
                                  </td>
                              </tr> -->

                              
                            
                          </tbody>
                      </table>

                      
                  </div>
                  <div class="col-md-12">
                          <div class="d-grid gap-2 mt-3">
                            <button class="btn btn-primary" type="button" data-bs-toggle="modal" data-bs-target="#verticalycentered">Book now</button>
                        </div>
                      </div>
            </div>
          </div>
        </div>
        

      </div>
    </section>

    


    <!-- Large Modal -->
    

              <div class="modal fade" id="verticalycentered" tabindex="-1">
                <div class="modal-dialog modal-dialog-centered">
                  <div class="modal-content">
                    <div class="modal-header">
                      <h5 class="modal-title">Complete payments to Book for a ticket</h5>
                      <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">


                        <div class="card">
                          <div class="card-body profile-card pt-4 d-flex flex-column align-items-center">



                        <!-- <h2 class="text-warning" >102,000 Tsh</h2> -->
                        <h3>{{ $shop->name}} </h3>
                        <div class="social-links mt-2">
                          <a href="#" class="twitter"><i class="bi bi-twitter"></i></a>
                          
                        </div>
                      </div>
                    </div>


                    <div class="card">
                        <div class="card-body">
                          <h5 class="card-title">Fill booking details</h5>

                          <!-- Floating Labels Form -->
                          <form class="row g-3">
                            <div class="col-md-12">
                              <div class="form-floating">
                                <input type="text" class="form-control" id="floatingName" placeholder="Your Name">
                                <label for="floatingName">Your Name</label>
                              </div>
                            </div>

                            <div class="col-md-12">
                              <div class="form-floating">
                                <input type="date" class="form-control" id="floatingEmail" placeholder="Your Email">
                                <label for="floatingEmail">Depature Day</label>
                              </div>
                            </div>
                            <div class="col-md-6">
                              <div class="form-floating">
                                <input type="email" class="form-control" id="floatingEmail" placeholder="Your Email">
                                <label for="floatingEmail">Your Email</label>
                              </div>
                            </div>


                            <div class="col-md-6">
                              <div class="form-floating">
                                <input type="number" class="form-control" id="floatingPassword" placeholder="Password">
                                <label for="floatingPassword">Phone Number</label>
                              </div>
                            </div>
                            <div class="col-12">
                              <div class="form-floating">
                                <textarea class="form-control" placeholder="Address" id="floatingTextarea" style="height: 100px;"></textarea>
                                <label for="floatingTextarea">Address</label>
                              </div>
                            </div>
                          
                        
                            <div class="text-center">
                              <a href="{{ url('cong') }}" class="btn btn-primary">Book Now</a>
              
                            </div>
                          </form><!-- End floating Labels Form -->

                        </div>
                      </div>


                    </div>
                    
                  </div>
                </div>
              </div><!-- End Large Modal-->


  </main><!-- End #main -->
  <!-- Vendor JS Files -->
  <script src="{{ asset('admin/assets/vendor/bootstrap/js/bootstrap.bundle.min.js') }}"></script>
  <!-- Template Main JS File -->
  <script src="{{ asset('admin/assets/js/main.js') }}"></script>
  <!-- Google Maps API -->
  <script src="https://maps.googleapis.com/maps/api/js?key={{ env('GOOGLE_MAPS_API_KEY') }}&libraries=places&callback=initMap" async defer></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/dropzone/5.5.1/min/dropzone.min.js"></script>

  <script>
    var uploadedPhotosMap = {};

    Dropzone.options.photosDropzone = {
        url: '{{ route('admin.shops.storeMedia') }}',
        maxFilesize: 2, // MB
        acceptedFiles: '.jpeg,.jpg,.png,.gif',
        addRemoveLinks: true,
        headers: {
            'X-CSRF-TOKEN': "{{ csrf_token() }}"
        },
        params: {
            size: 2,
            width: 4096,
            height: 4096
        },
        success: function(file, response) {
            $('form').append('<input type="hidden" name="photos[]" value="' + response.name + '">');
            uploadedPhotosMap[file.name] = response.name;
        },
        removedfile: function(file) {
            file.previewElement.remove();
            var name = '';
            if (typeof file.file_name !== 'undefined') {
                name = file.file_name;
            } else {
                name = uploadedPhotosMap[file.name];
            }
            $('form').find('input[name="photos[]"][value="' + name + '"]').remove();
        },
        init: function() {
            @if(isset($shop) && $shop->photos)
            var files = {!! json_encode($shop->photos) !!};
            for (var i in files) {
                var file = files[i];
                this.options.addedfile.call(this, file);
                this.options.thumbnail.call(this, file, file.url);
                file.previewElement.classList.add('dz-complete');
                $('form').append('<input type="hidden" name="photos[]" value="' + file.file_name + '">');
            }
            @endif
        },
        error: function(file, response) {
            var message = '';
            if ($.type(response) === 'string') {
                message = response; // Dropzone sends its own error messages in string
            } else {
                message = response.errors.file;
            }
            file.previewElement.classList.add('dz-error');
            var _ref = file.previewElement.querySelectorAll('[data-dz-errormessage]');
            var _results = [];
            for (var _i = 0, _len = _ref.length; _i < _len; _i++) {
                var node = _ref[_i];
                _results.push(node.textContent = message);
            }
            return _results;
        }
    };

    // Initialize Google Maps
    function initMap() {
        var latitude = parseFloat('{{ old('latitude', $shop->latitude) ?? '0' }}');
        var longitude = parseFloat('{{ old('longitude', $shop->longitude) ?? '0' }}');

        var map = new google.maps.Map(document.getElementById('address-map'), {
            center: { lat: latitude, lng: longitude },
            zoom: 15
        });

        var marker = new google.maps.Marker({
            position: { lat: latitude, lng: longitude },
            map: map,
            draggable: true // Make marker draggable
        });

        // Update marker position and input fields when marker is dragged
        google.maps.event.addListener(marker, 'dragend', function(event) {
            document.getElementById('address-latitude').value = event.latLng.lat();
            document.getElementById('address-longitude').value = event.latLng.lng();
        });

        // Initialize autocomplete for address input
        var input = document.getElementById('address');
        var autocomplete = new google.maps.places.Autocomplete(input);
        autocomplete.bindTo('bounds', map);

        // Set initial marker position based on autocomplete selection
        autocomplete.addListener('place_changed', function() {
            var place = autocomplete.getPlace();
            if (!place.geometry) {
                return;
            }
            if (place.geometry.viewport) {
                map.fitBounds(place.geometry.viewport);
            } else {
                map.setCenter(place.geometry.location);
                map.setZoom(17); // Zoom in closer for better accuracy
            }
            marker.setPosition(place.geometry.location);
            document.getElementById('address-latitude').value = place.geometry.location.lat();
            document.getElementById('address-longitude').value = place.geometry.location.lng();
        });
    }

    google.maps.event.addDomListener(window, 'load', initMap);
</script>

</body>

</html>