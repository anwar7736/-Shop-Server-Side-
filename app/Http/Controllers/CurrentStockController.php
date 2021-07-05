<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\CurrentStockModel;

class CurrentStockController extends Controller
{
    function CurrentStockReport()
    {
        $result = CurrentStockModel::all();
    	$sum = CurrentStockModel::sum('total_price');
    	return array($result, $sum);
    }
    function UpdateCurrentStock(Request $request)
    {
    	$id = $request->input('id');
    	$product_qty = $request->input('product_qty');
    	$unit_price = CurrentStockModel::where('id', $id)->get();
    	$total_price = $unit_price[0]['product_price']*$product_qty;
    	$result = CurrentStockModel::where('id', $id)->update([
    		'product_qty'=>$product_qty,
    		'total_price'=>$total_price
    	]);
    	return $result;
    }
}
