<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class TransactionTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('transaction_list',function (Blueprint $table){
            $table->bigIncrements('id');
            $table->string('invoice_no',200);
            $table->date('invoice_date',200);
            $table->string('product_code',200);
            $table->string('product_name',200);
            $table->bigInteger('product_qty');
            $table->bigInteger('product_unit_price');
            $table->bigInteger('product_total_price');
            $table->string('seller_name',200);
            $table->string('order_id',200);
            $table->string('product_icon',200);

        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('transaction_list');
    }
}
