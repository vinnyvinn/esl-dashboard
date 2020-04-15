<?php

use Illuminate\Database\Seeder;

class UsersTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {

        \DB::table('users')->delete();
        \DB::table('users')->insert(array (
            0 => 
             array (
                'id' => 1,
                'first_name' => 'Viral',
                'last_name' => 'Solani',
                'email' => 'admin@admin.com',
                'password' => bcrypt('Qwerty123!'),
                'status' => 1,
                'confirmation_code' => '606435e4cce265ad02a7bd72a710a296',
                'confirmed' => 1,
                'is_term_accept' => 0,
                'remember_token' => 'fhs92Sz8X8TEBfIRmyhs826emfrnHXMhT0eeQGonOR8G9V2BOCx8dLUSATWT',
                'created_by' => 1,
                'updated_by' => NULL,
                'created_at' => '2018-05-05 11:34:46',
                'updated_at' => '2018-05-05 11:34:46',
                'deleted_at' => NULL,
            ),
            1 => 
            array (
                'id' => 2,
                'first_name' => 'Vipul',
                'last_name' => 'Basapati',
                'email' => 'executive@executive.com',
                'password' => bcrypt('Qwerty123!'),
                'status' => 1,
                'confirmation_code' => 'e5a45ccd64bf0e11096e6e89a4c29d96',
                'confirmed' => 1,
                'is_term_accept' => 0,
                'remember_token' => NULL,
                'created_by' => 1,
                'updated_by' => NULL,
                'created_at' => '2018-05-05 11:34:46',
                'updated_at' => '2018-05-05 11:34:46',
                'deleted_at' => NULL,
            ),
            2 => 
            array (
                'id' => 3,
                'first_name' => 'User',
                'last_name' => 'Test',
                'email' => 'user@user.com',
                'password' => bcrypt('Qwerty123!'),
                'status' => 1,
                'confirmation_code' => '1fb164f7af267feb3a9785d644dd815d',
                'confirmed' => 1,
                'is_term_accept' => 0,
                'remember_token' => NULL,
                'created_by' => 1,
                'updated_by' => NULL,
                'created_at' => '2018-05-05 11:34:46',
                'updated_at' => '2018-05-05 11:34:46',
                'deleted_at' => NULL,
            ),
        ));
        
        
    }
}