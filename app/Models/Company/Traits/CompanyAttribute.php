<?php

namespace App\Models\Company\Traits;

/**
 * Class CompanyAttribute.
 */
trait CompanyAttribute
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
                '.$this->getEditButtonAttribute("edit-company", "admin.companies.edit").'
                '.$this->getDeleteButtonAttribute("delete-company", "admin.companies.destroy").'
                </div>';
    }
}
