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
        if ($this->category->parent_id) {
            $posts = Post::where('category_id', $this->category->id)->paginate(10);
            $posts = Post::where('category_id', $this->category->id)->paginate(10);
        } else {
            // Nếu không có danh mục cha, lấy bài viết của tất cả các danh mục con
            $posts = Post::whereIn('category_id', $this->category->children()->pluck('id'))->paginate(10);
        }

        return view('livewire.category', [
            'posts' => $posts,
            'title' => $this->category->name,
        ]);
    }

}
