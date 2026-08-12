@php
    $itemsPerRow = $shortcode->products_per_row ?: get_products_per_row();
    $itemsPerRowOnMobile = theme_option('ecommerce_products_per_row_mobile', 2);
    $titleAlignment = in_array($shortcode->title_alignment, ['start', 'center']) ? $shortcode->title_alignment : 'start';
@endphp

<!-- START SECTION SHOP -->
<div {!! $shortcode->htmlAttributes() !!} class="section small_pt pb_20">
    @foreach ($data as $key => $products)
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-6">
                    <div class="heading_s3 text-{{ $titleAlignment }}">
                        <h2>{!! BaseHelper::clean($shortcode->{$key . '_title'}) !!}</h2>
                    </div>
                    <div class="small_divider clearfix"></div>
                </div>
            </div>
            <div class="row shop_container row-cols-xxl-{{ $itemsPerRow }} row-cols-xl-{{ max(3, $itemsPerRow - 1) }} row-cols-lg-{{ max(2, $itemsPerRow - 2) }} row-cols-md-3 row-cols-sm-{{ $itemsPerRowOnMobile }} row-cols-{{ $itemsPerRowOnMobile }}">
                @foreach ($products as $product)
                    <div class="col">
                        {!! Theme::partial('product-item', ['product' => $product]) !!}
                    </div>
                @endforeach
            </div> 
        </div>
    @endforeach
</div>
<!-- END SECTION SHOP -->
