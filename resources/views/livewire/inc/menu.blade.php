<div id="main-menu" class="mobile-sidebar no-scrollbar mfp-hide">


    <div class="sidebar-menu no-scrollbar ">


        <ul class="nav nav-sidebar nav-vertical nav-uppercase" data-tab="1">
            <li
                class="menu-item menu-item-type-post_type menu-item-object-page menu-item-home menu-item-818 has-icon-left">
                <a href="/"><img class="ux-sidebar-menu-icon" width="20" height="20"
                        src="/assets/wp-content/uploads/2024/02/1490971322-map-icons-4_82748-150x150.png" alt="" />Trang
                    chủ</a>
            </li>
            <li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-819"><a href="/gioi-thieu">Giới
                    thiệu</a></li>
            <li
                class="menu-item menu-item-type-post_type menu-item-object-page current-menu-item page_item page-item-12 current_page_item menu-item-734">
                <a href="/bang-gia/" aria-current="page">Bảng giá</a>
            </li>
            {{-- @foreach ($categories as $category)
            <h2>{{ $category->name }}</h2>
            @if ($category->children && $category->children->count() > 0)
            <ul>
                @foreach ($category->children as $child)
                <li>
                    <strong>{{ $child->name }}</strong>
                    <ul>
                        @foreach ($child->posts as $post)
                        <li>{{ $post->title }}</li>
                        @endforeach
                    </ul>
                </li>
                @endforeach
            </ul>
            @endif
            @endforeach --}}
            @foreach ($categories as $category)
                <li
                    class="menu-item menu-item-type-post_type menu-item-object-page menu-item-734">
                    <a href="/danh-muc/{{ $category->slug }}">{{ $category->name }}</a>
                    @if ($category->children && $category->children->count() > 0)
                    <ul class="sub-menu nav-sidebar-ul children">
                            @foreach ($category->children as $child)
                                <li
                                    class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-has-children menu-item-710">
                                    <a href="/danh-muc/{{ $child->slug }}">{{ $child->name }}</a>


                                    <ul>
                                        @foreach ($child->posts as $post)
                                            <li class="menu-item menu-item-type-post_type menu-item-object-post menu-item-735">
                                                <a href="/dich-vu/{{ $post->slug }}">{{ $post->title }}</a>
                                            </li>
                                        @endforeach
                                    </ul>
                                </li>
                            @endforeach
                        </ul>
                        @endif
                </li>
            @endforeach


            <li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-820"><a href="/lien-he">Liên
                    hệ</a></li>
        </ul>


    </div>


</div>
