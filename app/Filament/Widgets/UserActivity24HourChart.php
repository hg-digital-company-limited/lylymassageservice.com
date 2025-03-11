<?php

namespace App\Filament\Widgets;

use App\Models\AccessHistory;
use Filament\Widgets\BarChartWidget;
use Carbon\Carbon;

class UserActivity24HourChart  extends BarChartWidget
{
    protected static ?string $heading = 'Biểu đồ Số Lượt Truy Cập Trong 30 Ngày';
    protected static ?int $sort = 4;

    // Mặc định là 'last_30_days'
    public ?string $filter = 'last_30_days';

    // Định nghĩa các bộ lọc cho widget
    protected function getFilters(): array
    {
        return [
            'last_30_days' => '30 Ngày Gần Nhất',
        ];
    }

    protected function getData(): array
    {
        // Lấy thời gian bắt đầu và kết thúc cho 30 ngày gần nhất
        $startDate = Carbon::now()->subDays(30);
        $endDate = Carbon::now();

        // Đếm số lượt truy cập theo từng ngày trong 30 ngày gần nhất
        $accessData = AccessHistory::whereBetween('date', [$startDate, $endDate])
            ->selectRaw('DATE(date) as date, SUM(visit_count) as total_visits')
            ->groupBy('date')
            ->orderBy('date')
            ->get();

        // Tạo dữ liệu cho biểu đồ
        $allDates = [];
        for ($i = 30; $i >= 0; $i--) {
            $date = Carbon::now()->subDays($i)->format('Y-m-d');
            $allDates[$date] = 0; // Khởi tạo với 0
        }

        foreach ($accessData as $access) {
            // Đảm bảo date là một đối tượng Carbon
            $date = Carbon::parse($access->date);
            $allDates[$date->format('Y-m-d')] = $access->total_visits;
        }

        return [
            'datasets' => [
                [
                    'label' => 'Số lượt truy cập',
                    'data' => array_values($allDates),
                ],
            ],
            'labels' => array_keys($allDates),
        ];
    }

    // Cập nhật khi bộ lọc thay đổi
    public function updatedFilter($filter)
    {
        $this->filter = $filter;
    }
}
