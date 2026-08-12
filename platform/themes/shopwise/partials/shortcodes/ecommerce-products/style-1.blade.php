@php
    $itemsPerRow = $shortcode->products_per_row ?: get_products_per_row();
    $itemsPerRowOnMobile = theme_option('ecommerce_products_per_row_mobile', 2);
    $titleAlignment = in_array($shortcode->title_alignment, ['start', 'center']) ? $shortcode->title_alignment : 'start';
@endphp

<div class="container">
    <div class="row">
        <div class="col-12">
            @if ($shortcode->title || $shortcode->subtitle)
                <div class="heading_s2 mb-4 text-{{ $titleAlignment }}">
                    @if ($shortcode->title)
                        <h2 class="h4">{!! BaseHelper::clean($shortcode->title) !!}</h2>
                    @endif
                    @if ($shortcode->subtitle)
                        <p class="text-muted">{!! BaseHelper::clean($shortcode->subtitle) !!}</p>
                    @endif
                </div>
            @endif
        </div>
    </div>
    <div class="row shop_container row-cols-xxl-{{ $itemsPerRow }} row-cols-xl-{{ max(3, $itemsPerRow - 1) }} row-cols-lg-{{ max(2, $itemsPerRow - 2) }} row-cols-md-3 row-cols-sm-{{ $itemsPerRowOnMobile }} row-cols-{{ $itemsPerRowOnMobile }}">
        @foreach($products as $product)
            <div class="col">
                {!! Theme::partial('product-item', compact('product')) !!}
            </div>
        @endforeach
    </div>
</div>
