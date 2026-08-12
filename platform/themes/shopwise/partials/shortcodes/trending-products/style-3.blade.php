@php
    $itemsPerRow = $shortcode->products_per_row ?: get_products_per_row();
    $itemsPerRowOnMobile = theme_option('ecommerce_products_per_row_mobile', 2);
    $titleAlignment = in_array($shortcode->title_alignment, ['start', 'center']) ? $shortcode->title_alignment : 'center';
    $responsiveConfig = json_encode([
        '0' => ['items' => (string) $itemsPerRowOnMobile],
        '481' => ['items' => '2'],
        '768' => ['items' => '3'],
        '1199' => ['items' => (string) $itemsPerRow],
    ]);
@endphp

<!-- START SECTION SHOP -->
<div {!! $shortcode->htmlAttributes() !!} class="section small_pt pb_20">
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-md-6">
                <div class="heading_s3 text-{{ $titleAlignment }}">
                    <h2>{!! BaseHelper::clean($shortcode->title) !!}</h2>
                </div>
                <div class="small_divider clearfix"></div>
            </div>
		</div>
        <div class="row">
        	<div class="col-md-12">
            	<div class="product_slider carousel_slider owl-carousel owl-theme nav_style4" data-loop="true"
                    data-dots="false" data-nav="true" data-margin="30"
                    data-responsive='{!! $responsiveConfig !!}'>
                    @foreach($products as $product)
                        <div class="item">
                            {!! Theme::partial('product-item', compact('product')) !!}
                        </div>
                    @endforeach
                </div>
            </div>
        </div>
    </div>
</div>
<!-- END SECTION SHOP -->
