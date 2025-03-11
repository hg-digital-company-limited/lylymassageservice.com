<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class AccessHistory extends Model
{
    use HasFactory;

    protected $table = 'access_history'; // Tên bảng

    protected $fillable = [
        'date', // Trường ngày
        'visit_count', // Trường số lượt truy cập
    ];
}
