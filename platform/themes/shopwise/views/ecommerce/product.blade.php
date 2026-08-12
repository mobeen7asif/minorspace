@php
    Theme::set('pageName', $product->name);
    Theme::asset()->usePath()->add('lightGallery-css', 'plugins/lightGallery/css/lightgallery.min.css');
    Theme::asset()->container('footer')->usePath()
        ->add('lightGallery-js', 'plugins/lightGallery/js/lightgallery.min.js', ['jquery']);
@endphp

<div class="section">
    <div class="container">
        <div class="row">
            <div class="col-lg-5 col-md-5 mb-4 mb-md-0">
                <div class="product-image">
                    <div class="product_img_box">
                        <img id="product_img" src="{{ RvMedia::getImageUrl($product->image, 'medium', false, RvMedia::getDefaultImage()) }}" data-zoom-enable="{{ theme_option('enabled_product_image_zoom', 'yes') == 'yes' ? 'true' : 'false' }}" data-zoom-image="{{ RvMedia::getImageUrl($product->image, null, false, RvMedia::getDefaultImage()) }}" alt="{{ $product->name }}" loading="lazy" />
                        <a href="#" class="product_img_zoom" title="Zoom">
                            <span class="linearicons-zoom-in"></span>
                        </a>
                    </div>
                    <div id="pr_item_gallery" class="product_gallery_item slick_slider" data-slides-to-show="4" data-slides-to-scroll="1" data-infinite="false">
                        @foreach ($productImages as $img)
                            <div class="item">
                                <a href="#" class="product_gallery_item @if ($loop->first) active @endif" data-image="{{ RvMedia::getImageUrl($img, 'medium') }}" data-zoom-image="{{ RvMedia::getImageUrl($img) }}">
                                    <img src="{{ RvMedia::getImageUrl($img, 'thumb') }}" alt="{{ $product->name }}" loading="lazy"/>
                                </a>
                            </div>
                        @endforeach
                    </div>
                </div>
            </div>
            <div class="col-lg-7 col-md-7">
                <div class="pr_detail bb-product-detail">
                <div class="product_description">
                    <h4 class="product_title"><a href="{{ $product->url }}">{{ $product->name }}</a></h4>
                    @include(Theme::getThemeNamespace('partials.ecommerce.product-price'), [
                        'product' => $product,
                        'priceWrapperClassName' => 'product_price',
                        'priceClassName' => 'price product-sale-price-text',
                        'priceOriginalClassName' => 'product-price-text',
                        'saleWrapperClassName' => 'on_sale',
                        'salePercentageClassName' => 'on_sale_percentage_text',
                        'saleTextSuffix' => __('Off'),
                    ])
                    @if (EcommerceHelper::isReviewEnabled())
                        @if ($product->reviews_count > 0)
                            <div class="rating_wrap">
                                <div class="rating">
                                    <div class="product_rate" style="width: {{ $product->reviews_avg * 20 }}%"></div>
                                </div>
                                <span class="rating_num">({{ $product->reviews_count }})</span>
                            </div>
                        @endif
                    @endif
                    <div class="clearfix"></div>
                    @if ($product->tax_description)
                        <div class="product-tax-description mt-2 mb-2">
                            <small class="text-muted">
                                {{ $product->tax_description }}
                            </small>
                        </div>
                    @endif
                    <div class="pr_desc">
                        {!! apply_filters('ecommerce_before_product_description', null, $product) !!}
                        <p>{!! BaseHelper::clean($product->description) !!}</p>
                        {!! apply_filters('ecommerce_after_product_description', null, $product) !!}
                    </div>

                    <div class="cart_extra">
                        <form class="add-to-cart-form" method="POST" action="{{ route('public.cart.add-to-cart') }}">
                            @csrf

                            @if ($product->has_variation)
                                <div class="pr_switch_wrap">
                                    {!! render_product_swatches($product, [
                                        'selected' => $selectedAttrs,
                                        'view'     => Theme::getThemeNamespace() . '::views.ecommerce.attributes.swatches-renderer'
                                    ]) !!}
                                </div>
                            @endif

                           {!! render_product_options($product) !!}

                            <hr />

                            {!! apply_filters(ECOMMERCE_PRODUCT_DETAIL_EXTRA_HTML, null, $product) !!}
                            <input type="hidden" name="id" id="hidden-product-id" value="{{ ($product->is_variation || !$product->defaultVariation->product_id) ? $product->id : $product->defaultVariation->product_id }}"/>

                            @include(Theme::getThemeNamespace('views.ecommerce.includes.product-availability'))

                            <br>

                            @if (EcommerceHelper::isCartEnabled())
                                <div class="cart-product-quantity">
                                    <div class="quantity float-start">
                                        <input type="button" value="-" class="minus">
                                        <input type="text" name="qty" value="1" title="{{ __('Qty') }}" class="qty" size="4">
                                        <input type="button" value="+" class="plus">
                                    </div> &nbsp;
                                </div>
                                <br>
                            @endif
                            <div class="cart_btn">
                                @if (EcommerceHelper::isCartEnabled())
                                    <button class="btn btn-fill-out @if ($product->isOutOfStock()) btn-disabled @endif" type="submit" @if ($product->isOutOfStock()) disabled @endif><i class="icon-basket-loaded"></i> {{ __('Add to cart') }}</button>
                                @endif
                                @if (EcommerceHelper::isQuickBuyButtonEnabled())
                                    &nbsp;
                                    <button class="btn btn-dark @if ($product->isOutOfStock()) btn-disabled @endif" type="submit" @if ($product->isOutOfStock()) disabled @endif name="checkout">{{ __('Quick Buy') }}</button>
                                @endif
                                @if (EcommerceHelper::isCompareEnabled())
                                    <a class="add_compare js-add-to-compare-button" data-url="{{ route('public.compare.add', $product->id) }}" href="#" title="{{ __('Compare') }}"><i class="icon-shuffle"></i></a>
                                @endif
                                @if (EcommerceHelper::isWishlistEnabled())
                                    <a class="add_wishlist js-add-to-wishlist-button" href="#" data-url="{{ route('public.wishlist.add', $product->id) }}" title="{{ __('Wishlist') }}"><i class="icon-heart"></i></a>
                                @endif
                            </div>
                            <br>
                            <div class="success-message text-success" style="display: none;">
                                <span></span>
                            </div>
                            <div class="error-message text-danger" style="display: none;">
                                <span></span>
                            </div>
                        </form>
                    </div>
                    <hr />
                    <ul class="product-meta">
                        <li id="product-sku" @if (!$product->sku) style="display: none" @endif>{{ __('SKU') }}: <span>{{ $product->sku }}</span></li>
                        @if ($product->categories->isNotEmpty())
			                <li>{{ __('Category') }}:
                                @foreach ($product->categories as $category)
                                    <a href="{{ $category->url }}">{{ $category->name }}</a>@if (!$loop->last),@endif
                                @endforeach
                            </li>
			            @endif
                        @if ($product->tags->isNotEmpty())
                            <li>{{ __('Tags') }}:
                                @foreach ($product->tags as $tag)
                                    <a href="{{ $tag->url }}" rel="tag">{{ $tag->name }}</a>@if (!$loop->last),@endif
                                @endforeach
                            </li>
                        @endif
                    </ul>

                    <div class="product_share">
                        <span>{{ __('Share') }}:</span>

                        {!! Theme::renderSocialSharing($product->url, SeoHelper::getDescription(), $product->image) !!}
                    </div>
                </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-12">
                <div class="large_divider clearfix"></div>
            </div>
        </div>

        @if (EcommerceHelper::isEnabledUpSaleProducts())
            @include(EcommerceHelper::viewPath('includes.up-sale-products'), ['parentProduct' => $product])
        @endif

        @if (EcommerceHelper::isEnabledCrossSaleProducts())
            @include(EcommerceHelper::viewPath('includes.cross-sale-products'), ['parentProduct' => $product])
        @endif

        <div class="row">
            <div class="col-12">
                <div class="tab-style3">
                    <ul class="nav nav-tabs" role="tablist" aria-label="Product tabs">
                        <li class="nav-item">
                            <a class="nav-link active" id="description-tab" data-bs-toggle="tab" href="#description" role="tab" aria-controls="description" aria-selected="true">{{ __('Description') }}</a>
                        </li>
                        @if (EcommerceHelper::isProductSpecificationEnabled() && $product->specificationAttributes->where('pivot.hidden', false)->isNotEmpty())
                            <li class="nav-item">
                                <a class="nav-link" id="specification-tab" data-bs-toggle="tab" href="#tab-specification" role="tab" aria-controls="specification" aria-selected="true">{{ __('Specification') }}</a>
                            </li>
                        @endif
                        @if (EcommerceHelper::isReviewEnabled())
                            <li class="nav-item">
                                <a class="nav-link" id="reviews-tab" data-bs-toggle="tab" href="#reviews" role="tab" aria-controls="reviews" aria-selected="false">{{ __('Reviews') }} ({{ $product->reviews_count }})</a>
                            </li>
                        @endif
                        @if (is_plugin_active('faq') && $product->faq_items)
                            <li class="nav-item">
                                <a class="nav-link" data-bs-toggle="tab" href="#tab-faq">{{ __('Questions and Answers') }}</a>
                            </li>
                        @endif
                    </ul>
                    <div class="tab-content shop_info_tab">
                        <div class="tab-pane fade show active" id="description" role="tabpanel" aria-labelledby="description-tab">
                            <div id="app" class="ck-content">
                                {!! BaseHelper::clean($product->content) !!}
                            </div>
                            <br />
                            {!! apply_filters(BASE_FILTER_PUBLIC_COMMENT_AREA, null, $product) !!}
                        </div>

                        @if (EcommerceHelper::isProductSpecificationEnabled() && $product->specificationAttributes->where('pivot.hidden', false)->isNotEmpty())
                            <div class="tab-pane fade" id="tab-specification" role="tabpanel" aria-labelledby="specification-tab">
                                <div class="tp-product-details-additional-info">
                                    @include(EcommerceHelper::viewPath('includes.product-specification'))
                                </div>
                            </div>
                        @endif

                        @if (is_plugin_active('faq') && $product->faq_items)
                            <div class="tab-pane fade faqs-list" id="tab-faq">
                                <div class="accordion" id="faq-accordion">
                                    @foreach($product->faq_items as $faq)
                                        <div class="card">
                                            <div class="card-header" id="heading-faq-{{ $loop->index }}">
                                                <h2 class="mb-0">
                                                    <button class="btn btn-link btn-block text-start @if (!$loop->first) collapsed @endif" type="button" data-bs-toggle="collapse" data-bs-target="#collapse-faq-{{ $loop->index }}" aria-expanded="true" aria-controls="collapse-faq-{{ $loop->index }}">
                                                        {!! BaseHelper::clean($faq[0]['value']) !!}
                                                    </button>
                                                </h2>
                                            </div>

                                            <div id="collapse-faq-{{ $loop->index }}" class="collapse @if ($loop->first) show @endif" aria-labelledby="heading-faq-{{ $loop->index }}" data-bs-parent="#faq-accordion">
                                                <div class="card-body">
                                                    {!! BaseHelper::clean($faq[1]['value']) !!}
                                                </div>
                                            </div>
                                        </div>
                                    @endforeach
                                </div>
                            </div>
                        @endif

                        @if (EcommerceHelper::isReviewEnabled())
                            <div class="tab-pane fade product-reviews-container" id="reviews" role="tabpanel" aria-labelledby="reviews-tab">
                                @include('plugins/ecommerce::themes.includes.reviews')
                            </div>
                        @endif
                    </div>
                </div>
            </div>
        </div>

        @php
            $relatedProducts = get_related_products($product);
        @endphp
        @if ($relatedProducts->isNotEmpty())
            <div class="row shop_container grid mt-5">
                <div class="col-12">
                    <div class="heading_s1">
                        <h3>{{ __('Related Products') }}</h3>
                    </div>
                    <div class="releted_product_slider carousel_slider owl-carousel owl-theme" data-margin="20" data-responsive='{"0":{"items": "1"}, "481":{"items": "2"}, "768":{"items": "3"}, "1199":{"items": "4"}}'>
                        @foreach ($relatedProducts as $related)
                            {!! Theme::partial('product-item-grid', ['product' => $related]) !!}
                        @endforeach
                    </div>
                </div>
            </div>
        @endif
    </div>
</div>
