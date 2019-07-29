<?php

namespace App\Http\Controllers\API;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\User;
use Illuminate\Support\Facades\Hash;
use Image;

class UserController extends Controller
{
    public function __construct(){

        $this->middleware('auth:api');
    }

    public function index()
    {
        return User::latest()->paginate(10);
    }

    public function store(Request $request)
    {
        $this->validate($request,[
            'name' => 'required|string|max:191',
            'username' => 'required|string|max:191|unique:users',
            'phone_no' => 'required|string|max:20|unique:users',
            'address' => 'required|string',
            'email' => 'required|string|email|max:100|unique:users',
            'password' => 'required|string|min:6|confirmed',
        ]);
        

        return User::create([
            'name' => $data['name'],
            'username' => $data['username'],
            'phone_no' => $data['phone_no'],
            'address' => $data['address'],
            'email' => $data['email'],
            'password' => Hash::make($data['password']),
        ]);
    }

    
    public function show($id)
    {
        //
    }

    public function profile()
    {
        return auth('api')->user();
    }
    public function updateProfile(Request $request){
        $user = auth('api')->user();
        $this->validate($request,[
            'name' => 'required|string|max:191',
            'username' => 'required|string|max:191|unique:users,username,'.$user->id,
            'phone_no' => 'required|string|max:20|unique:users,phone_no,'.$user->id,
            'address' => 'required|string',
            'email' => 'required|string|email|max:100|unique:users,email,'.$user->id,
            'password' => 'sometimes|min:6',
        ]);

        $user->name = $request->name;
        $user->username = $request->username;
        $user->email = $request->email;
        $user->phone_no = $request->phone_no;
        $user->address = $request->address;
        $user->password = Hash::make($request->password);
        


        $currentPhoto = $user->photo;
        if($request->photo != $currentPhoto){

            $name = time().'.'.explode('/', explode(':',substr($request->photo, 0,strpos($request->photo, ';')))[1])[1];

            Image::make($request->photo)->save(public_path('images/').$name);

            $user->photo =$name;
            
            $userPhoto = public_path('images/').$currentPhoto;
            if(file_exists($userPhoto)){
                @unlink($userPhoto);
            }

        }
        $user->save();
        
    }
   
    public function update(Request $request, $id)
    {
        $user = User::findOrfail($id);
        $this->validate($request,[
            'name' => 'required|string|max:191',
            'username' => 'required|string|max:191|unique:users,username,'.$user->id,
            'phone_no' => 'required|string|max:20|unique:users,phone_no,'.$user->id,
            'address' => 'required|string',
            'email' => 'required|string|email|max:100|unique:users,email,'.$user->id,
            'password' => 'sometimes|min:6',
        ]);
    }

    
    public function destroy($id)
    {
        $user = User::findOrfail($id);
        $user->delete();
    }
}
