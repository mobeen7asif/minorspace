@php
    Theme::set('pageName', __('Products'));
    $itemsPerRow = get_products_per_row();
    $itemsPerRowOnMobile = theme_option('ecommerce_products_per_row_mobile', 2);
@endphp

<div class="section">
    <div class="container">
        <div class="row">
            <div class="col-lg-9" data-bb-toggle="product-list">
                <div class="row align-items-center mb-4 pb-1">
                    <div class="col-12">
                        <div class="product_header">
                            @include(Theme::getThemeNamespace() . '::views.ecommerce.includes.sort')
                        </div>
                    </div>
                </div>
                <div class="row shop_container grid bb-product-items-wrapper row-cols-xxl-{{ $itemsPerRow }} row-cols-xl-{{ max(3, $itemsPerRow - 1) }} row-cols-lg-{{ max(2, $itemsPerRow - 2) }} row-cols-md-3 row-cols-sm-{{ $itemsPerRowOnMobile }} row-cols-{{ $itemsPerRowOnMobile }}">
                    @include(Theme::getThemeNamespace('views.ecommerce.includes.product-items'))
                </div>
            </div>
            <div class="col-lg-3 order-lg-first mt-4 pt-2 mt-lg-0 pt-lg-0">
                <div class="sidebar">
                    @include(Theme::getThemeNamespace() . '::views.ecommerce.includes.filters')
                </div>
            </div>
        </div>
    </div>
</div>
<!-- END SECTION SHOP -->
