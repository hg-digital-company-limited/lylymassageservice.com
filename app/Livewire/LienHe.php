<?php

namespace App\Livewire;

use Livewire\Component;
use App\Models\Contact;

class LienHe extends Component
{
    public $name;
    public $phone;
    public $content;

    public function submit()
    {
        // Validate dữ liệu
        $this->validate([
            'name' => 'required|string|max:255',
            'phone' => 'required|string|max:15',
            'content' => 'required|string',
        ]);

        // Tạo contact mới
        Contact::create([
            'name' => $this->name,
            'phone' => $this->phone,
            'content' => $this->content,
        ]);

        // Reset các trường sau khi gửi
        $this->reset(['name', 'phone', 'content']);

        // Có thể thêm thông báo thành công nếu cần
        session()->flash('message', 'Liên hệ đã được gửi thành công!');
    }

    public function render()
    {
        return view('livewire.lien-he');
    }
}
