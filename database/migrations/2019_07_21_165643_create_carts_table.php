<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateCartsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('carts', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->unsignedInteger('product_id');
            $table->unsignedInteger('user_id')->nullable();
            $table->unsignedInteger('order_id')->nullable();
            $table->string('ip_address')->nullable();
            $table->integer('product_quantity')->default(1);
            $table->foreign('user_id')->references('users')->onDelete('cascade');
            $table->foreign('product_id')->references('products')->onDelete('cascade');
            $table->foreign('order_id')->references('orders')->onDelete('cascade');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('carts');
    }
}
