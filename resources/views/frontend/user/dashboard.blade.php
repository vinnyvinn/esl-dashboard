@extends('frontend.layouts.app')

@section('content')
    <section id="company-view">
        <div class="container">
            <div class="row">
                <div class="col-sm-12">


                    <div class="row">
     <div class="col-md-4 col-md-offset-4">
            <div class="logo">
                <a href="">
                    <img src="/img/frontend/logo.png">
                </a>
            </div>

            <form class="" action="{{ url('/companyapps')}}" method="post">
            {{csrf_field()}}
            <div class="form-group">
                <select name="company_id"
                        id="company_id" class="form-control box-size"
                        style="border: 2px solid black; color: black; font-size: 16px; height: 50px;"
                        required>
                    <option>-- Select a Company --</option>
                    @if (count($companies) > 0)
                        @foreach ($companies as $companies)
                            <option value="{{ $companies->id}}">{{ $companies->company}}</option>
                        @endforeach
                    @endif
                </select>
                </div>
                <div class="form-group">
                    <div class="col-md-8 col-md-offset-2">
                        <button type="submit" class="btn btn-block btn-primary">Proceed</button>
                    </div>
                </div>
            </form>
        </div>


    </div><!--col-xs-12-->
</div><!--row-->


</div><!--col-md-8-->
        </div>
</section>


@endsection
@section('js')
    <script>
        $('#company_id').on('change', function (e) {
            $(this).closest('form').submit();
        });
    </script>
@endsection