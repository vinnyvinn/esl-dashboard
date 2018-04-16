<?php

namespace App\Models\Module\Traits;

/**
 * Class ModuleAttribute.
 */
trait ModuleAttribute
{
    // Make your attributes functions here
    // Further, see the documentation : https://laravel.com/docs/5.4/eloquent-mutators#defining-an-accessor


    /**
     * Action Button Attribute to show in grid
     * @return string
     */
    public function getActionButtonsAttribute()
    {
        return '<div class="btn-group action-btn">
                '.$this->getEditButtonAttribute("edit-module", "admin.modules.edit").'
                '.$this->getDeleteButtonAttribute("delete-module", "admin.modules.destroy").'
                </div>';
    }
}
