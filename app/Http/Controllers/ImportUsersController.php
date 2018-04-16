<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Access\User\User;
use DB;

class ImportUsersController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(){
         $dbData=DB::connection('sqlsrvkenya')->select("SELECT * FROM tblEmployee INNER JOIN tblEmployee_Contact ON tblEmployee_Contact.Emp_Id=tblEmployee.Emp_Id");

            $results=$this->getUnique($dbData);
         //   echo json_encode($results);
         if($this->insert($results)){
            return redirect()->back();
         }else{
            return redirect()->back();
         }

    }

    public function insert($results){
             foreach ($results as $result){
            $user = new User();
            $user->email=$result->Emp_WorkEmail;
            $user->password=bcrypt('Qwerty!1234');
            $user->first_name=$result->Emp_Name;
            //$user->role_id='user';
            $user->save();
        }
        return true;
            }

    public function getUnique($employees){

        $unique=array();
        foreach ($employees as $key => $employee) {
                    $data=User::where('email',$employee->Emp_WorkEmail)->first();
                    if(count($data)==0){
                                array_push($unique,$employee);
                    }
        }
        return $unique;
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
