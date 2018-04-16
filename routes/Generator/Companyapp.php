<?php
/**
 * Companyapps
 *
 */
Route::group(['namespace' => 'Backend', 'prefix' => 'admin', 'as' => 'admin.', 'middleware' => 'admin'], function () {
    
    Route::group( ['namespace' => 'Companyapp'], function () {
        Route::resource('companyapps', 'CompanyappsController');
        //For Datatable
        Route::post('companyapps/get', 'CompanyappsTableController')->name('companyapps.get');
    });
    
});