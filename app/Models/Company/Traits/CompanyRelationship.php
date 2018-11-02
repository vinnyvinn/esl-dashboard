<?php

namespace App\Models\Company\Traits;
use App\Models\Applicationmodule;
/**
 * Class CompanyRelationship
 */
trait CompanyRelationship
{
   
    public function apps() {
        
        $this->belongsTo(Applicationmodule::class);
    }
     
}
