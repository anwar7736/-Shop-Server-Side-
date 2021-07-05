<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\CurrentStockModel;
use App\Models\StockDecreaseModel;

class StockDecreaseController extends Controller
{
    function StockDecrease(Request $request){
    	$decrease_reason = $request->input('decrease_reason');
    	$product_name  = $request->input('product_name');
    	$product_code  = $request->input('product_code');
    	$product_category  = $request->input('product_category');
    	$product_qty = $request->input('product_qty');
    	$product_unit_price = $request->input('product_unit_price');
    	$product_icon = $request->input('product_icon');
    	date_default_timezone_set("Asia/Dhaka");
    	$decrease_date = date('Y-m-d');
    	$total_unit_price = $product_qty * $product_unit_price;

    	$isStock = CurrentStockModel::where('product_code', $product_code)->first();
    	$old_stock_qty = $isStock['product_qty'];
    	$new_stock_qty = $old_stock_qty - $product_qty;
    	$total_stock_amount =$product_unit_price * $new_stock_qty;

    	$isInsert = StockDecreaseModel::where('product_code', $product_code)->where('decrease_date', $decrease_date)->first();
    	if($isInsert)
    	{
    	$old_qty = $isInsert['product_qty'];
    	$unit_price = $isInsert['product_unit_price'];
    	$newQty = $old_qty + $product_qty;
    	$total_price = $unit_price * $newQty;
    		$result = StockDecreaseModel::where('product_code', $product_code)->update([
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
    		
    		if($product_qty==0 || $product_qty > $old_stock_qty)
    		{
    			return;
    		}

    		else{
    		$result = StockDecreaseModel::insert([
    			'decrease_reason'=> $decrease_reason,
    			'decrease_date'=> $decrease_date,
    			'product_name'=> $product_name,
    			'product_code'=> $product_code,
    			'product_category'=> $product_category,
    			'product_unit_price'=> $product_unit_price,	
    			'product_qty'=> $product_qty,
    			'product_total_price'=> $total_unit_price,
    			'product_icon'=> $product_icon,

    		]);
    		if($isStock)
    		{
    		$total_stock_amount =$product_unit_price * $new_stock_qty;
    		$result = CurrentStockModel::where('product_code', $product_code)->update([
    			'product_qty'=> $new_stock_qty,
    			'total_price'=> $total_stock_amount
    		]);
    		}
    		}

    		return $result;

    	}
    }

    function DecreaseAllStockData(){
    	$result = StockDecreaseModel::all();
        $sum = StockDecreaseModel::sum('product_total_price');
        return array($result, $sum);
    }

    function DecreaseReportFilterByDate(Request $request){
    	$from_date = $request->input('from_date');
        $to_date   = $request->input('to_date');
        $result    = StockDecreaseModel::whereBetween('decrease_date', array($from_date, $to_date))
        			 					->orderBy('id','desc')->get();
        $sum = StockDecreaseModel::whereBetween('decrease_date', array($from_date, $to_date))->sum('product_total_price');
        return array($result, $sum);
    }
}
