<?php

namespace App\Http\Controllers\Admin;

use App\Model\Cart;
use App\Model\Order;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class AdminController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth:adminApi');
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('admin.dashboard');
    }

    public function order(){
        $orders = Order::orderBy('id','desc')->get();
        return view('admin.order.list',compact('orders'));
    }
    public function product($id){

        $products = Cart::where('order_id',$id)->get();
        return view('admin.order.product',compact('products'));
    }

}
