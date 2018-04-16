<div class="box-body">
    <div class="form-group">
        <!-- Create Your Field Label Here -->
        <!-- Look Below Example for reference -->
        {{ Form::label('name', trans('Name of the Country'), ['class' => 'col-lg-2 control-label required']) }} 

        <div class="col-lg-7">
            <!-- Create Your Input Field Here -->
            <!-- Look Below Example for reference -->
            {{ Form::input('text', 'country', null, ['class' => 'form-control', 'placeholder' => trans('Name of the Country')]) }}
        </div><!--col-lg-10-->
    </div><!--form-group-->

    <div class="form-group">
        <!-- Create Your Field Label Here -->
        <!-- Look Below Example for reference -->
        {{ Form::label('name', trans('Flag'), ['class' => 'col-lg-2 control-label required']) }} 

        <div class="col-lg-7">
            <!-- Create Your Input Field Here -->
            <!-- Look Below Example for reference -->
            {{ Form::input('file', 'flag', null, ['class' => 'form-control', 'placeholder' => trans('validation.attributes.frontend.register-user.email')]) }}
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
