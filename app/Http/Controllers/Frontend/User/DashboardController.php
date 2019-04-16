<?php

namespace App\Http\Controllers\Frontend\User;

use App\Http\Controllers\Controller;
use App\Http\Requests\Frontend\User\DashboardViewRequest;
use DB;
use Carbon\Carbon;
use App\Models\Usercompany\Usercompany;
use App\Models\Company\Company;
use App\Models\Companyapp\Companyapp;
use App\Dashboard;
use App\Models\Applicationmodule\Applicationmodule;
use Illuminate\Support\Facades\Input;
use App\Models\Access\User\User;

/**
 * Class DashboardController.
 */
class DashboardController extends Controller
{

	 const MODEL = Usercompany::class;

    private $id;

    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function index(DashboardViewRequest $request, Company $company)
    {


    	$id = $this->getId();
        $company = Usercompany::find($id);


        $logged = \Auth::user()->id;
        $companies = DB::table('usercompanies')
            ->select(
                    'companies.*',
                    'users.first_name as user'
                )
            ->leftJoin('companies', 'usercompanies.company_id', '=', 'companies.id')

            ->leftJoin('users', 'usercompanies.user_id', '=', 'users.id')

//          ->whereNotNull('pallet_id', 'AND')
           ->where('usercompanies.user_id', '=', $logged)
            // ->where('flagged', '=', 0, 'AND')

            ->groupBy('usercompanies.id')
            ->get();


        return view('frontend.user.dashboard', (compact('companies', 'company')));


    }
     public function getId()
    {
        return $this->id;
    }
     public function show($id)
    {
        $company = Company::find($id);
        $usercompany = DB::table('usercompanies')->where('company_id', '=', $id)->get();
        return view('frontend.user.company', compact('usercompany'))->withCompany($usercompany, $company);

    }

    public function companyapps()

    {
      //  $id = $this->getId();
        $requested_company = Input::get('company_id');

       // $apps = Applicationmodule::find()->app_name;


        // $master = DB::table('companyapps', 'applicationmodules', 'company')
        // ->select('app_name')
        // ->where('companyapps.company_id', '=', $requested_company)
        // ->where ('applicationmodules.id = companyapps.application_id')
        //  ->groupBy('companyapps.id')
        //     ->get();



       $master = DB::select( DB::raw("select DISTINCT companyapps.id, application_id, company, app_name, app_url, app_icon, company_id
from companyapps
LEFT JOIN companies ON companyapps.company_id = companies.id
LEFT JOIN applicationmodules ON companyapps.application_id = applicationmodules.id
where companies.id = '$requested_company'  and applicationmodules.id = companyapps.application_id
group by companyapps.id"));



      // dd($master);

            return view('frontend.user.companyapps', compact('master'))->with('users',User::all());
    }

}
