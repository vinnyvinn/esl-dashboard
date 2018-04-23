<div class="box-body">
      <div class="form-group">
        <!-- Create Your Field Label Here -->
        <!-- Look Below Example for reference -->
       {{ Form::label('name', trans('Company'), ['class' => 'col-lg-2 control-label required']) }} 
        <div class="col-lg-5">
            <!-- Create Your Input Field Here -->
            <!-- Look Below Example for reference -->
         
          <select name="company_id" class="form-control box-size" required>
            
             @if (count($companies) > 0)
                        @foreach ($companies as $row)
                          <option value="{{ $row->id}}">{{ $row->company}}</option>
                           @endforeach
                     @endif
          </select>
        </div><!--col-lg-10-->
    </div><!--form-group-->
      <div class="form-group">
        <!-- Create Your Field Label Here -->
        <!-- Look Below Example for reference -->
       {{ Form::label('name', trans('User'), ['class' => 'col-lg-2 control-label required']) }} 
        <div class="col-lg-5">
            <!-- Create Your Input Field Here -->
            <!-- Look Below Example for reference -->
         
          <select name="user_id" class="form-control box-size" required>
            
              @if (count($users) > 0)
                        @foreach ($users as $users)
                          <option value="{{ $users->id}}">{{ $users->first_name .' '. $users->last_name}}</option>
                           @endforeach
                     @endif
          </select>
        </div><!--col-lg-10-->
    </div><!--form-group-->
</div><!--box-body-->

@section("after-scripts")
    <script type="text/javascript">
        //Put your javascript needs in here.
        //Don't forget to put `@`parent exactly after `@`section("after-scripts"),
        //if your create or edit blade contains javascript of its own
        $( document ).ready( function() {
            //Everything in here would execute after the DOM is ready to manipulated.
        });
    </script>
@endsection
