@php
    $itemsPerRow = $shortcode->products_per_row ?: get_products_per_row();
    $itemsPerRowOnMobile = theme_option('ecommerce_products_per_row_mobile', 2);
    $titleAlignment = in_array($shortcode->title_alignment, ['start', 'center']) ? $shortcode->title_alignment : 'start';
    $limit = (int) $shortcode->limit ?: 12;
    $responsiveConfig = json_encode([
        '0' => ['items' => (string) $itemsPerRowOnMobile],
        '481' => ['items' => '2'],
        '768' => ['items' => '3'],
        '1199' => ['items' => (string) $itemsPerRow],
    ]);
@endphp

<div class="container ecommerce-products-tab">
    <div class="row">
        <div class="col-12">
            @if ($shortcode->title || $shortcode->subtitle || $categories->count() > 1)
                <div class="heading_tab_header text-{{ $titleAlignment }}">
                    <div class="heading_s2">
                        @if ($shortcode->title)
                            <h2 class="h4">{!! BaseHelper::clean($shortcode->title) !!}</h2>
                        @endif
                        @if ($shortcode->subtitle)
                            <p class="text-muted">{!! BaseHelper::clean($shortcode->subtitle) !!}</p>
                        @endif
                    </div>
                    @if ($categories->count() > 1)
                        <div class="tab-style2">
                            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#ecommerce-products-tabmenubar-{{ $shortcode->id ?? 'default' }}" aria-expanded="false">
                                <span class="ion-android-menu"></span>
                            </button>
                            @include(Theme::getThemeNamespace('partials.shortcodes.ecommerce-products.nav-tabs', ['attributes' => ['class' => 'justify-content-md-end']]))
                        </div>
                    @endif
                </div>
            @endif
        </div>
    </div>
    <div class="row">
        <div class="col-12">
            @if ($categories->count() > 1)
                <div class="tab_slider">
                    @foreach ($categories as $category)
                        <div @class([
                            'tab-pane fade',
                            'show active' => $category->id == $categoryId
                        ]) id="category-{{ $category->id }}" role="tabpanel" aria-labelledby="category-{{ $category->id }}-tab">
                            @if ($category->id == $categoryId)
                                <div class="product_slider carousel_slider owl-carousel owl-theme nav_style1" data-loop="true" data-dots="false"
                                    data-nav="true" data-margin="20" data-responsive='{!! $responsiveConfig !!}'>
                                    @foreach($products as $product)
                                        <div class="item">
                                            {!! Theme::partial('product-item', compact('product')) !!}
                                        </div>
                                    @endforeach
                                </div>
                            @else
                                <div class="half-circle-spinner">
                                    <div class="circle circle-1"></div>
                                    <div class="circle circle-2"></div>
                                </div>
                            @endif
                        </div>
                    @endforeach
                </div>
            @else
                <div class="product_slider carousel_slider owl-carousel owl-theme nav_style1" data-loop="true" data-dots="false"
                    data-nav="true" data-margin="20" data-responsive='{!! $responsiveConfig !!}'>
                    @foreach($products as $product)
                        <div class="item">
                            {!! Theme::partial('product-item', compact('product')) !!}
                        </div>
                    @endforeach
                </div>
            @endif
        </div>
    </div>

    @if ($categories->count() > 1)
        <script type="text/x-custom-template" class="ecommerce-product-items">
            <div class="product_slider carousel_slider owl-carousel owl-theme nav_style1" data-loop="true" data-dots="false"
                data-nav="true" data-margin="20" data-responsive='{!! $responsiveConfig !!}'>
                __data__
            </div>
        </script>
    @endif
</div>
