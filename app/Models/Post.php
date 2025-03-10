<?php


namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    use HasFactory;

    protected $fillable = ['title', 'slug', 'short_description', 'long_description', 'banner', 'category_id'];

    public function category()
    {
        return $this->belongsTo(Category::class);
    }
}
