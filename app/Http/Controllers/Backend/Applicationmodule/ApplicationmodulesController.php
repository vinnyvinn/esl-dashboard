<?php

namespace App\Http\Controllers\Backend\Applicationmodule;

use App\Models\Applicationmodule\Applicationmodule;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\URL;
use App\Http\Controllers\Controller;
use App\Repositories\Backend\Applicationmodule\ApplicationmoduleRepository;
use App\Http\Requests\Backend\Applicationmodule\ManageApplicationmoduleRequest;
use App\Http\Requests\Backend\Applicationmodule\CreateApplicationmoduleRequest;
use App\Http\Requests\Backend\Applicationmodule\StoreApplicationmoduleRequest;
use App\Http\Requests\Backend\Applicationmodule\EditApplicationmoduleRequest;
use App\Http\Requests\Backend\Applicationmodule\UpdateApplicationmoduleRequest;
use App\Http\Requests\Backend\Applicationmodule\DeleteApplicationmoduleRequest;

/**
 * ApplicationmodulesController
 */
class ApplicationmodulesController extends Controller
{
    /**
     * variable to store the repository object
     * @var ApplicationmoduleRepository
     */
    protected $repository;

    /**
     * contructor to initialize repository object
     * @param ApplicationmoduleRepository $repository;
     */
    public function __construct(ApplicationmoduleRepository $repository)
    {
        $this->repository = $repository;
    }

    /**
     * Display a listing of the resource.
     *
     * @param  App\Http\Requests\Backend\Applicationmodule\ManageApplicationmoduleRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function index(ManageApplicationmoduleRequest $request)
    {
        return view('backend.applicationmodules.index');
    }
    /**
     * Show the form for creating a new resource.
     *
     * @param  CreateApplicationmoduleRequestNamespace  $request
     * @return \Illuminate\Http\Response
     */
    public function create(CreateApplicationmoduleRequest $request)
    {
        return view('backend.applicationmodules.create');
    }
    /**
     * Store a newly created resource in storage.
     *
     * @param  StoreApplicationmoduleRequestNamespace  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreApplicationmoduleRequest $request)
    {
         //Input received from the request
         //Input received from the request
        $this->validate($request, ['app_name' => 'required',
                                    'app_url' => 'required',
                                   'app_icon' => 'required']);
        $applicationmodules = new Applicationmodule;
        $applicationmodules->app_name = $request->input('app_name');
         $applicationmodules->app_url = $request->input('app_url');
        if (Input::hasFile('app_icon')) {
            $file = Input::file('app_icon');
            $file->move(public_path(). '/img/frontend/', $file->getClientOriginalName());
            $url = URL::to("/"). '/img/frontend/'. $file->getClientOriginalName();
           
        }
        $applicationmodules->app_icon = $url;
        $applicationmodules->save();
        //return with successfull message
        return redirect()->route('admin.applicationmodules.index')->withFlashSuccess(trans('alerts.backend.applicationmodules.created'));
    }
    /**
     * Show the form for editing the specified resource.
     *
     * @param  App\Models\Applicationmodule\Applicationmodule  $applicationmodule
     * @param  EditApplicationmoduleRequestNamespace  $request
     * @return \Illuminate\Http\Response
     */
    public function edit(Applicationmodule $applicationmodule, EditApplicationmoduleRequest $request)
    {
        return view('backend.applicationmodules.edit', compact('applicationmodule'));
    }
    /**
     * Update the specified resource in storage.
     *
     * @param  UpdateApplicationmoduleRequestNamespace  $request
     * @param  App\Models\Applicationmodule\Applicationmodule  $applicationmodule
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateApplicationmoduleRequest $request, Applicationmodule $applicationmodule)
    {
        //Input received from the request
        $input = $request->except(['_token']);
        //Update the model using repository update method
        $this->repository->update( $applicationmodule, $input );
        //return with successfull message
        return redirect()->route('admin.applicationmodules.index')->withFlashSuccess(trans('alerts.backend.applicationmodules.updated'));
    }
    /**
     * Remove the specified resource from storage.
     *
     * @param  DeleteApplicationmoduleRequestNamespace  $request
     * @param  App\Models\Applicationmodule\Applicationmodule  $applicationmodule
     * @return \Illuminate\Http\Response
     */
    public function destroy(Applicationmodule $applicationmodule, DeleteApplicationmoduleRequest $request)
    {
        //Calling the delete method on repository
        $this->repository->delete($applicationmodule);
        //returning with successfull message
        return redirect()->route('admin.applicationmodules.index')->withFlashSuccess(trans('alerts.backend.applicationmodules.deleted'));
    }
    
}
