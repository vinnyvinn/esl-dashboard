<?php
/**
 * Usercompany
 *
 */
Route::group(['namespace' => 'Backend', 'prefix' => 'admin', 'as' => 'admin.', 'middleware' => 'admin'], function () {
    
    Route::group( ['namespace' => 'Usercompany'], function () {
        Route::resource('usercompanies', 'UsercompaniesController');
        //For Datatable
        Route::post('usercompanies/get', 'UsercompaniesTableController')->name('usercompanies.get');
    });
    
});