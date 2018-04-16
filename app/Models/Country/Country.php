<?php

namespace App\Models\Country;

use App\Models\ModelTrait;
use Illuminate\Database\Eloquent\Model;
use App\Models\Country\Traits\CountryAttribute;
use App\Models\Country\Traits\CountryRelationship;

class Country extends Model
{
    use ModelTrait,
        CountryAttribute,
    	CountryRelationship {
            // CountryAttribute::getEditButtonAttribute insteadof ModelTrait;
        }

    /**
     * NOTE : If you want to implement Soft Deletes in this model,
     * then follow the steps here : https://laravel.com/docs/5.4/eloquent#soft-deleting
     */

    /**
     * The database table used by the model.
     * @var string
     */
    protected $table = 'countries';
    protected $guarded = [
        'id',
    ];


    /**
     * Mass Assignable fields of model
     * @var array
     */
    protected $fillable = [

    ];

    /**
     * Default values for model fields
     * @var array
     */
    protected $attributes = [

    ];

    /**
     * Dates
     * @var array
     */
    protected $dates = [
        'created_at',
        'updated_at'
    ];

    
    public function country()
    {
        return $this->belongsTo('App\Models\Country');
    }

    /**
     * Constructor of Model
     * @param array $attributes
     */
    public function __construct(array $attributes = [])
    {
        parent::__construct($attributes);
    }
}
