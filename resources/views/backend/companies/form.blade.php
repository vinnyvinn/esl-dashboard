<div class="box-body">
    <div class="form-group">
        <!-- Create Your Field Label Here -->
        <!-- Look Below Example for reference -->
       {{ Form::label('name', trans('Company name'), ['class' => 'col-lg-2 control-label required']) }} 
        <div class="col-lg-5">
            <!-- Create Your Input Field Here -->
            <!-- Look Below Example for reference -->
          {{ Form::text('company', null, ['class' => 'form-control box-size', 'placeholder' => trans('Company name'), 'required' => 'required']) }} 
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
