<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateStockDecreaseTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('stock_decrease', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('decrease_reason',200);
            $table->date('decrease_date',200);
            $table->string('product_name',200);
            $table->string('product_code',200);
            $table->string('cat_code',200);
            $table->string('product_category',200);
            $table->bigInteger('product_qty');
            $table->bigInteger('product_unit_price');
            $table->bigInteger('product_total_price');
            $table->string('product_icon',255);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('stock_decrease');
    }
}
