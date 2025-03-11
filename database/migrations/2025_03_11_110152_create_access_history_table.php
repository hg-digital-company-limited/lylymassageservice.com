<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateAccessHistoryTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('access_history', function (Blueprint $table) {
            $table->id(); // Khóa chính tự động tăng
            $table->date('date'); // Trường để lưu ngày
            $table->integer('visit_count'); // Trường để lưu số lượt truy cập
            $table->timestamps(); // Các trường created_at và updated_at
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('access_history');
    }
}
