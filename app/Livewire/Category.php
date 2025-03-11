<?php


namespace App\Livewire;

use Livewire\Component;
use Livewire\WithPagination;
use App\Models\Post;
use App\Models\Category as CategoryModel;

class Category extends Component
{
    use WithPagination;

    public $category;

    public function mount($slug)
    {
        // Lấy danh mục theo slug
        $this->category = CategoryModel::where('slug', $slug)->first();
        if (!$this->category) {
            abort(404);
        }
    }

    public function render()
    {
        $posts = $this->category->posts()->paginate(1);

        return view('livewire.category', [
            'posts' => $posts,
        ]);
    }

    public function updatingPage()
    {
        $this->resetPage();
    }
}
