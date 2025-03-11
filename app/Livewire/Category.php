<?php


namespace App\Livewire;

use Livewire\Component;
use App\Models\Post;
use App\Models\Category as CategoryModel;
use Livewire\WithPagination;

class Category extends Component
{
    use WithPagination;

    public $category;
    public $title;
    public function mount($slug)
    {
        // Lấy danh mục theo slug
        $this->category = CategoryModel::where('slug', $slug)->first();
        if (!$this->category) {
            abort(404);
        }
        $this->title = $this->category->name;
    }

    public function render()
    {
        if ($this->category->parent_id == null) {
            // Check if the category has children
            $children = $this->category->children()->pluck('id');
            if ($children->isEmpty()) {
                // If there are no children, get posts from the current category only
                $posts = Post::where('category_id', $this->category->id)->paginate(10);
            } else {
                // If there are children, get posts from all child categories
                $posts = Post::whereIn('category_id', $children)->paginate(10);
            }
        } else {
            // If the category has a parent, get posts from the current category
            $posts = Post::where('category_id', $this->category->id)->paginate(10);
        }

        return view('livewire.category', [
            'posts' => $posts,
            'title' => $this->category->name,
        ]);
    }

}
