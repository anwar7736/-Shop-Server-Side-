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

        $memo_no='';
        $last_inserted = TransactionModel::orderBy('id', 'desc')->first();
        if($last_inserted==true)
        {
            $memo_no = $last_inserted->memo_no+1;
        }
        else
        {
            $memo_no = '1010';
        }
       
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
            return $cart->product_name.' '.$cart->product_qty. ' pcs available in stock';

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
                    "product_total_price"=>$cart->product_unit_price * $cart->qty,
                    "seller_name"=>$cart->seller_name,
                    "memo_no"=>$memo_no,
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
                 $last_memo = TransactionModel::orderBy('id', 'desc')->first();
                 $memo_no    = $last_memo->memo_no; 
                }
             }
            }
        }
       }
       return $cartInsertDeleteResult;

    }
    function GetInvoiceList(Request $request)
    {
         $result = TransactionModel::orderBy('memo_no', 'desc')
                                 ->groupBy('memo_no')
                                 ->limit(30)
                                 ->get('memo_no');
        return $result;
        
    }
    function GetOrderDetails(Request $request)
    {
         $memo_no = $request->memo_no;
         $result=  TransactionModel::where('memo_no',$memo_no)->get();
         $sum=  TransactionModel::where('memo_no', $memo_no)->sum('product_total_price');
         return  array($result, $sum);
        
    }

    function DeleteSalesMemo(Request $req)
    {
        $memo_no = $req->input('memo_no');
        $result = TransactionModel::where('memo_no', $memo_no)->delete();
        return $result;
    }
    
    function DeleteSalesInvoice(Request $req)
    {
        $invoice_no = $req->input('invoice_no');
        $result = TransactionModel::where('invoice_no', $invoice_no)->delete();
        return $result;
    }
    
    function UpdateMemoProductQty(Request $req)
    {
        
    }
    


}
