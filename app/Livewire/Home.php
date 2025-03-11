<?php

namespace App\Livewire;

use Livewire\Component;
use App\Models\Post as PostModel;
class Home extends Component
{
    public $get5postslastest;
    public $get5postslastest1;
    public $get5postslastest2;
    public $get5postslastest3;
    public $title = 'Trang chủ - Ly Ly Massage';
    public function mount()
    {
        $this->get5postslastest = PostModel::where('category_id', null)->inRandomOrder()->limit(1)->get();
        $this->get5postslastest1 = PostModel::where('category_id', null)->inRandomOrder()->limit(4)->get();
        $this->get5postslastest2 = PostModel::where('category_id', null)->inRandomOrder()->limit(5)->get();
        $this->get5postslastest3 = PostModel::where('category_id', null)->inRandomOrder()->limit(5)->get();
    }
    public function render()
    {
        return view('livewire.home', [
            'title' => $this->title,
        ]);
    }
}
