<?php

namespace App\Http\Controllers\Backend\Module;

use Carbon\Carbon;
use App\Http\Controllers\Controller;
use Yajra\DataTables\Facades\DataTables;
use App\Repositories\Backend\Module\ModuleRepository;
use App\Http\Requests\Backend\Module\ManageModuleRequest;

/**
 * Class ModulesTableController.
 */
class ModulesTableController extends Controller
{
    /**
     * variable to store the repository object
     * @var ModuleRepository
     */
    protected $module;

    /**
     * contructor to initialize repository object
     * @param ModuleRepository $module;
     */
    public function __construct(ModuleRepository $module)
    {
        $this->module = $module;
    }

    /**
     * This method return the data of the model
     * @param ManageModuleRequest $request
     *
     * @return mixed
     */
    public function __invoke(ManageModuleRequest $request)
    {
        return Datatables::of($this->module->getForDataTable())
            ->escapeColumns(['id'])
            ->addColumn('created_at', function ($module) {
                return Carbon::parse($module->created_at)->toDateString();
            })
            ->addColumn('actions', function ($module) {
                return $module->action_buttons;
            })
            ->make(true);
    }
}
