<?php

namespace App\Http\Controllers;

use App\Models\CartModel;
use App\Models\TransactionModel;
use App\Models\CurrentStockModel;
use Illuminate\Http\Request;
use DB;
class TransactionController extends Controller
{

    function ConfirmSale(Request $request){
        $cartInsertDeleteResult="";

        $last_inserted = TransactionModel::orderBy('id', 'desc')->first();
       
        $cartList =  DB::table('cart_list')
                    ->join('current_stock', 'cart_list.product_code', 'current_stock.product_code')
                    ->select('cart_list.*', 'current_stock.*')
                    ->get();

       foreach($cartList as $cart)
       {
        $newQty = $cart->product_qty - $cart->qty;
        $totalPrice = $cart->product_price * $newQty;
        if($newQty < 0)
        {
            return $cart->product_name.' '.$cart->product_qty. ' pcs available';
        }
        else{
            $stockUpdate = CurrentStockModel::where('product_code', $cart->product_code)
                            ->update([
                                'product_qty' => $newQty,
                                'total_price' => $totalPrice,
                            ]);

            if($stockUpdate==1)
            {
                    $resultInsert=  TransactionModel::insert([
                    "invoice_no"=>$cart->invoice_no,
                    "invoice_date"=>$cart->invoice_date,
                    "product_code"=>$cart->product_code,
                    "product_name"=>$cart->product_name,
                    "product_qty"=>$cart->qty,
                    "product_unit_price"=>$cart->product_unit_price,
                    "product_total_price"=>$cart->product_total_price,
                    "seller_name"=>$cart->seller_name,
                    "order_id"=>$last_inserted->order_id+1,
                    "product_icon"=>$cart->product_icon, 

                    ]);

             if($resultInsert==1)
             {
                $deleteRow = CartModel::where('product_code', $cart->product_code)->delete();

                if($deleteRow==1)
                {
                    $cartInsertDeleteResult = 1;
                }
                else
                {
                 $cartInsertDeleteResult = 0;
                }
             }
            }
        }
       }
       return $cartInsertDeleteResult;

    }
    function Others()
    {
         $user_name = DB::table('cart_list')
                    ->join('user_list', 'cart_list.user_id', 'user_list.id')
                    ->get('user_list.fullname');
                    foreach($user_name as $name)
                    {
                         $user = $name->fullname;
                    }

        }
    


}
