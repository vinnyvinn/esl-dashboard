@extends('frontend.layouts.app')

@section('assets')
 <style media="screen">
    
    /* Dropdown Button */
.dropbtn {
    background-color: transparent;
    color: white;
    padding: 8px;
    font-size: 0px;
    border: none;
    cursor: pointer;
}
/* Dropdown button on hover & focus */
.dropbtn:hover, .dropbtn:focus {
    background-color: #transparent;
}
/* The container <div> - needed to position the dropdown content */
.dropdown {
    position: relative;
    display: inline-block;
}
/* Dropdown Content (Hidden by Default) */
.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f1f1f1;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
    font-size: 14px !important;
}
/* Links inside the dropdown */
.dropdown-content a {
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
    font-size: 14px !important;
}
/* Change color of dropdown links on hover */
.dropdown-content a:hover {background-color: #ddd}
/* Show the dropdown menu (use JS to add this class to the .dropdown-content container when the user clicks on the dropdown button) */
.show {display:block;}
  </style>

@endsection

@section('content')

</style>
<section id="company-view">
	<div class="container">
		<div class="row">
		  <div class="logo">
                            <a href="">
                                <img src="/img/frontend/logo.png">
                            </a>
                        </div>
	</div>
	<div class="row">
       
	@if (count($master) > 0)
               @foreach ($master as $companyapps)
                        @if($companyapps->id == 4)

                        	 <div class="col-sm-3">
                        	 	<a href="#" class="apps_on">
                        	 	<img src="{{$companyapps->app_icon}}" onclick="myFunction()" class="dropbtn">
                        	 	 <div id="myDropdown" class="dropdown-content">
								            <a href="http://esl-transport.dnsalias.com">Transport</a>
								            <a href="http://esl-agency.dnsalias.com">Agency</a>
								            <a href="http://esl-forwarding.dnsalias.com">Forwarding</a>
								            <a href="http://esl-logistics.dnsalias.com">Logistics</a>
							</div>

                        </a>

				           </div>

                        @else

				           <div class="col-sm-3"><a href="{{$companyapps->app_url}}" class="apps_on"><img src="{{$companyapps->app_icon}}"></a>

				           </div>
				       @endif
		
		  @endforeach
     @endif
                    



                     
	</div>
	
</div>
	</div>
</section>
@endsection
