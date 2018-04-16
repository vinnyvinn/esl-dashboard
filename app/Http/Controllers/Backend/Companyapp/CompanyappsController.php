<?php

namespace App\Http\Controllers\Backend\Companyapp;

use App\Models\Companyapp\Companyapp;
use App\Models\Company\Company;
use App\Models\Applicationmodule\Applicationmodule;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Repositories\Backend\Companyapp\CompanyappRepository;

use App\Repositories\Backend\Company\CompanyRepository;
use App\Repositories\Backend\Applicationmodule\ApplicationmoduleRepository;
use App\Http\Requests\Backend\Companyapp\ManageCompanyappRequest;
use App\Http\Requests\Backend\Companyapp\CreateCompanyappRequest;
use App\Http\Requests\Backend\Companyapp\StoreCompanyappRequest;
use App\Http\Requests\Backend\Companyapp\EditCompanyappRequest;
use App\Http\Requests\Backend\Companyapp\UpdateCompanyappRequest;
use App\Http\Requests\Backend\Companyapp\DeleteCompanyappRequest;

/**
 * CompanyappsController
 */
class CompanyappsController extends Controller
{
    /**
     * variable to store the repository object
     * @var CompanyappRepository
     */
    protected $repository;

    /**
     * contructor to initialize repository object
     * @param CompanyappRepository $repository;
     */
    public function __construct(CompanyappRepository $repository, CompanyRepository $companies, ApplicationmoduleRepository $apps)
    {
        $this->repository = $repository;
        $this->apps = $apps;
        $this->companies = $companies;
    }

    /**
     * Display a listing of the resource.
     *
     * @param  App\Http\Requests\Backend\Companyapp\ManageCompanyappRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function index(ManageCompanyappRequest $request)
    {
        return view('backend.companyapps.index');
    }
    /**
     * Show the form for creating a new resource.
     *
     * @param  CreateCompanyappRequestNamespace  $request
     * @return \Illuminate\Http\Response
     */
    public function create(CreateCompanyappRequest $request)
    {

         $apps = Applicationmodule::all();
        return view('backend.companyapps.create', compact('apps'))->with([
            'companies' => $this->companies->getAll(),
        ]);
    }
    /**
     * Store a newly created resource in storage.
     *
     * @param  StoreCompanyappRequestNamespace  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreCompanyappRequest $request)
    {
       //Input received from the request
        $this->validate($request, ['application_id' => 'required', 'company_id' => 'required']);
        
        $apps = new Companyapp;
        $apps->application_id = $request->input('application_id');
        $apps->company_id = $request->input('company_id');
        $apps->save();
        //return with successfull message
        return redirect()->route('admin.companyapps.index')->withFlashSuccess(trans('alerts.backend.companyapps.created'));
    }
    /**
     * Show the form for editing the specified resource.
     *
     * @param  App\Models\Companyapp\Companyapp  $companyapp
     * @param  EditCompanyappRequestNamespace  $request
     * @return \Illuminate\Http\Response
     */
    public function edit(Companyapp $companyapp, EditCompanyappRequest $request)
    {
        $apps = Applicationmodule::all();
        return view('backend.companyapps.edit', compact('apps', 'companyapp'))->with([
            'companies' => $this->companies->getAll(),
        ]);
    }
    /**
     * Update the specified resource in storage.
     *
     * @param  UpdateCompanyappRequestNamespace  $request
     * @param  App\Models\Companyapp\Companyapp  $companyapp
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateCompanyappRequest $request, Companyapp $companyapp)
    {
        //Input received from the request
        $input = $request->except(['_token']);
        //Update the model using repository update method
        $this->repository->update( $companyapp, $input );
        //return with successfull message
        return redirect()->route('admin.companyapps.index')->withFlashSuccess(trans('alerts.backend.companyapps.updated'));
    }
    /**
     * Remove the specified resource from storage.
     *
     * @param  DeleteCompanyappRequestNamespace  $request
     * @param  App\Models\Companyapp\Companyapp  $companyapp
     * @return \Illuminate\Http\Response
     */
    public function destroy(Companyapp $companyapp, DeleteCompanyappRequest $request)
    {
        //Calling the delete method on repository
        $this->repository->delete($companyapp);
        //returning with successfull message
        return redirect()->route('admin.companyapps.index')->withFlashSuccess(trans('alerts.backend.companyapps.deleted'));
    }
    
}
