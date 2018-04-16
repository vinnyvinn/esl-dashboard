<?php

namespace App\Http\Controllers\Backend\Applicationmodule;

use Carbon\Carbon;
use App\Http\Controllers\Controller;
use Yajra\DataTables\Facades\DataTables;
use App\Repositories\Backend\Applicationmodule\ApplicationmoduleRepository;
use App\Http\Requests\Backend\Applicationmodule\ManageApplicationmoduleRequest;

/**
 * Class ApplicationmodulesTableController.
 */
class ApplicationmodulesTableController extends Controller
{
    /**
     * variable to store the repository object
     * @var ApplicationmoduleRepository
     */
    protected $applicationmodule;

    /**
     * contructor to initialize repository object
     * @param ApplicationmoduleRepository $applicationmodule;
     */
    public function __construct(ApplicationmoduleRepository $applicationmodule)
    {
        $this->applicationmodule = $applicationmodule;
    }

    /**
     * This method return the data of the model
     * @param ManageApplicationmoduleRequest $request
     *
     * @return mixed
     */
    public function __invoke(ManageApplicationmoduleRequest $request)
    {
        return Datatables::of($this->applicationmodule->getForDataTable())
            ->escapeColumns(['id'])
            ->addColumn('created_at', function ($applicationmodule) {
                return Carbon::parse($applicationmodule->created_at)->toDateString();
            })
            ->addColumn('actions', function ($applicationmodule) {
                return $applicationmodule->action_buttons;
            })
            ->make(true);
    }
}
