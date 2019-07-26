<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Auth;

class Cart extends Model
{
    public $fillable = [
        'product_id',
        'user_id',
        'order_id',
        'ip_address',
        'product_quantity'
    ];

    public function user(){
        return $this->belongsTo(User::class);
    }
    public function order(){
        return $this->belongsTo(Order::class);
    }
    public function product(){
        return $this->belongsTo(Product::class);
    }

    public static function totalItem(){
        if (Auth::check()){
            $carts = Cart::where('order_id',null)->where('user_id',Auth::id())->get();
        }
        else{
            $carts = Cart::where('ip_address',request()->ip())->where('order_id',null)->get();
        }
        $totalItem = 0;
        foreach ($carts as $cart){
            $totalItem += $cart->product_quantity;
        }
        return $totalItem;
    }

    public static function totalCarts(){
        if (Auth::check()){
            $carts = Cart::where('user_id',Auth::id())->where('order_id',null)->get();
            return $carts;
        }

    }
}
