<?php

namespace App\Repositories\Backend\Module;

use DB;
use Carbon\Carbon;
use App\Models\Module\Module;
use App\Exceptions\GeneralException;
use App\Repositories\BaseRepository;
use Illuminate\Database\Eloquent\Model;

/**
 * Class ModuleRepository.
 */
class ModuleRepository extends BaseRepository
{
    /**
     * Associated Repository Model.
     */
    const MODEL = Module::class;

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
                config('module.modules.table').'.id',
                config('module.modules.table').'.created_at',
                config('module.modules.table').'.updated_at',
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
        $module = self::MODEL;
        $module = new $module();
        if ($module->save($input)) {
            return true;
        }
        throw new GeneralException(trans('exceptions.backend.modules.create_error'));
    }

    /**
     * For updating the respective Model in storage
     *
     * @param Module $module
     * @param  $input
     * @throws GeneralException
     * return bool
     */
    public function update(Module $module, array $input)
    {
    	if ($module->update($input))
            return true;

        throw new GeneralException(trans('exceptions.backend.modules.update_error'));
    }

    /**
     * For deleting the respective model from storage
     *
     * @param Module $module
     * @throws GeneralException
     * @return bool
     */
    public function delete(Module $module)
    {
        if ($module->delete()) {
            return true;
        }

        throw new GeneralException(trans('exceptions.backend.modules.delete_error'));
    }
}
