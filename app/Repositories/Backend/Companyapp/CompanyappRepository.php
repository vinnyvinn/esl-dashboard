<?php

namespace App\Repositories\Backend\Companyapp;

use DB;
use Carbon\Carbon;
use App\Models\Companyapp\Companyapp;
use App\Exceptions\GeneralException;
use App\Repositories\BaseRepository;
use Illuminate\Database\Eloquent\Model;

/**
 * Class CompanyappRepository.
 */
class CompanyappRepository extends BaseRepository
{
    /**
     * Associated Repository Model.
     */
    const MODEL = Companyapp::class;

    /**
     * This method is used by Table Controller
     * For getting the table data to show in
     * the grid
     * @return mixed
     */
    public function getForDataTable()
    {
        return $this->query()

        ->leftJoin('companies', 'companyapps.company_id', '=', 'companies.id')
         ->leftJoin('applicationmodules', 'companyapps.application_id', '=', 'applicationmodules.id')
            ->select([
                config('module.companyapps.table').'.id',
                config('module.companyapps.table').'.created_at',
                config('module.companyapps.table').'.updated_at',
                 DB::raw('GROUP_CONCAT(companies.company) as companies'),
                DB::raw('GROUP_CONCAT(applicationmodules.app_name) as applicationmodules'),
            ]);
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
        $companyapp = self::MODEL;
        $companyapp = new $companyapp();
        if ($companyapp->save($input)) {
            return true;
        }
        throw new GeneralException(trans('exceptions.backend.companyapps.create_error'));
    }

    /**
     * For updating the respective Model in storage
     *
     * @param Companyapp $companyapp
     * @param  $input
     * @throws GeneralException
     * return bool
     */
    public function update(Companyapp $companyapp, array $input)
    {
    	if ($companyapp->update($input))
            return true;

        throw new GeneralException(trans('exceptions.backend.companyapps.update_error'));
    }

    /**
     * For deleting the respective model from storage
     *
     * @param Companyapp $companyapp
     * @throws GeneralException
     * @return bool
     */
    public function delete(Companyapp $companyapp)
    {
        if ($companyapp->delete()) {
            return true;
        }

        throw new GeneralException(trans('exceptions.backend.companyapps.delete_error'));
    }
}
