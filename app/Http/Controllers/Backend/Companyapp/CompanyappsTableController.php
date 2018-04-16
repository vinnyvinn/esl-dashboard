<?php

namespace App\Http\Controllers\Backend\Companyapp;

use Carbon\Carbon;
use App\Http\Controllers\Controller;
use Yajra\DataTables\Facades\DataTables;
use App\Repositories\Backend\Companyapp\CompanyappRepository;
use App\Repositories\Backend\Applicationmodule\ApplicationmoduleRepository;
use App\Http\Requests\Backend\Companyapp\ManageCompanyappRequest;

/**
 * Class CompanyappsTableController.
 */
class CompanyappsTableController extends Controller
{
    /**
     * variable to store the repository object
     * @var CompanyappRepository
     */
    protected $companyapp;

    /**
     * contructor to initialize repository object
     * @param CompanyappRepository $companyapp;
     */
    public function __construct(CompanyappRepository $companyapp, ApplicationmoduleRepository $applications)
    {
        $this->companyapp = $companyapp;
        $this->applications = $applications;
    }

    /**
     * This method return the data of the model
     * @param ManageCompanyappRequest $request
     *
     * @return mixed
     */
    public function __invoke(ManageCompanyappRequest $request)
    {
        return Datatables::of($this->companyapp->getForDataTable())
            ->escapeColumns(['id'])
            ->addColumn('applications', function ($companyapp) {
                return $companyapp->applications;
            })
            ->addColumn('company', function ($companyapp) {
                if ($companyapp->all) {
                    return '<span class="label label-success">'.trans('labels.general.all').'</span>';
                }

                return $companyapp->company_id;
            })
            ->addColumn('created_at', function ($companyapp) {
                return Carbon::parse($companyapp->created_at)->toDateString();
            })
            ->addColumn('actions', function ($companyapp) {
                return $companyapp->action_buttons;
            })
            ->make(true);
    }
}
