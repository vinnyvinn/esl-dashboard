@extends ('backend.layouts.app')

@section ('title', trans('labels.backend.companies.management'))

@section('page-header')
    <h1>{{ trans('labels.backend.companies.management') }}</h1>
@endsection

@section('content')

<div class="row">

	 <form action="/direct" method="post">
        {{csrf_field()}}
	<div class="col-md-5 col-md-offset-4">
		<div class="form-group">
			<label>Select Company to Proceed</label>
			<select name="country_id" class="form-control box-size" required>
            
             @if (count($companies) > 0)
                        @foreach ($companies as $companies)
                          <option value="{{ $companies->id}}">{{ $companies->company}}</option>
                           @endforeach
                     @endif
          </select>
           
		</div>
	</div>
	<div class="col-md-5 col-md-offset-4">
		<div class="form-group">
			<button type="submit" class="btn btn-block btn-primary">Proceed</button>
		</div>
	</div>
	 </form>
</div>
@endsection
