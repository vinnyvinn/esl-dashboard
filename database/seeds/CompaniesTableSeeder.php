<?php

use Illuminate\Database\Seeder;

class CompaniesTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('companies')->delete();
        
        \DB::table('companies')->insert(array (
            0 => 
            array (
                'id' => 1,
            'company' => 'Express Shipping & Logistics (E.A) Limited',
                'created_at' => '2018-05-05 12:41:37',
                'updated_at' => '2018-05-05 12:41:37',
                'deleted_at' => NULL,
            ),
            1 => 
            array (
                'id' => 2,
                'company' => 'Manuchar Kenya Limited',
                'created_at' => '2018-05-05 12:41:58',
                'updated_at' => '2018-05-05 12:41:58',
                'deleted_at' => NULL,
            ),
            2 => 
            array (
                'id' => 3,
                'company' => 'Freightwell Express Limited',
                'created_at' => '2018-05-05 12:42:52',
                'updated_at' => '2018-05-05 12:42:52',
                'deleted_at' => NULL,
            ),
            3 => 
            array (
                'id' => 4,
                'company' => 'Express Chartering and Shipping Limited',
                'created_at' => '2018-05-05 12:43:11',
                'updated_at' => '2018-05-05 12:43:11',
                'deleted_at' => NULL,
            ),
        ));
        
        
    }
}