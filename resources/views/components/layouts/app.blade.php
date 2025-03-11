<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="robots" content="index, follow">
        <meta name="csrf-token" content="{{ csrf_token() }}">
        <link rel="canonical" href="{{ url()->current() }}">
        <meta name="googlebot" content="index, follow">
        <meta name="author" content="Ly Ly Massage">
        <meta name="description" content="Trang chủ - Ly Ly Massage">
        <meta name="keywords" content="Trang chủ, Ly Ly Massage, Massage, Spa, Ly Ly, Massage tại nhà, Massage tại gia, Massage tại trọ, Massage tại khách sạn, Massage tại công ty, Massage tại trung tâm, Massage tại phòng khách, Massage tại phòng ngủ, Massage tại phòng ăn, Massage tại phòng học, Massage tại phòng làm việc, Massage tại phòng ngủ, Massage tại phòng ăn, Massage tại phòng học, Massage tại phòng làm việc">
        @livewireStyles
    </head>
    <body>
        {{ $slot }}
        @livewireScripts
    </body>
</html>
