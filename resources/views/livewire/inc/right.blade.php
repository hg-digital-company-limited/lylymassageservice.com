<div class="large-3 col">
    <div id="secondary" class="widget-area " role="complementary">
        <aside id="custom_html-2" class="widget_text widget widget_custom_html"><span
                class="widget-title "><span>THỜI GIAN LÀM VIỆC</span></span>
            <div class="is-divider small"></div>
            <div class="textwidget custom-html-widget">
                <div class="thoi-gian-lam-viec">
                    <p>7H00 - 19H00</p>
                    <span>Từ <b>Thứ 2</b> đến <b>Chủ nhật</b></span>
                </div>
            </div>
        </aside>
        <aside id="nav_menu-2" class="widget widget_nav_menu"><span
                class="widget-title "><span>DỊCH VỤ NỔI BẬT</span></span>
            <div class="is-divider small"></div>
            <div class="menu-menu-dich-vu-noi-bat-container">
                <ul id="menu-menu-dich-vu-noi-bat" class="menu">
                    @foreach ($randomPosts as $post)
                    <li id="menu-item-728"
                        class="menu-item menu-item-type-post_type menu-item-object-post menu-item-728">
                        <a href="/dich-vu/{{ ($post->slug) }}">{{ $post->title }}</a></li>
                    @endforeach
                </ul>
            </div>
        </aside>
        <aside id="media_image-2" class="widget widget_media_image"><img width="300"
                height="300"
                src="/assets/wp-content/uploads/2020/10/banner-quang-cao-300x300.jpg"
                class="image wp-image-474  attachment-medium size-medium" alt=""
                style="max-width: 100%; height: auto;" decoding="async" loading="lazy"
                srcset="/assets/wp-content/uploads/2020/10/banner-quang-cao-300x300.jpg 300w, /assets/wp-content/uploads/2020/10/banner-quang-cao-150x150.jpg 150w, /assets/wp-content/uploads/2020/10/banner-quang-cao.jpg 480w"
                sizes="(max-width: 300px) 100vw, 300px" /></aside>
        <aside id="flatsome_recent_posts-2" class="widget flatsome_recent_posts"> <span
                class="widget-title "><span>CÓ THỂ BẠN QUAN TÂM</span></span>
            <div class="is-divider small"></div>
            <ul>
                @foreach ($randomPosts2 as $post)

                <li class="recent-blog-posts-li">
                    <div class="flex-row recent-blog-posts align-top pt-half pb-half">
                        <div class="flex-col mr-half">
                            <div class="badge post-date  badge-outline">
                                <div class="badge-inner bg-fill"
                                    style="background: url({{ Storage::url($post->banner) }}); border:0;">
                                </div>
                            </div>
                        </div>
                        <div class="flex-col flex-grow">
                            <a href="/dich-vu/{{ ($post->slug) }}"
                                title="{{ $post->title }}">{{ $post->title }}</a>
                            <span class="post_comments op-7 block is-xsmall"><a
                                    href="/dich-vu/{{ ($post->slug) }}#respond"></a></span>
                        </div>
                    </div>
                </li>
                @endforeach

            </ul>
        </aside>
        <aside id="category-posts-2" class="widget cat-post-widget"><span
                class="widget-title "><span>CÂU CHUYỆN KHÁCH HÀNG</span></span>
            <div class="is-divider small"></div>
            <ul id="category-posts-2-internal" class="category-posts-internal">
                @foreach ($randomPosts2 as $post)

                <li class="recent-blog-posts-li">
                    <div class="flex-row recent-blog-posts align-top pt-half pb-half">
                        <div class="flex-col mr-half">
                            <div class="badge post-date  badge-outline">
                                <div class="badge-inner bg-fill"
                                    style="background: url({{ Storage::url($post->banner) }}); border:0;">
                                </div>
                            </div>
                        </div>
                        <div class="flex-col flex-grow">
                            <a href="/dich-vu/{{ ($post->slug) }}"
                                title="{{ $post->title }}">{{ $post->title }}</a>
                            <span class="post_comments op-7 block is-xsmall"><a
                                    href="/dich-vu/{{ ($post->slug) }}#respond"></a></span>
                        </div>
                    </div>
                </li>
                @endforeach
            </ul>
        </aside>
    </div>
</div>
