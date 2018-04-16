<?php

namespace App\Models\Usercompany\Traits;

/**
 * Class UsercompanyAttribute.
 */
trait UsercompanyAttribute
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
                '.$this->getEditButtonAttribute("edit-usercompany", "admin.usercompanies.edit").'
                '.$this->getDeleteButtonAttribute("delete-usercompany", "admin.usercompanies.destroy").'
                </div>';
    }
}
