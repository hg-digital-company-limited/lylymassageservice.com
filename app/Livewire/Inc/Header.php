<?php

namespace App\Livewire\Inc;

use App\Models\AccessHistory;
use App\Models\ActivityHistory;
use App\Models\Category;
use Livewire\Component;

class Header extends Component
{
    public $categories;

    public function mount()
    {
        // Lấy tất cả các danh mục không có danh mục cha
        $this->categories = Category::with('children.posts')->whereNull('parent_id')->get();
        $this->recordAccess();
    }
    private function recordAccess()
    {
        $today = now()->toDateString(); // Lấy ngày hiện tại

        // Kiểm tra xem bản ghi cho ngày hôm nay đã tồn tại chưa
        $accessRecord = AccessHistory::where('date', $today)->first();

        if ($accessRecord) {
            // Nếu đã tồn tại, tăng số lượt truy cập
            $accessRecord->increment('visit_count');
        } else {
            // Nếu chưa tồn tại, tạo mới bản ghi
            AccessHistory::create([
                'date' => $today,
                'visit_count' => 1,
            ]);
        }
    }
    public function render()
    {
        return view('livewire.inc.header', [
            'categories' => $this->categories,
        ]);
    }
}
