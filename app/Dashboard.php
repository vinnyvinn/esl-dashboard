<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Dashboard extends Model
{
    //

     public function users()
    {
        return $this->belongsToMany(User::class);
    }

     public function companies()
    {
        return $this->belongsToMany(Company::class);
    }

     /**
     * Assign company to user.
     *
     * @param string $company
     *
     * @return company
     */
    public function assignCompany($company)
    {
        return $this->companies()->save(
            Company::whereName($company)->firstOrFail()
        );
    }

     public function hasCompany($company)
    {
        if (is_string($company)) {
            return $this->companies->contains('company', $company);
        }

        return !! $company->intersect($this->companies)->count();
    }

}
