<?php

namespace App\Http\Controllers\Admin;

use App\Http\Requests\ProductRequest;
use App\Model\Product;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Image;

class ProductController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth:admin');
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('admin.products');
        // return Product::orderBy('id','desc')->paginate(6);
    }
    public function adminProducts(){
        return Product::orderBy('id','desc')->paginate(6);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.product.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(ProductRequest $request)
    {
        $product = new Product;
        $product->name           =  $request->name;
        $product->slug           =  $request->slug;
        $product->model          =  $request->model;
        $product->brand          =  $request->brand;
        $product->color          =  $request->color;
        $product->price          =  $request->price;
        $product->stock          =  $request->stock;
        $product->description    =  $request->description;
        $product->details        =  $request->details;

        $currentImages = $product->images;
        if($request->images != $currentImages){

            $name = time().'.'.explode('/', explode(':',substr($request->images, 0,strpos($request->images, ';')))[1])[1];

            Image::make($request->images)->save(public_path('images/').$name);

            $product->images =$name;

        }

        $product->save();

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
        $product = Product::where('id',$id)->firstOrfail();
        $this->validate($request,[
            'name' => 'required|string|max:191',
            'slug' => 'required|string|max:191|unique:products,slug,'.$product->id,
            'model' => 'required|string|max:191',
            'brand' => 'required|string|max:191',
            'color' => 'required|string|max:191',
            'price' => 'required|numeric',
            'stock' => 'required|numeric',
            'description' => 'required',
            'details' => 'required'
        ]);
        
        
        
        $product->name           =  $request->name;
        $product->slug           =  $request->slug;
        $product->model          =  $request->model;
        $product->brand          =  $request->brand;
        $product->color          =  $request->color;
        $product->price          =  $request->price;
        $product->stock          =  $request->stock;
        $product->description    =  $request->description;
        $product->details        =  $request->details;

        $currentImages = $product->images;
        if($request->images != $currentImages){

            $name = time().'.'.explode('/', explode(':',substr($request->images, 0,strpos($request->images, ';')))[1])[1];

            Image::make($request->images)->save(public_path('images/').$name);

            $product->images =$name;

            $userImages = public_path('images/').$currentImages;
            if(file_exists($userImages)){
                @unlink($userImages);
            }

        }

        $product->save();


    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $product = Product::findOrfail($id);
        $product->delete();
        return ["message","Product Deleted"];
    }
}
