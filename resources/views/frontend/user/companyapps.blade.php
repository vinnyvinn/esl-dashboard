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
#childdrop.open .dropdown-content {
left:160%;
top:10px;
clear:both;
display:block !important}
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
                        @if($companyapps->application_id == 4)

                        	 <div class="col-sm-3 dropdown">
                        	 	<a href="#" class="apps_on dropdown-toggle" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        	 	<img src="{{$companyapps->app_icon}}" onclick="myFunction()" class="dropbtn">
                        	 	 <div id="myDropdown" class="dropdown-content" aria-labelledby="dropdownMenu1">
								            <a href="http://esl-transport.dnsalias.com">Transport</a>
								            <a href="http://esl-agency.dnsalias.com">Agency</a>
								            <a href="http://esl-forwarding.dnsalias.com">Forwarding</a>
<<<<<<< HEAD
                                            <div id="childdrop" class="dropdown">
								            <a href="#" class="dropdown-toggle" id="dropdownMenu2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Logistics <i class="fa fa-angle-down"></i>
                                            <div id="dropdownMenu2" class="dropdown-content" aria-labelledby="dropdownMenu2">
                                            <a href="https://esllogistics.pro-kazi.com">Esl</a>
                                            <a href="https://sovereignlogistics.pro-kazi.com">Sovereign</a>
                                            
                                            </div>
                                            </div>
=======
								            <a href="http://esl-logistics.dnsalias.com">Logistics</a>
                                            <a href="https://esl.pro-kazi.com/preventive">Technical</a>
>>>>>>> 424c11e8fb3628bd5eecd56a7ed8bfab0792953c
							</div>

                        </a>

				           </div>

                        @else

				           <div class="col-sm-3"><a href="{{$companyapps->app_url}}" class="apps_on"><img src="img/frontend/{{$companyapps->app_icon}}"></a>

				           </div>
				       @endif
		
		  @endforeach

          @else

           <div class="col-md-4 col-md-offset-4 text-center">

            <div class="panel panel-default">
  <div class="panel-body">
    <div class="alert alert-warning" role="alert"><strong>Sorry no Applications have been assigned to this Company<br>Check again soon</strong></div>
  </div>
</div>

             
          </div>
     @endif
                    



                     
	</div>
	
</div>
	</div>
</section>
@endsection

