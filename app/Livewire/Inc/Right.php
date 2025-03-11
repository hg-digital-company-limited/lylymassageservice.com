<?php

namespace App\Livewire\Inc;

use Livewire\Component;
use App\Models\Post;

class Right extends Component
{
    public $randomPosts;
    public $randomPosts2;

    public function mount()
    {
        $this->randomPosts = Post::whereNotNull('category_id')
            ->inRandomOrder()
            ->limit(6)
            ->get();
        $this->randomPosts2 = Post::whereNull('category_id')
            ->inRandomOrder()
            ->limit(6)
            ->get();
    }

    public function render()
    {
        return view('livewire.inc.right', [
            'randomPosts' => $this->randomPosts,
        ]);
    }
}
