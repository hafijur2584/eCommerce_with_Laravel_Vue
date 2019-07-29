<?php

namespace App\Http\Controllers\API;

use App\Http\Resources\Cart\CartCollection;
use App\Http\Resources\Cart\CartResource;
use App\Model\Cart;
use App\Model\Product;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;

class CartController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth:api');
    }

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
        // $this->validate($request,[
        //     'product_id' => 'required'
        // ]);

        $product = Product::where('id',$request->product_id)->first()->stock;

        $this->validate($request,[
           'product_id' => 'required'
        ],
        [
            'product_id.required' => 'please give a product'
        ]);
        $carts = Cart::where('user_id',auth('api')->id())->where('product_id',$request->product_id)->where('order_id',null)->first();
        if (!is_null($carts)){
            $carts->increment('product_quantity');
        }
        else{
            $cart = new Cart();
            $cart->user_id = auth('api')->id();
            $cart->product_id = $request->product_id;
            $cart->product_quantity = $request->product_quantity;
            $cart->save();
        }

    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(Cart $cart)
    {
        return $cart;
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
    }
}
