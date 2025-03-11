<?php

namespace App\Livewire;

use Livewire\Component;
use App\Models\Post as PostModel;

class Post extends Component
{
    public $post;
    public $random5posts;
    public $relatedPosts;
    public function mount($slug)
    {
        $this->post = PostModel::where('slug', $slug)->first();
        if (!$this->post) {
            abort(404);
        }
        $this->random5posts = PostModel::inRandomOrder()->limit(5)->get();
        $this->relatedPosts = PostModel::where('category_id', $this->post->category_id)->get();
    }
    public function render()
    {
        return view('livewire.post');
    }
}
