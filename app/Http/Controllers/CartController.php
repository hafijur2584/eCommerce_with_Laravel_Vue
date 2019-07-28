<?php

namespace App\Http\Controllers;

use App\Model\Cart;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class CartController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     *
     */
    public function __construct()
    {
        $this->middleware('auth');
    }
    public function index()
    {
        $carts = Cart::totalCarts();
        return view('user.cart',compact('carts'));
    }


    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $product = Product::where('id',$request->product_id)->first()->stock;

        $this->validate($request,[
           'product_id' => 'required'
        ],
        [
            'product_id.required' => 'please give a product'
        ]);
        $carts = Cart::where('user_id',Auth::id())->where('product_id',$request->product_id)->where('order_id',null)->first();
        if (!is_null($carts)){
            $carts->increment('product_quantity');
        }
        else{
            $cart = new Cart();
            $cart->user_id = Auth::id();
            $cart->product_id = $request->product_id;
            $cart->product_quantity = $request->product_quantity;
            $cart->save();
        }


        return redirect()->back()->with('success','Product added to cart successfully!');



    }

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
        $cart = Cart::find($id);
        if (!is_null($cart)){
            $cart->delete();
        }else{
            return redirect()->back();
        }

        return redirect()->route('cart')->with('success','Product remove from cart successfully!');

    }
}
