<?php
/**
 * Country
 *
 */
Route::group(['namespace' => 'Backend', 'prefix' => 'admin', 'as' => 'admin.', 'middleware' => 'admin'], function () {
    
    Route::group( ['namespace' => 'Country'], function () {
        Route::resource('countries', 'CountriesController');

         // Show users profile - viewable by other users.
    Route::get('countries/{id}', [
        'as'   => '{id}',
        'uses' => 'CountriesController@show',
    ]);
        //For Datatable
        Route::post('countries/get', 'CountriesTableController')->name('countries.get');
    });
    
});