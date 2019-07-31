<?php

namespace App\Http\Controllers;

use App\Model\Cart;
use App\Model\Order;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class OrderController extends Controller
{
    
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        // $carts = Cart::totalCarts();
        return view('user.checkout');
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
//        dd($request->all());
        $order = new Order();
        $order->user_id = Auth::user()->id;
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
        return redirect()->route('home')->with('success','Order successful. Admin review soon.');

    }

    public function invoice(){

        $order = Order::where('user_id',Auth::user()->id)->orderBy('id','DESC')->first();
        if (is_null($order)){
            return view('user.invoice',compact('order'));
        }else{
            $products = Cart::where('user_id',Auth::user()->id)->where('order_id',$order->id)->get();

            return view('user.invoice',compact('order','products'));
        }




    }



}
