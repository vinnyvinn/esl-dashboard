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
            4 => 
            array (
                'id' => 5,
                'application_id' => 4,
                'company_id' => 1,
                'created_at' => '2018-05-07 06:56:33',
                'updated_at' => '2018-05-07 06:56:33',
                'deleted_at' => NULL,
            ),
            5 => 
            array (
                'id' => 6,
                'application_id' => 1,
                'company_id' => 2,
                'created_at' => '2018-05-07 06:59:48',
                'updated_at' => '2018-05-07 06:59:48',
                'deleted_at' => NULL,
            ),
            6 => 
            array (
                'id' => 7,
                'application_id' => 2,
                'company_id' => 2,
                'created_at' => '2018-05-07 07:00:06',
                'updated_at' => '2018-05-07 07:00:06',
                'deleted_at' => NULL,
            ),
            7 => 
            array (
                'id' => 8,
                'application_id' => 3,
                'company_id' => 2,
                'created_at' => '2018-05-07 07:00:19',
                'updated_at' => '2018-05-07 07:00:19',
                'deleted_at' => NULL,
            ),
            8 => 
            array (
                'id' => 9,
                'application_id' => 4,
                'company_id' => 2,
                'created_at' => '2018-05-07 07:00:34',
                'updated_at' => '2018-05-07 07:00:34',
                'deleted_at' => NULL,
            ),
        ));
        
        
    }
}