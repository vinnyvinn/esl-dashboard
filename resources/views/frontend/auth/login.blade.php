@extends('frontend.layouts.auth')

@section('content')
    <div class="row">

        <div class="col-xs-12 col-sm-8"></div>
        <div class="col-xs-12 col-sm-4">
            
            <div class="login-form">
                <div class="logo">
                    <img src="/img/frontend/logo.png">
                </div>
                <h4>Login to Pro-Kazi Dashboard</h4>
                 {{ Form::open(['route' => 'frontend.auth.login', 'class' => 'form-horizontal']) }}

                    <div class="form-group">
                        {{ Form::label('email', trans('validation.attributes.frontend.register-user.email'), ['class' => '']) }}
                       
                            {{ Form::input('email', 'email', null, ['class' => 'form-control', 'placeholder' => trans('validation.attributes.frontend.register-user.email')]) }}
                       
                    </div><!--form-group-->

                    <div class="form-group">
                        {{ Form::label('password', trans('validation.attributes.frontend.register-user.password'), ['class' => '']) }}
                       
                            {{ Form::input('password', 'password', null, ['class' => 'form-control', 'placeholder' => trans('validation.attributes.frontend.register-user.password')]) }}
                       
                    </div><!--form-group-->

                    <div class="form-group">
                        <div class="col-md-6">
                            <div class="checkbox">
                                <label>
                                    {{ Form::checkbox('remember') }} {{ trans('labels.frontend.auth.remember_me') }}
                                </label>
                            </div>
                        </div><!--col-md-6-->
                    
                        <div class="col-md-6 ">
                           

                            {{ link_to_route('frontend.auth.password.reset', trans('labels.frontend.passwords.forgot_password')) }}
                        </div><!--col-md-6-->
                    </div><!--form-group-->
                    <div class="form-group">
                        <div class="col-sm-12">
                             {{ Form::submit(trans('labels.frontend.auth.login_button'), ['class' => 'btn btn-primary']) }}
                        </div>
                    </div>

                    {{ Form::close() }}

            </div>
        </div>

    </div><!--row-->
@endsection