<?php

namespace App\Http\Controllers;

use App\Model\Product;
use Illuminate\Http\Request;

class WellcomeController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $products = Product::take(8)->get();
        return view('welcome')->with('products',$products);
    }


}
