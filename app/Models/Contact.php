<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Contact extends Model
{
    use HasFactory;

    protected $table = 'contacts'; // Tên bảng

    protected $fillable = [
        'name',   // Trường lưu tên
        'phone',  // Trường lưu số điện thoại
        'content' // Trường lưu nội dung
    ];
}
