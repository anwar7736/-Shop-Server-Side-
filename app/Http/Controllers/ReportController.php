<?php

namespace App\Http\Controllers;

use App\Models\TransactionModel;
use Illuminate\Http\Request;

class ReportController extends Controller
{


    function TransactionList(){
        $result=  TransactionModel::orderBy('id','desc')->get();
        $sum=  TransactionModel::sum('product_total_price');
        return  array($result, $sum);
    }

    function TransactionListByDate(Request $request){
        $from_date = $request->input('from_date');
        $to_date   = $request->input('to_date');
        $result    = TransactionModel::whereBetween('invoice_date', array($from_date, $to_date))
        			 ->orderBy('id','desc')->get();
        $sum=  TransactionModel::whereBetween('invoice_date', array($from_date, $to_date))->sum('product_total_price');
        return  array($result, $sum);
    }




}
