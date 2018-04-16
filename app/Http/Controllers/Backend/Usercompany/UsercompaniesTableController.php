<?php

namespace App\Http\Controllers\Backend\Usercompany;

use Carbon\Carbon;
use App\Http\Controllers\Controller;
use Yajra\DataTables\Facades\DataTables;
use App\Repositories\Backend\Usercompany\UsercompanyRepository;
use App\Http\Requests\Backend\Usercompany\ManageUsercompanyRequest;

use App\Repositories\Backend\Access\User\UserRepository;

/**
 * Class UsercompaniesTableController.
 */
class UsercompaniesTableController extends Controller
{
    /**
     * variable to store the repository object
     * @var UsercompanyRepository
     */
    protected $usercompany;

    /**
     * contructor to initialize repository object
     * @param UsercompanyRepository $usercompany;
     */
    public function __construct(UsercompanyRepository $usercompany, UserRepository $users)
    {
        $this->usercompany = $usercompany;
        $this->users = $users;
    }

    /**
     * This method return the data of the model
     * @param ManageUsercompanyRequest $request
     *
     * @return mixed
     */
    public function __invoke(ManageUsercompanyRequest $request)
    {
        return Datatables::of($this->usercompany->getForDataTable())
            ->escapeColumns(['id'])
            ->addColumn('users', function ($usercompany) {
                return $usercompany->users;
            })
            ->addColumn('company', function ($usercompany) {
                if ($usercompany->all) {
                    return '<span class="label label-success">'.trans('labels.general.all').'</span>';
                }

                return $usercompany->company_id;
            })
            ->addColumn('created_at', function ($usercompany) {
                return Carbon::parse($usercompany->created_at)->toDateString();
            })
            ->addColumn('actions', function ($usercompany) {
                return $usercompany->action_buttons;
            })
            ->make(true);
    }
}
