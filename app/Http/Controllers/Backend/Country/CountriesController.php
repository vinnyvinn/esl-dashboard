<?php

namespace App\Http\Controllers\Backend\Country;

use App\Models\Country\Country;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\URL;
use App\Http\Controllers\Controller;
use App\Repositories\Backend\Country\CountryRepository;
use App\Http\Requests\Backend\Country\ManageCountryRequest;
use App\Http\Requests\Backend\Country\CreateCountryRequest;
use App\Http\Requests\Backend\Country\StoreCountryRequest;
use App\Http\Requests\Backend\Country\EditCountryRequest;
use App\Http\Requests\Backend\Country\UpdateCountryRequest;
use App\Http\Requests\Backend\Country\DeleteCountryRequest;
use DB;
use Carbon\Carbon;
use App\Models\Company\Company;
use Illuminate\Database\Eloquent\Model;
use App\Exceptions\GeneralException;
use App\Repositories\BaseRepository;

/**
 * CountriesController
 */
class CountriesController extends Controller
{
    /**
     * variable to store the repository object
     * @var CountryRepository
     */
   
    const MODEL = Company::class;

    protected $model;
    protected $country;

      public function __construct(Company $model, CountryRepository $country)
    {
        $this->model = $model;
        $this->country = $country;
    }
    /**
     * Display a listing of the resource.
     *
     * @param  App\Http\Requests\Backend\Country\ManageCountryRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function index(ManageCountryRequest $request)
    {
        return view('backend.countries.index');
    }


    public function show($id)
    {
        $country = Country::find($id);
        $companies = DB::table('companies')->where('country_id', '=', $id)->get();
        return view('backend.countries.show', compact('companies'))->withCountry($country);
        
    }
    
     public function query()
    {
        return call_user_func(static::MODEL.'::query');
    }
    /**
     * Show the form for creating a new resource.
     *
     * @param  CreateCountryRequestNamespace  $request
     * @return \Illuminate\Http\Response
     */
    public function create(CreateCountryRequest $request)
    {
        return view('backend.countries.create');
    }
    /**
     * Store a newly created resource in storage.
     *
     * @param  StoreCountryRequestNamespace  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreCountryRequest $request)
    {
        //Input received from the request
        $this->validate($request, ['country' => 'required',
                                   'flag' => 'required']);
        $countries = new Country;
        $countries->country = $request->input('country');
        if (Input::hasFile('flag')) {
            $file = Input::file('flag');
            $file->move(public_path(). '/img/backend/', $file->getClientOriginalName());
            $url = URL::to("/"). '/img/backend/'. $file->getClientOriginalName();
           
        }
        $countries->flag = $url;
        $countries->save();
        //return with successfull message
       return redirect()->route('admin.countries.index')->withFlashSuccess(trans('alerts.backend.countries.created'));

    }
    /**
     * Show the form for editing the specified resource.
     *
     * @param  App\Models\Country\Country  $country
     * @param  EditCountryRequestNamespace  $request
     * @return \Illuminate\Http\Response
     */
    public function edit(Country $country, EditCountryRequest $request)
    {
        return view('backend.countries.edit', compact('country'));
    }
    /**
     * Update the specified resource in storage.
     *
     * @param  UpdateCountryRequestNamespace  $request
     * @param  App\Models\Country\Country  $country
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateCountryRequest $request, Country $country)
    {
        //Input received from the request
        $input = $request->except(['_token']);
        //Update the model using repository update method
        $this->repository->update( $country, $input );
        //return with successfull message
        return redirect()->route('admin.countries.index')->withFlashSuccess(trans('alerts.backend.countries.updated'));
    }
    /**
     * Remove the specified resource from storage.
     *
     * @param  DeleteCountryRequestNamespace  $request
     * @param  App\Models\Country\Country  $country
     * @return \Illuminate\Http\Response
     */
    public function destroy(Country $country, DeleteCountryRequest $request)
    {
        //Calling the delete method on repository
        $this->repository->delete($country);
        //returning with successfull message
        return redirect()->route('admin.countries.index')->withFlashSuccess(trans('alerts.backend.countries.deleted'));
    }
    
}
