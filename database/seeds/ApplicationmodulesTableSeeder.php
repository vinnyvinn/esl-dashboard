<?php

use Illuminate\Database\Seeder;

class ApplicationmodulesTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('applicationmodules')->delete();
        
        \DB::table('applicationmodules')->insert(array (
            0 => 
            array (
                'id' => 1,
                'app_name' => 'Human Resource',
                'app_url' => 'http://esl.dnsalias.com/esl/webforms/index.aspx',
                'app_icon' => 'http://esldashboard.dom/img/frontend/hr.png',
                'created_at' => '2018-05-05 12:38:13',
                'updated_at' => '2018-05-07 11:46:21',
                'deleted_at' => NULL,
            ),
            1 => 
            array (
                'id' => 2,
                'app_name' => 'Imprest',
                'app_url' => 'http://esl-imprest.pro-kazi.com/',
                'app_icon' => 'http://esldashboard.dom/img/frontend/impre.png',
                'created_at' => '2018-05-05 12:38:47',
                'updated_at' => '2018-05-07 11:46:36',
                'deleted_at' => NULL,
            ),
            2 => 
            array (
                'id' => 3,
                'app_name' => 'Pro-Kazi',
                'app_url' => 'http://esl.dnsalias.com:8080/',
                'app_icon' => 'http://esldashboard.dom/img/frontend/prok.png',
                'created_at' => '2018-05-05 12:39:43',
                'updated_at' => '2018-05-07 11:46:49',
                'deleted_at' => NULL,
            ),
            3 => 
            array (
                'id' => 4,
                'app_name' => 'Operations',
                'app_url' => '#',
                'app_icon' => 'http://esldashboard.dom/img/frontend/op2.png',
                'created_at' => '2018-05-05 12:40:15',
                'updated_at' => '2018-05-07 11:47:22',
                'deleted_at' => NULL,
            ),
            4 => 
            array (
                'id' => 5,
                'app_name' => 'Travel',
                'app_url' => 'http://esl.dnsalias.com/Travel/Forms/login.aspx',
                'app_icon' => 'http://esldashboard.dom/img/frontend/travel.png',
                'created_at' => '2018-05-05 12:40:56',
                'updated_at' => '2018-05-07 11:47:40',
                'deleted_at' => NULL,
            ),
            5 => 
            array (
                'id' => 6,
                'app_name' => 'ICT Help Desk',
                'app_url' => 'http://esl.dnsalias.com:8080/ict_reports/support_tickets',
                'app_icon' => 'http://esldashboard.dom/img/frontend/ict.png',
                'created_at' => '2018-05-07 11:49:07',
                'updated_at' => '2018-05-07 11:49:07',
                'deleted_at' => NULL,
            ),
        ));
        
        
    }
}