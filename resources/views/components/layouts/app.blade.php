<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="robots" content="index, follow">
        <meta name="csrf-token" content="{{ csrf_token() }}">
        <link rel="canonical" href="{{ url()->current() }}">
        <meta name="googlebot" content="index, follow">
        <link rel="icon" href="{{ asset('icon/icon.png') }}" type="image/x-icon">
        <meta name="author" content="Ly Ly Massage">
        <meta name="description" content="베트남 출장 마사지는 고객에게 집, 호텔 객실 또는 아파트에서 편안하고 편안한 경험을 제공합니다. 젊고 경험이 풍부한 기술자 팀이 다낭, 호이안, 나트랑, 달랏, 하노이, 호치민에서 연중무휴 24시간 비즈니스를 제공합니다. ">
        <meta name="keywords" content="베트남 출장 마사지는 고객에게 집, 호텔 객실 또는 아파트에서 편안하고 편안한 경험을 제공합니다. 젊고 경험이 풍부한 기술자 팀이 다낭, 호이안, 나트랑, 달랏, 하노이, 호치민에서 연중무휴 24시간 비즈니스를 제공합니다. ">
        <meta name="google-site-verification" content="k7hhG1WTd9Q1nj3QJvhYQigcd23m1WYpOmpZmCAL8C0" />
        <meta property="og:image" content="{{ asset('icon/banner.png') }}">
        <meta property="og:description" content="베트남 출장 마사지는 고객에게 집, 호텔 객실 또는 아파트에서 편안하고 편안한 경험을 제공합니다. 젊고 경험이 풍부한 기술자 팀이 다낭, 호이안, 나트랑, 달랏, 하노이, 호치민에서 연중무휴 24시간 비즈니스를 제공합니다. ">
        @livewireStyles
    </head>
    <body>
        {{ $slot }}
        @livewireScripts
    </body>
</html>
