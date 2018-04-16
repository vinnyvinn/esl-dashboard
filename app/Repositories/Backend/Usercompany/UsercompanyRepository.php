<?php

namespace App\Repositories\Backend\Usercompany;

use DB;
use Carbon\Carbon;
use App\Models\Usercompany\Usercompany;
use App\Exceptions\GeneralException;
use App\Repositories\BaseRepository;

use App\Repositories\Backend\Company\CompanyRepository;
use Illuminate\Database\Eloquent\Model;

/**
 * Class UsercompanyRepository.
 */
class UsercompanyRepository extends BaseRepository
{
    /**
     * Associated Repository Model.
     */
    const MODEL = Usercompany::class;

    protected $model;
    protected $company;

      public function __construct(Usercompany $model, CompanyRepository $company)
    {
        $this->model = $model;
        $this->company = $company;
    }

    /**
     * This method is used by Table Controller
     * For getting the table data to show in
     * the grid
     * @return mixed
     */
    public function getForDataTable()
    {
        return $this->query()
        ->leftJoin('companies', 'usercompanies.company_id', '=', 'companies.id')
         ->leftJoin('users', 'usercompanies.user_id', '=', 'users.id')
            ->select([
                config('module.usercompanies.table').'.id',
                config('module.usercompanies.table').'.created_at',
                config('module.usercompanies.table').'.updated_at',
                 DB::raw('GROUP_CONCAT(companies.company) as companies'),
                DB::raw('GROUP_CONCAT(users.first_name) as users'),
                // DB::raw('(SELECT COUNT(usercompanies.id) FROM usercompanies LEFT JOIN users ON usercompanies.user_id = users.id WHERE usercompanies.user_id = users.id AND users.deleted_at IS NULL) AS userCount'),
            ])
            ->groupBy('usercompanies.id');
    }

    /**
     * For Creating the respective model in storage
     *
     * @param array $input
     * @throws GeneralException
     * @return bool
     */
    public function create(array $input)
    {
        $usercompany = self::MODEL;
        $usercompany = new $usercompany();
        if ($usercompany->save($input)) {
            return true;
        }
        throw new GeneralException(trans('exceptions.backend.usercompanies.create_error'));
    }

    /**
     * For updating the respective Model in storage
     *
     * @param Usercompany $usercompany
     * @param  $input
     * @throws GeneralException
     * return bool
     */
    public function update(Usercompany $usercompany, array $input)
    {
    	if ($usercompany->update($input))
            return true;

        throw new GeneralException(trans('exceptions.backend.usercompanies.update_error'));
    }

    /**
     * For deleting the respective model from storage
     *
     * @param Usercompany $usercompany
     * @throws GeneralException
     * @return bool
     */
    public function delete(Usercompany $usercompany)
    {
        if ($usercompany->delete()) {
            return true;
        }

        throw new GeneralException(trans('exceptions.backend.usercompanies.delete_error'));
    }
}
