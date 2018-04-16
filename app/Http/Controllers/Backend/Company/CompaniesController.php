<?php

namespace App\Http\Controllers\Backend\Company;

use App\Models\Company\Company;
use App\Models\Country\Country;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Repositories\Backend\Company\CompanyRepository;
use App\Repositories\Backend\Country\CountryRepository;
use App\Http\Requests\Backend\Company\ManageCompanyRequest;
use App\Http\Requests\Backend\Company\CreateCompanyRequest;
use App\Http\Requests\Backend\Company\StoreCompanyRequest;
use App\Http\Requests\Backend\Company\EditCompanyRequest;
use App\Http\Requests\Backend\Company\UpdateCompanyRequest;
use App\Http\Requests\Backend\Company\DeleteCompanyRequest;

/**
 * CompaniesController
 */
class CompaniesController extends Controller
{
    /**
     * variable to store the repository object
     * @var CompanyRepository
     */
    protected $repository;

    /**
     * contructor to initialize repository object
     * @param CompanyRepository $repository;
     */
    public function __construct(CompanyRepository $repository,  CountryRepository $countries)
    {
        $this->repository = $repository;
        $this->countries = $countries;
    }

    /**
     * Display a listing of the resource.
     *
     * @param  App\Http\Requests\Backend\Company\ManageCompanyRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function index(ManageCompanyRequest $request)
    {
        return view('backend.companies.index');
    }
    /**
     * Show the form for creating a new resource.
     *
     * @param  CreateCompanyRequestNamespace  $request
     * @return \Illuminate\Http\Response
     */
    public function create(CreateCompanyRequest $request)
    {
        $countries = Country::all();
        return view('backend.companies.create', compact('countries'));
    }
    /**
     * Store a newly created resource in storage.
     *
     * @param  StoreCompanyRequestNamespace  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreCompanyRequest $request)
    {
        //Input received from the request
        $this->validate($request, ['company' => 'required', 'country_id' => 'required']);
        $companies = new Company;
        $companies->company = $request->input('company');
        $companies->country_id = $request->input('country_id');
        $companies->save();
        //return with successfull message
        return redirect()->route('admin.companies.index')->withFlashSuccess(trans('alerts.backend.companies.created'));
    }
    /**
     * Show the form for editing the specified resource.
     *
     * @param  App\Models\Company\Company  $company
     * @param  EditCompanyRequestNamespace  $request
     * @return \Illuminate\Http\Response
     */
    public function edit(Company $company, EditCompanyRequest $request)
    {
        return view('backend.companies.edit', compact('company'))->with([
            
            'countries'           => $this->countries->getAll()
        ]);
       
    }
    /**
     * Update the specified resource in storage.
     *
     * @param  UpdateCompanyRequestNamespace  $request
     * @param  App\Models\Company\Company  $company
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateCompanyRequest $request, Company $company)
    {
        //Input received from the request
        $input = $request->except(['_token']);
        //Update the model using repository update method
        $this->repository->update( $company, $input );
        //return with successfull message
        return redirect()->route('admin.companies.index')->withFlashSuccess(trans('alerts.backend.companies.updated'));
    }
    /**
     * Remove the specified resource from storage.
     *
     * @param  DeleteCompanyRequestNamespace  $request
     * @param  App\Models\Company\Company  $company
     * @return \Illuminate\Http\Response
     */
    public function destroy(Company $company, DeleteCompanyRequest $request)
    {
        //Calling the delete method on repository
        $this->repository->delete($company);
        //returning with successfull message
        return redirect()->route('admin.companies.index')->withFlashSuccess(trans('alerts.backend.companies.deleted'));
    }
    
}
