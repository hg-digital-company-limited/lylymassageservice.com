<?php

namespace App\Livewire\Inc;

use App\Models\Category;
use Livewire\Component;

class Header extends Component
{
    public $categories;

    public function mount()
    {
        // Lấy tất cả các danh mục không có danh mục cha
        $this->categories = Category::with('children.posts')->whereNull('parent_id')->get();
    }

    public function render()
    {
        return view('livewire.inc.header', [
            'categories' => $this->categories,
        ]);
    }
}
