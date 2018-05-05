<?php

use Illuminate\Database\Seeder;

class CompanyappsTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('companyapps')->delete();
        
        \DB::table('companyapps')->insert(array (
            0 => 
            array (
                'id' => 1,
                'application_id' => 1,
                'company_id' => 1,
                'created_at' => '2018-05-05 12:43:39',
                'updated_at' => '2018-05-05 12:43:39',
                'deleted_at' => NULL,
            ),
            1 => 
            array (
                'id' => 2,
                'application_id' => 2,
                'company_id' => 1,
                'created_at' => '2018-05-05 12:43:50',
                'updated_at' => '2018-05-05 12:43:50',
                'deleted_at' => NULL,
            ),
            2 => 
            array (
                'id' => 3,
                'application_id' => 3,
                'company_id' => 1,
                'created_at' => '2018-05-05 12:44:02',
                'updated_at' => '2018-05-05 12:44:02',
                'deleted_at' => NULL,
            ),
            3 => 
            array (
                'id' => 4,
                'application_id' => 5,
                'company_id' => 1,
                'created_at' => '2018-05-05 12:44:15',
                'updated_at' => '2018-05-05 12:44:15',
                'deleted_at' => NULL,
            ),
        ));
        
        
    }
}