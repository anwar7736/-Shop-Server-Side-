<?php

namespace App\Http\Controllers;

use App\Models\CartModel;
use Illuminate\Http\Request;

class CartController extends Controller
{

    function CartAdd(Request $request){
        $invoice_no = rand(11111111,99999999);
        date_default_timezone_set("Asia/Dhaka");
        $invoice_date= date('Y-m-d');
        $product_name=$request->input('product_name');
        $product_qty=$request->input('product_qty');
        $user_id=$request->input('user_id');
        $product_unit_price=$request->input('product_unit_price');
        $seller_name=$request->input('seller_name');
        $image=$request->input('product_icon');
        $total_price=$product_unit_price * $product_qty;

        $isInsert = CartModel::where('product_name', $product_name)->where('user_id', $user_id)->count();

        if($isInsert===1)
        {
            $cart = CartModel::where('product_name', $product_name)->where('user_id', $user_id)->get();
            $newQuantity = $cart[0]['product_qty'] + $product_qty;
            $product_total_price = $product_unit_price * $newQuantity;
            $result=CartModel::where('product_name', $product_name)->where('user_id', $user_id)->update([
            "product_qty"=>$newQuantity,
            "product_total_price"=>$product_total_price
        ]);
        return $result;
        }
        else{
        //$product_icon = $image->store('images');

        $result=CartModel::insert([
            "invoice_no"=>$invoice_no,
            "invoice_date"=>$invoice_date,
            "product_name"=>$product_name,
            "product_qty"=>$product_qty,
            "product_unit_price"=>$product_unit_price,
            "product_total_price"=>$total_price,
            "seller_name"=>$seller_name,
            "user_id"=>$user_id,
            "product_icon"=>$image,
        ]);
        return $result;
     }

    }

    function CartItemPlus(Request $request){
        $id=$request->id;
        $cart = CartModel::where('id', $id)->get();
        $price=$cart[0]['product_unit_price'];
        $old_qty = $cart[0]['product_qty'];
        $newQuantity=$old_qty+1;
        $total_price=$newQuantity*$price;
        $result=CartModel::Where('id',$id)->update(['product_qty' => $newQuantity, 'product_total_price' => $total_price]);
        return $result;
    }

    function CartItemMinus(Request $request){
        $id=$request->id;
        $cart = CartModel::where('id', $id)->get();
        $price=$cart[0]['product_unit_price'];
        $old_qty = $cart[0]['product_qty'];
        $newQuantity=$old_qty-1;
        if($newQuantity<0)
        {
            return "Quantity will not be decreased";
        }
        else{
            $total_price=$newQuantity*$price;
            $result=CartModel::Where('id',$id)->update(['product_qty' => $newQuantity, 'product_total_price' => $total_price]);
            return $result;
        }
    }
    
    function RemoveCartList(Request $request){
        $id=$request->id;
        $result=CartModel::Where('id',$id)->delete();
        return $result;
    }

    function CartList(Request $request){
        $user_id=$request->user_id;
        $result=CartModel::Where('user_id',$user_id)->get();
        return $result;
    }
    function TotalOrderValue(Request $request){
        $user_id=$request->user_id;
        $result=CartModel::Where('user_id',$user_id)->sum('product_total_price');
        return $result;
    }
}
