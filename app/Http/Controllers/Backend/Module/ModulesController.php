<?php

namespace App\Http\Controllers\Backend\Module;

use App\Models\Module\Module;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Repositories\Backend\Module\ModuleRepository;
use App\Http\Requests\Backend\Module\ManageModuleRequest;
use App\Http\Requests\Backend\Module\CreateModuleRequest;
use App\Http\Requests\Backend\Module\StoreModuleRequest;
use App\Http\Requests\Backend\Module\EditModuleRequest;
use App\Http\Requests\Backend\Module\UpdateModuleRequest;
use App\Http\Requests\Backend\Module\DeleteModuleRequest;

/**
 * ModulesController
 */
class ModulesController extends Controller
{
    /**
     * variable to store the repository object
     * @var ModuleRepository
     */
    protected $repository;

    /**
     * contructor to initialize repository object
     * @param ModuleRepository $repository;
     */
    public function __construct(ModuleRepository $repository)
    {
        $this->repository = $repository;
    }

    /**
     * Display a listing of the resource.
     *
     * @param  App\Http\Requests\Backend\Module\ManageModuleRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function index(ManageModuleRequest $request)
    {
        return view('backend.modules.index');
    }
    /**
     * Show the form for creating a new resource.
     *
     * @param  CreateModuleRequestNamespace  $request
     * @return \Illuminate\Http\Response
     */
    public function create(CreateModuleRequest $request)
    {
        return view('backend.modules.create');
    }
    /**
     * Store a newly created resource in storage.
     *
     * @param  StoreModuleRequestNamespace  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreModuleRequest $request)
    {
        //Input received from the request
        $input = $request->except(['_token']);
        //Create the model using repository create method
        $this->repository->create($input);
        //return with successfull message
        return redirect()->route('admin.modules.index')->withFlashSuccess(trans('alerts.backend.modules.created'));
    }
    /**
     * Show the form for editing the specified resource.
     *
     * @param  App\Models\Module\Module  $module
     * @param  EditModuleRequestNamespace  $request
     * @return \Illuminate\Http\Response
     */
    public function edit(Module $module, EditModuleRequest $request)
    {
        return view('backend.modules.edit', compact('module'));
    }
    /**
     * Update the specified resource in storage.
     *
     * @param  UpdateModuleRequestNamespace  $request
     * @param  App\Models\Module\Module  $module
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateModuleRequest $request, Module $module)
    {
        //Input received from the request
        $input = $request->except(['_token']);
        //Update the model using repository update method
        $this->repository->update( $module, $input );
        //return with successfull message
        return redirect()->route('admin.modules.index')->withFlashSuccess(trans('alerts.backend.modules.updated'));
    }
    /**
     * Remove the specified resource from storage.
     *
     * @param  DeleteModuleRequestNamespace  $request
     * @param  App\Models\Module\Module  $module
     * @return \Illuminate\Http\Response
     */
    public function destroy(Module $module, DeleteModuleRequest $request)
    {
        //Calling the delete method on repository
        $this->repository->delete($module);
        //returning with successfull message
        return redirect()->route('admin.modules.index')->withFlashSuccess(trans('alerts.backend.modules.deleted'));
    }
    
}
