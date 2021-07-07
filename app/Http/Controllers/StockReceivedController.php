<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\CurrentStockModel;
use App\Models\CategoryModel;
use App\Models\StockReceivedModel;

class StockReceivedController extends Controller
{
    function StockReceived(Request $request){
    	$invoice_no = $request->input('invoice_no');
    	$product_name  = $request->input('product_name');
    	$product_code  = $request->input('product_code');
    	$product_category  = $request->input('product_category');
        $cat_code = CategoryModel::where('cat_name', $product_category)->get();
    	$product_qty = $request->input('product_qty');
    	$product_unit_price = $request->input('product_unit_price');
    	$product_icon = $request->input('product_icon');
    	date_default_timezone_set("Asia/Dhaka");
    	$received_date = date('Y-m-d');
    	$total_unit_price = $product_qty * $product_unit_price;
    	$isInsert = StockReceivedModel::where('product_code', $product_code)->where('received_date', $received_date)->first();

        $isStock = CurrentStockModel::where('product_code', $product_code)->first();
        $old_stock_qty = $isStock->product_qty;
        $new_stock_qty = $old_stock_qty + $product_qty;
        $total_stock_amount =$product_unit_price * $new_stock_qty;

    	if($isInsert)
    	{
    	$old_qty = $isInsert['product_qty'];
    	$unit_price = $isInsert['product_unit_price'];
    	$newQty = $old_qty + $product_qty;
    	$total_price = $unit_price * $newQty;
    	$result = StockReceivedModel::where('product_code', $product_code)->update([
    			'product_qty'=> $newQty,
    			'product_total_price'=> $total_price
    		]);

    		if($isStock)
    		{
    		$result = CurrentStockModel::where('product_code', $product_code)->update([
    			'product_qty'=> $new_stock_qty,
    			'total_price'=> $total_stock_amount
    		]);
    		}
    	}
    	else{

            if($product_qty==0)
            {
                return 0;
            }

            else{
    		$result = StockReceivedModel::insert([
    			'invoice_no'=> $invoice_no,
    			'received_date'=> $received_date,
    			'product_name'=> $product_name,
                'product_code'=> $product_code,
    			'cat_code'=>$cat_code[0]['cat_code'],
    			'product_category'=> $product_category,
    			'product_unit_price'=> $product_unit_price,	
    			'product_qty'=> $product_qty,
    			'product_total_price'=> $total_unit_price,
    			'product_icon'=> $product_icon,

    		]);

    		if($isStock==true)
    		{
    		$result = CurrentStockModel::where('product_code', $product_code)->update([
    			'product_qty'=> $new_stock_qty,
    			'total_price'=> $total_stock_amount
    		]);
    		}
            }
    		return $result;

    	}
    }
    function ReceivedAllStockData(){
        $result = StockReceivedModel::all();
    	$sum = StockReceivedModel::sum('product_total_price');
    	return array($result, $sum);
    }
    function ReportFilterByDate(Request $request){
    	$from_date = $request->input('from_date');
        $to_date   = $request->input('to_date');
        $result    = StockReceivedModel::whereBetween('received_date', array($from_date, $to_date))
        			 					->orderBy('id','desc')->get();
        $sum = StockReceivedModel::whereBetween('received_date', array($from_date, $to_date))->sum('product_total_price');
        return array($result, $sum);
    }
}
