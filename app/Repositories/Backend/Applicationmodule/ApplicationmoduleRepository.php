<?php

namespace App\Repositories\Backend\Applicationmodule;

use DB;
use Carbon\Carbon;
use App\Models\Applicationmodule\Applicationmodule;
use App\Exceptions\GeneralException;
use App\Repositories\BaseRepository;
use Illuminate\Database\Eloquent\Model;

/**
 * Class ApplicationmoduleRepository.
 */
class ApplicationmoduleRepository extends BaseRepository
{
    /**
     * Associated Repository Model.
     */
    const MODEL = Applicationmodule::class;

    /**
     * This method is used by Table Controller
     * For getting the table data to show in
     * the grid
     * @return mixed
     */
    public function getForDataTable()
    {
        return $this->query()
            ->select([
                config('module.applicationmodules.table').'.id',
                config('module.applicationmodules.table').'.app_name',
                config('module.applicationmodules.table').'.created_at',
                config('module.applicationmodules.table').'.updated_at',
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
        $applicationmodule = self::MODEL;
        $applicationmodule = new $applicationmodule();
        if ($applicationmodule->save($input)) {
            return true;
        }
        throw new GeneralException(trans('exceptions.backend.applicationmodules.create_error'));
    }

    /**
     * For updating the respective Model in storage
     *
     * @param Applicationmodule $applicationmodule
     * @param  $input
     * @throws GeneralException
     * return bool
     */
    public function update(Applicationmodule $applicationmodule, array $input)
    {
    	if ($applicationmodule->update($input))
            return true;

        throw new GeneralException(trans('exceptions.backend.applicationmodules.update_error'));
    }

    /**
     * For deleting the respective model from storage
     *
     * @param Applicationmodule $applicationmodule
     * @throws GeneralException
     * @return bool
     */
    public function delete(Applicationmodule $applicationmodule)
    {
        if ($applicationmodule->delete()) {
            return true;
        }

        throw new GeneralException(trans('exceptions.backend.applicationmodules.delete_error'));
    }
}
