<div class="pull-right">
      @if (! $logged_in_user)
                    <span>{{ link_to_route('frontend.auth.login', trans('navs.frontend.login')) }}</span>

                    @if (config('access.users.registration'))
                        <span>{{ link_to_route('frontend.auth.register', trans('navs.frontend.register')) }}</span>
                    @endif
                @else
                <p>
                    
                        <span>Welcome {{ $logged_in_user->name }} </span>

                        
                            @permission('view-backend')
                                <a href="">{{ link_to_route('admin.dashboard', trans('navs.frontend.user.administration')) }}
                            @endauth</a>

                           
                            <span>{{ link_to_route('frontend.auth.logout', trans('navs.general.logout')) }}</span>
                       
                   
                @endif
            </p>
</div>