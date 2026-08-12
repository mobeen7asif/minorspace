@php
    $itemsPerRow = $shortcode->products_per_row ?: get_products_per_row();
    $itemsPerRowOnMobile = theme_option('ecommerce_products_per_row_mobile', 2);
    $titleAlignment = in_array($shortcode->title_alignment, ['start', 'center']) ? $shortcode->title_alignment : 'start';
    $responsiveConfig = json_encode([
        '0' => ['items' => (string) $itemsPerRowOnMobile],
        '481' => ['items' => '2'],
        '768' => ['items' => '3'],
        '1199' => ['items' => (string) $itemsPerRow],
    ]);
@endphp

<div class="container">
    <div class="row">
        <div class="col-12">
            @if ($shortcode->title || $shortcode->subtitle)
                <div class="heading_tab_header text-{{ $titleAlignment }}">
                    <div class="heading_s2">
                        @if ($shortcode->title)
                            <h2 class="h4">{!! BaseHelper::clean($shortcode->title) !!}</h2>
                        @endif
                        @if ($shortcode->subtitle)
                            <p class="text-muted">{!! BaseHelper::clean($shortcode->subtitle) !!}</p>
                        @endif
                    </div>
                </div>
            @endif
        </div>
    </div>
    <div class="row">
        <div class="col-12">
            <div class="product_slider carousel_slider owl-carousel owl-theme nav_style1" data-loop="true" data-dots="false"
                data-nav="true" data-margin="20" data-responsive='{!! $responsiveConfig !!}'>
                @foreach($products as $product)
                    <div class="item">
                        {!! Theme::partial('product-item', compact('product')) !!}
                    </div>
                @endforeach
            </div>
        </div>
    </div>
</div>
