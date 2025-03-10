<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePostsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('posts', function (Blueprint $table) {
            $table->id(); // Tạo trường id tự động tăng
            $table->string('title'); // Tiêu đề bài viết
            $table->string('slug')->unique(); // Slug bài viết
            $table->text('short_description'); // Mô tả ngắn
            $table->longText('long_description'); // Mô tả dài
            $table->string('banner')->nullable(); // Đường dẫn đến banner (có thể null)
            $table->foreignId('category_id')->nullable()->constrained('categories')->onDelete('cascade'); // Khóa ngoại đến bảng categories
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
        Schema::dropIfExists('posts');
    }
}
