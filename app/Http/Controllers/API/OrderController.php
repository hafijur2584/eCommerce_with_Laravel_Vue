<?php

namespace App\Http\Controllers\API;

use App\Http\Resources\Order\OrderResource;
use App\Model\Order;
use App\Model\Cart;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;

class OrderController extends Controller
{
    // public function __construct()
    // {
    //     $this->middleware('auth:api');
    // }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return Cart::totalCarts();
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request,[
            'name' => 'required',
             'email' => 'required',
             'phone_no' => 'required',
             'shipping_address' => 'required',
             'payment' => 'required',
 
         ]);

         $order = new Order();
         $order->user_id = auth('api')->user()->id;
         $order->name = $request->name;
         $order->email = $request->email;
         $order->phone_no = $request->phone_no;
         $order->invoice_id = 'PS'.time();
         $order->total_price = $request->total_price;
         $order->shipping_address = $request->shipping_address;
         $order->payment = $request->payment;
         $order->save();
         foreach (Cart::totalCarts() as $cart){
             $cart->order_id = $order->id;
             $cart->save();
         }
    }

    public function invoice(){

        $order = Order::where('user_id',auth('api')->user()->id)->orderBy('id','DESC')->first();
        if (is_null($order)){
            return $order;
        }else{
            $products = Cart::where('user_id',auth('api')->user()->id)->where('order_id',$order->id)->get();

            return [
                $order,$products
            ];
        }

    }
}
