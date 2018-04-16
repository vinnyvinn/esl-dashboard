<?php

/**
 * Frontend Controllers
 * All route names are prefixed with 'frontend.'.
 */
Route::get('dashboard', [
            'as' => 'dashboard', 
            'uses' => 'DashboardController@index'

        ]);

Route::get('/', function () {
    return redirect('dashboard');
});

 
/**
 * These frontend controllers require the user to be logged in
 * All route names are prefixed with 'frontend.'
 */
Route::group(['middleware' => 'auth'], function () {
    Route::group(['namespace' => 'User', 'as' => 'user.'], function () {
        /*
         * User Dashboard Specific
         */
        
        Route::get('companies/{id}', 'DashboardController@show')->name('companies');
        Route::post('companyapps/', 'DashboardController@companyapps')->name('companyapps');
        /*
         * User Account Specific
         */
        Route::get('account', 'AccountController@index')->name('account');
        

         Route::get('companies/{id}', [
        'as'   => '{id}',
        'uses' => 'DashboardController@show',
    ]);


        Route::get('dashboard', [
            'as' => 'dashboard', 
            'uses' => 'DashboardController@index'

        ]);
        /*
         * User Profile Specific
         */
        Route::patch('profile/update', 'ProfileController@update')->name('profile.update');

        /*
         * User Profile Picture
         */
        Route::patch('profile-picture/update', 'ProfileController@updateProfilePicture')->name('profile-picture.update');
    });
});

/*
* Show pages
*/
Route::get('pages/{slug}', 'FrontendController@showPage')->name('pages.show');
