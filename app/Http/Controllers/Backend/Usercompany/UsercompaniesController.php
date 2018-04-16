<?php

namespace App\Http\Controllers\Backend\Usercompany;

use App\Models\Usercompany\Usercompany;
use App\Models\Company\Company;
use App\Models\Access\User\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Repositories\Backend\Usercompany\UsercompanyRepository;
use App\Repositories\Backend\Company\CompanyRepository;
use App\Repositories\Backend\Access\User\UserRepository;
use App\Http\Requests\Backend\Usercompany\ManageUsercompanyRequest;
use App\Http\Requests\Backend\Usercompany\CreateUsercompanyRequest;
use App\Http\Requests\Backend\Usercompany\StoreUsercompanyRequest;
use App\Http\Requests\Backend\Usercompany\EditUsercompanyRequest;
use App\Http\Requests\Backend\Usercompany\UpdateUsercompanyRequest;
use App\Http\Requests\Backend\Usercompany\DeleteUsercompanyRequest;

/**
 * UsercompaniesController
 */
class UsercompaniesController extends Controller
{
    /**
     * variable to store the repository object
     * @var UsercompanyRepository
     */
    protected $repository;

    /**
     * contructor to initialize repository object
     * @param UsercompanyRepository $repository;
     */
    public function __construct(UsercompanyRepository $repository, CompanyRepository $companies, UserRepository $users)
    {
        $this->repository = $repository;
        $this->companies = $companies;
        $this->users = $users;
    }

    /**
     * Display a listing of the resource.
     *
     * @param  App\Http\Requests\Backend\Usercompany\ManageUsercompanyRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function index(ManageUsercompanyRequest $request)
    {
        $companies = Usercompany::all();
        return view('backend.usercompanies.index', compact('companies'));
    }
    /**
     * Show the form for creating a new resource.
     *
     * @param  CreateUsercompanyRequestNamespace  $request
     * @return \Illuminate\Http\Response
     */
    public function create(CreateUsercompanyRequest $request, CompanyRepository $companies)
    {    
        $companies = Company::all();
        return view('backend.usercompanies.create', compact('companies'))->with([
            'users' => $this->users->getAll(),
        ]);
    }

    
    /**
     * Store a newly created resource in storage.
     *
     * @param  StoreUsercompanyRequestNamespace  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreUsercompanyRequest $request)
    {
      //Input received from the request
        $this->validate($request, ['user_id' => 'required', 'company_id' => 'required']);
        $companies = new Usercompany;
        $companies->company_id = $request->input('company_id');
        $companies->user_id = $request->input('user_id');
        $companies->save();
        return redirect()->route('admin.usercompanies.index')->withFlashSuccess(trans('alerts.backend.usercompanies.created'));
    }
    /**
     * Show the form for editing the specified resource.
     *
     * @param  App\Models\Usercompany\Usercompany  $usercompany
     * @param  EditUsercompanyRequestNamespace  $request
     * @return \Illuminate\Http\Response
     */
    public function edit(Usercompany $usercompany, EditUsercompanyRequest $request)
    {

         $companies = Company::all();
        return view('backend.usercompanies.edit', compact('usercompany', 'companies'))->with([
            'users' => $this->users->getAll(),
        ]);
    }
    /**
     * Update the specified resource in storage.
     *
     * @param  UpdateUsercompanyRequestNamespace  $request
     * @param  App\Models\Usercompany\Usercompany  $usercompany
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateUsercompanyRequest $request, Usercompany $usercompany)
    {
        //Input received from the request
        $input = $request->except(['_token']);
        //Update the model using repository update method
        $this->repository->update( $usercompany, $input );
        //return with successfull message
        return redirect()->route('admin.usercompanies.index')->withFlashSuccess(trans('alerts.backend.usercompanies.updated'));
    }
    /**
     * Remove the specified resource from storage.
     *
     * @param  DeleteUsercompanyRequestNamespace  $request
     * @param  App\Models\Usercompany\Usercompany  $usercompany
     * @return \Illuminate\Http\Response
     */
    public function destroy(Usercompany $usercompany, DeleteUsercompanyRequest $request)
    {
        //Calling the delete method on repository
        $this->repository->delete($usercompany);
        //returning with successfull message
        return redirect()->route('admin.usercompanies.index')->withFlashSuccess(trans('alerts.backend.usercompanies.deleted'));
    }
    
}
