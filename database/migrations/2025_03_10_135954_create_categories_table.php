<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCategoriesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('categories', function (Blueprint $table) {
            $table->id(); // Tạo trường id tự động tăng
            $table->string('name'); // Tên danh mục
            $table->string('slug')->unique(); // Slug danh mục
            $table->foreignId('parent_id')->nullable()->constrained('categories')->onDelete('cascade'); // Khóa ngoại đến danh mục cha
            $table->timestamps(); // Thêm trường created_at và updated_at
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('categories');
    }
}
