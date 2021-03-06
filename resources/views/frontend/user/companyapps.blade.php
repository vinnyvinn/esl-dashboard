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

#childdrop2.open .dropdown-content {
left:160%;
top:10px;
clear:both;
display:block !important}

    #childdrop4.open .dropdown-content {
        left:160%;
        top:10px;
        clear:both;
        display:block !important}

#childdrop3.open .dropdown-content {
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

                             <div class="col-sm-3 margins dropdown" style="margin-bottom: 20px;">
                                <a href="#" class="apps_on dropdown-toggle" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <img src="{{$companyapps->app_icon}}" onclick="myFunction()" class="dropbtn">
                                 <div id="myDropdown" class="dropdown-content" aria-labelledby="dropdownMenu1">
                                            
                                            <a href="http://esl-agency.pro-kazi.com">Agency</a>
                                          
                                          <div id="childdrop3" class="dropdown">
                                            <a href="#" class="dropdown-toggle" id="dropdownMenu2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Forwarding <i class="fa fa-angle-down"></i>
                                            <div id="dropdownMenu4" class="dropdown-content" aria-labelledby="dropdownMenu4">
                                            <a href="https://esl-forwarding.pro-kazi.com">Esl</a>
                                            <a href="https://freightwell-forwarding.pro-kazi.com">Freightwell</a>

                                            </div>
                                            </div>

                                            <div id="childdrop" class="dropdown">
                                            <a href="#" class="dropdown-toggle" id="dropdownMenu2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Logistics <i class="fa fa-angle-down"></i>
                                            <div id="dropdownMenu2" class="dropdown-content" aria-labelledby="dropdownMenu2">
                                            <a href="https://esl-logistics.pro-kazi.com">Esl</a>
                                            <a href="https://sovereign-logistics.pro-kazi.com">Sovereign</a>

                                            </div>
                                            </div>

                                              <div id="childdrop4" class="dropdown">
                                            <a href="#" class="dropdown-toggle" id="dropdownMenu5" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Transport <i class="fa fa-angle-down"></i>
                                            <div id="dropdownMenu2" class="dropdown-content" aria-labelledby="dropdownMenu5">
                                            <a href="https://esl-transport.pro-kazi.com">Esl</a>
                                            <a href="https://sovereign-transport.pro-kazi.com">Sovereign</a>
                                            <a href="https://freightwell-transport.pro-kazi.com">Freightwell</a>

                                            </div>
                                            </div>

                                            <div id="childdrop2" class="dropdown">
                                            <a href="#" class="dropdown-toggle" id="dropdownMenu2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Technical <i class="fa fa-angle-down"></i>
                                            <div id="dropdownMenu3" class="dropdown-content" aria-labelledby="dropdownMenu3">
                                            <a href="https://esl.pro-kazi.com/preventive">Esl</a>
                                            <a href="https://sovereign.pro-kazi.com/preventive">Sovereign</a>
                                            <a href="https://freightwell.pro-kazi.com/preventive">Freightwell</a>

                                            </div>
                                            </div>

                                            
                            </div>

                        </a>

                           </div>

                        @elseif($companyapps->application_id == 7)

                             <div class="col-sm-3 margins dropdown" style="margin-bottom: 20px;">

                        <div class="dropdown">
  <a href="#" class="dropdown-toggle" id="imprest" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    <img src="img/frontend/{{$companyapps->app_icon}}">
     </a>
  <ul class="dropdown-menu" aria-labelledby="imprest">
    <li><a href="http://esl-imprest.pro-kazi.com">Esl Imprest</a></li>
    <li><a href="http://freightwell-imprest.pro-kazi.com">Freightwell Imprest</a></li>
    <li><a href="http://sovereign-imprest.pro-kazi.com">Sovereign Imprest</a></li>

  </ul>
</div>

                           </div>
                           @elseif($companyapps->application_id == 6)
                          <div class="col-sm-3 margins" style="margin-bottom: 20px;
"><a href="#" class="apps_on"><img src="img/frontend/{{$companyapps->app_icon}}"  data-toggle="modal" data-target="#myModal"></a>
</div>
                        @else


                           <div class="col-sm-3 margins" style="
    margin-bottom: 20px;
"><a href="{{$companyapps->app_url}}" class="apps_on"><img src="img/frontend/{{$companyapps->app_icon}}"></a>

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

    <div class="container">
 
  <!-- Modal -->
  
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
        <form action="https://esl.pro-kazi.com/system_tickets/tickets_posted" method="POST" enctype="multipart/form-data">
      {{ csrf_field() }}
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Add Ticket</h4>
        </div>
        <div class="modal-body">
         <input type="hidden" name="ticket_type_id" value="system">
            <div class="form-group">
              <label for="subject">Subject</label>
              <input type="text" class="form-control" name="subject" id="subject" required>
            </div>
          
          <div class="form-group">
              <label for="location">Location</label>
              <select name="location" id="location" class="form-control" required>
                <option value="Nairobi">Nairobi</option>
                <option value="Mombasa">Mombasa</option>
                <option value="Kampala">Kampala</option>
              </select>

            </div>
            <div class="form-group">
              <label for="user">Reference User</label>
              <select name="user" class="form-control" required>
                @foreach($users as $user)
                <option value="{{$user->first_name.' '.$user->last_name}}">{{$user->first_name .' '.$user->last_name}}</option>

                @endforeach
              </select>

            </div>
            <input type="hidden" name="created_by" value="{{ Auth::user()->first_name .' '.Auth::user()->last_name }}">
            <input type="hidden" name="email" value="{{ Auth::user()->email }}">
            <div class="form-group">
              <label for="description">Description</label>
              <textarea name="description" id="description" cols="10" rows="5" class="form-control" required></textarea>
            
          </div>
          <div class="form-group">
            <label for="file">Upload File</label>
            <input type="file" name="image">
          </div>
        <button type="submit" class="btn btn-primary"><i class="fa fa-question"> Submit</i></button>
          <button type="button" class="btn btn-danger" data-dismiss="modal">Cancel</button>
        </div>
      </div>
      
    </div>
  </form>
  </div>
  
</div>
</section>
@endsection


