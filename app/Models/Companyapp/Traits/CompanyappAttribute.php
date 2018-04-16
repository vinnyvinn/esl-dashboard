<?php

namespace App\Models\Companyapp\Traits;

/**
 * Class CompanyappAttribute.
 */
trait CompanyappAttribute
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
                '.$this->getEditButtonAttribute("edit-companyapp", "admin.companyapps.edit").'
                '.$this->getDeleteButtonAttribute("delete-companyapp", "admin.companyapps.destroy").'
                </div>';
    }
}
