<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateBookingsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('bookings', function (Blueprint $table) {
            $table->id();
            $table->integer('site_id');
            $table->string('site_name')->nullable();
            $table->integer('price')->nullable();
            $table->integer('booked_by');
            $table->date('depature_date')->nullable();
            $table->time('depature_time')->nullable();
            $table->integer('status')->nullable();
            $table->integer('phone')->nullable();
            $table->integer('station')->nullable();
            $table->integer('spervisor');
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
        Schema::dropIfExists('bookings');
    }
}
