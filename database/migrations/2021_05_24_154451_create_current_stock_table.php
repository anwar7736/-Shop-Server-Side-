<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCurrentStockTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('current_stock', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('product_name',200);
            $table->string('product_code',200);
            $table->string('cat_code',200);
            $table->string('product_icon',200);
            $table->string('product_category',200);
            $table->bigInteger('product_price');
            $table->bigInteger('product_qty');
            $table->bigInteger('total_price');
            $table->string('product_remarks',200);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('current_stock');
    }
}
