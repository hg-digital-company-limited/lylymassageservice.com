<?php

namespace App\Livewire\Inc;

use Livewire\Component;
use App\Models\Category;

class Footer extends Component
{
    public $parentCategories;

    public function mount()
    {
        $this->parentCategories = Category::whereNull('parent_id')->get();
    }

    public function render()
    {
        return view('livewire.inc.footer', [
            'parentCategories' => $this->parentCategories,
        ]);
    }
}
