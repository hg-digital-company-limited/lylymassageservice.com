<?php

namespace App\Livewire;

use Livewire\Component;
use Livewire\WithPagination;
use App\Models\Post;
use Illuminate\Http\Request;

class Search extends Component
{
    use WithPagination;

    public $query;

    public function mount(Request $request)
    {
        $this->query = $request->query('s', ''); // Lấy giá trị 's' từ URL
    }

    public function render()
    {
        $posts = Post::where('title', 'like', '%' . $this->query . '%')
            ->orWhere('short_description', 'like', '%' . $this->query . '%')
            ->paginate(10);

        return view('livewire.search', [
            'posts' => $posts,
        ]);
    }

}
