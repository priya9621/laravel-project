<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Product;
use Illuminate\Support\Facades\Auth;

class ProductsController extends Controller
{
// Fetch all the products
   public function index()
   {
      $products = Product::orderBy('created_at','desc')->simplePaginate(4);
      return view('products')->with('products', $products);
   }

   // Fetch own products
   public function showOwnProducts()
   {
      $products = Product::where('user_id',Auth::id())->orderBy('created_at','desc')->get();
      return view('dashboard')->with('products', $products);
   }

  public function alldelete($id){
    $prodcts = Product::find($id)->delete();
    return redirect()->route('all.product');
  }


   public function store(Request $request)
   {
      $val =  $request->validate([
         'title'     => 'required',
         'desc-sm'   => 'required',
         'desc-full' => 'required',
         'price'     => 'required|numeric',
         'img'       => 'required|image'
      ], [
         'title.required' => 'Please enter a title',
         'desc-sm.required' => 'Please enter a short description',
         'desc-full.required' => 'Please enter a full description',
         'price.required' => 'Please enter the product price',
         'price.numeric' => 'The price should be a number',
         'img.required'  => 'Please upload an image',
         'img.image'  => 'Only image upload',
      ], [
         'desc-sm'   => 'short description',
         'desc-full' => 'full description',
         'img'       => 'product image'
      ]);


      // Upload the image
      $path = $request->file('img')->store('product_images');

      // Insert data into the products table
      $product = new Product();

      $product->title  = $request->input('title');
      $product->short_desc  = $request->input('desc-sm');
      $product->long_desc  = $request->input('desc-full');
      $product->price  = $request->input('price');
      $product->user_id  = Auth::id();
      $product->image_url  = $path;

      $product->save();

      return redirect('/product/' . $product->id);
      // return $request->img;
   }
// Fetch a product by id
   public function show($id){
      $product=Product::find($id);
      return view('product')->with('product',$product);
   }

   public function edit($id)
   {
    $product = Product::find($id);
    return view('edit')->with('product',$product);
   }
 
   public function update(Request $request,$id)
   {
   //   return  $request->input('desc-sm');
    $request->validate([
       'price'=>'numeric'
    ]);
 
    $product = Product::find($id);
 
    if($request->hasfile('img'))
    {
       $path=$request->file('img')->store('product_images');
    }
   
   if(!empty($request->input('title')))
   {
    $product->title=$request->input('title');
   }

   if(!empty($request->input('desc-sm')))
   {
    $product->short_desc=$request->input('desc-sm');
   }
 
   if(!empty($request->input('desc-full')))
   {
    $product->long_desc=$request->input('desc-full');
   }
 
   if(!empty($request->input('price')))
   {
    $product->price=$request->input('price');
   }
 
   $product->save();

   return redirect('/product/'.$product->id);
    
   }
   
}
