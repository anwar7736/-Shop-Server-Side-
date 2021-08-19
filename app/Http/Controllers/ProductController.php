<?php

namespace App\Http\Controllers;

use App\Models\CategoryModel;
use App\Models\CurrentStockModel;
use App\Models\CartModel;
use App\Models\ProductModel;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class ProductController extends Controller
{
    function AddProduct(Request $request){
        $product_name= $request->input('product_name');
        $product_code='';
        $last_product = ProductModel::orderBy('id', 'desc')->first();
        if($last_product==true)
        {
            $product_code = $last_product->product_code+1;
        }

        else
        {
            $product_code = '12412110';
        }
        
        $product_price=  $request->input('product_price');
        $product_category= $request->input('product_category');
        $product_remarks= $request->input('product_remarks');
        $image= $request->file('product_icon');
        $cat_code = CategoryModel::where('cat_name', $product_category)->first();
        $countProduct = ProductModel::where('product_name', $product_name)->count();
        if($countProduct===0)
        {
             $product_icon= $image->store('public');
             $img_name = explode('/', $product_icon)[1];
             $image_path = 'https://'.$_SERVER['HTTP_HOST'].'/storage/app/public/'.$img_name;

             $result=ProductModel::insert([
             "product_name"=>$product_name,
             "product_code"=>$product_code,
             "cat_code"=>$cat_code['cat_code'],
             "product_icon"=> $image_path,
             "product_price"=>$product_price,
             "product_category"=>$product_category,
             "product_remarks"=>$product_remarks
        ]);
        $result=CurrentStockModel::insert([
             "product_name"=>$product_name,
             "product_code"=>$product_code,
             "cat_code"=>$cat_code['cat_code'],
             "product_icon"=>$image_path,
             "product_price"=>$product_price,
             "product_qty"=>'0',
             "total_price"=>'0',
             "product_category"=>$product_category,
             "product_remarks"=>$product_remarks
         ]);
        return $result;
        }
        else{
            return "Product name already exists";
        }
       
    }

    function DeleteProduct(Request $request){
        $id= $request->id;
        $products= ProductModel::Where('id',$id)->get();
        $product_code= $products[0]['product_code'];
        $imageURL = $products[0]['product_icon'];
        $imageName = explode('/', $imageURL)[4];
        Storage::delete('public/'.$imageName);
        $result=ProductModel::Where('product_code', $product_code)->delete();
        $result=CurrentStockModel::Where('product_code', $product_code)->delete();
        $result=CartModel::Where('product_code', $product_code)->delete();
        return  $result;
    }

    function SelectProduct(){
        $result= ProductModel::all();
        return $result;
    }


    function getProduct(Request $request){
        $code= $request->id;
        $result= ProductModel::Where('product_code',$code)->first();
        return $result;
    }
	function SelectProductByCategory(Request $request){
        $Category= $request->Category;
        $result= ProductModel::Where('product_category',$Category)->get();
        return $result;
    }

    function UpdateProduct(Request $request){
        $code= $request->input('id');
        $image= $request->file('product_icon');
        $product_name= $request->input('product_name');
        $product_price=  $request->input('product_price');
        $product_category= $request->input('product_category');
        $cat_code = CategoryModel::where('cat_name', $product_category)->get('cat_code');
        $product_remarks= $request->input('product_remarks');
        $current_stock_product = CurrentStockModel::where('product_code', $code)->get();
        $total_price = $current_stock_product[0]['product_qty'] * $product_price;
        $cart_list_product = CartModel::where('product_code', $code)->get();

        $countProduct = ProductModel::where('product_name', $product_name)->where('product_code', $code)->count();
        $countTotal =   ProductModel::where('product_name', $product_name)->count();

        if($countProduct===1 || $countTotal===0)
        {
            if(empty($image))
            {
                $result= ProductModel::Where('product_code', $code)->update([
                "product_name"=>$product_name,
                "product_price"=>$product_price,
                "product_category"=>$product_category,
                "cat_code"=>$cat_code[0]['cat_code'],
                "product_remarks"=>$product_remarks
                ]); 

                $result= CurrentStockModel::Where('product_code', $code)->update([
                "product_name"=>$product_name,
                "product_price"=>$product_price,
                "total_price"=>$total_price,
                "product_category"=>$product_category,
                "cat_code"=>$cat_code[0]['cat_code'],
                "product_remarks"=>$product_remarks
                ]); 

                if(count($cart_list_product) > 0)
                {
                    $cart_total_price = $cart_list_product[0]['qty'] * $product_price;
                     $result = CartModel::where('product_code', $code)->update([
                     "product_name"=>$product_name,
                     "product_unit_price"=>$product_price,
                     "product_total_price"=>$cart_total_price,
                    ]);

                 }

                if($result==true || $result==false)
				  {	
					return 1;
				  }
            }
            else{
                $products = ProductModel::where('product_code', $code)->get();
                $imageURL = $products[0]['product_icon'];
                $imageName = explode('/', $imageURL)[4];
                Storage::delete('public/'.$imageName);
                $product_icon = $image->store('public');
                $imgLoc = explode('/', $product_icon)[1];
                $image_path = 'https://'.$_SERVER['HTTP_HOST'].'/storage/app/public/'. $imgLoc;
                $result = ProductModel::where('product_code', $code)->update([
                    "product_name"=>$product_name,
                    "product_icon"=>$image_path,
                    "product_price"=>$product_price,
                    "product_category"=>$product_category,
                    "cat_code"=>$cat_code[0]['cat_code'],
                    "product_remarks"=>$product_remarks,
                ]);

                $result = CurrentStockModel::where('product_code', $code)->update([
                    "product_name"=>$product_name,
                    "product_icon"=>$image_path,
                    "product_price"=>$product_price,
                    "total_price"=>$total_price,
                    "product_category"=>$product_category,
                    "cat_code"=>$cat_code[0]['cat_code'],
                    "product_remarks"=>$product_remarks,
                ]); 
                if(count($cart_list_product) > 0)
                {
                    $cart_total_price = $cart_list_product[0]['qty'] * $product_price;
                    $result = CartModel::where('product_code', $code)->update([
                        "product_name"=>$product_name,
                        "product_icon"=>$image_path,
                        "product_unit_price"=>$product_price,
                        "product_total_price"=>$cart_total_price
                    ]);
                }

				 if($result==true || $result==false)
				  {	
					return 1;
				  }
            }
        }
        else{
             return "Product name already exists";
        }

      }

}
