@if ($product)
    <div class="product">
        @if ($product->isOutOfStock())
            <span class="pr_flash bg-secondary">{{ __('Out Of Stock') }}</span>
        @else
            @if ($product->productLabels->count())
                @foreach ($product->productLabels as $label)
                    <span class="pr_flash" {!! $label->css_styles !!}>{{ $label->name }}</span>
                @endforeach
            @else
                @if ($product->front_sale_price !== $product->price)
                    <div class="pr_flash bg-success" dir="ltr">{{ get_sale_percentage($product->price, $product->front_sale_price) }}</div>
                @endif
            @endif
        @endif
        <div class="position-relative">
            <div class="product_img">
                <a href="{{ $product->url }}">
                    <img src="{{ RvMedia::getImageUrl($product->image, 'medium', false, RvMedia::getDefaultImage()) }}" alt="{{ $product->name }}" loading="lazy" />
                </a>
            </div>
            <div class="product_action_box">
                <ul class="list_none pr_action_btn">
                    @if (EcommerceHelper::isCartEnabled() && !$product->isOutOfStock())
                        @if ($product->variations->isNotEmpty())
                            <li class="add-to-cart">
                                <a
                                    class="quick-shop-button"
                                    href="#"
                                    data-url="{{ route('public.ajax.quick-shop', $product->slug) }}"
                                    data-bs-toggle="modal"
                                    data-bs-target="#quick-shop-modal"
                                    title="{{ __('Select options') }}"
                                ><i class="icon-basket-loaded"></i> {{ __('Select options') }}</a>
                            </li>
                        @else
                            <li class="add-to-cart"><a class="add-to-cart-button" data-id="{{ $product->id }}" href="#" data-url="{{ route('public.cart.add-to-cart') }}" title="{{ __('Cart') }}"><i class="icon-basket-loaded"></i> {{ __('Add To Cart') }}</a></li>
                        @endif
                    @endif
                    @if (EcommerceHelper::isCompareEnabled())
                        <li><a href="#" class="js-add-to-compare-button" data-url="{{ route('public.compare.add', $product->id) }}" title="{{ __('Compare') }}"><i class="icon-shuffle"></i></a></li>
                    @endif
                    @if (theme_option('enabled_quick_view', 'yes') == 'yes')
                        <li><a href="#" data-bb-toggle="quick-view-product" data-url="{{ route('public.ajax.quick-view', $product->id) }}" rel="nofollow" title="{{ __('Quick view') }}"><i class="icon-magnifier-add"></i></a></li>
                    @endif
                    @if (EcommerceHelper::isWishlistEnabled())
                        <li><a class="js-add-to-wishlist-button" href="#" data-url="{{ route('public.wishlist.add', $product->id) }}" title="{{ __('Wishlist') }}"><i class="icon-heart"></i></a></li>
                    @endif
                </ul>
            </div>
        </div>
        <div class="product_info">
            <div class="product_title"><a href="{{ $product->url }}">{{ $product->name }}</a></div>

            {!! apply_filters('ecommerce_before_product_price_in_listing', null, $product) !!}
            @include(Theme::getThemeNamespace('partials.ecommerce.product-price'), [
                'product' => $product,
                'priceWrapperClassName' => 'product_price',
                'priceClassName' => 'price',
                'priceOriginalWrapperClassName' => '',
                'priceOriginalClassName' => '',
                'saleWrapperClassName' => 'on_sale',
                'salePercentageClassName' => '',
                'saleTextSuffix' => __('Off'),
            ])
            {!! apply_filters('ecommerce_after_product_price_in_listing', null, $product) !!}

            @if (EcommerceHelper::isReviewEnabled())
                <div class="rating_wrap">
                    <div class="rating">
                        <div class="product_rate" style="width: {{ $product->reviews_avg * 20 }}%"></div>
                    </div>
                    <span class="rating_num">({{ $product->reviews_count }})</span>
                </div>
            @endif
            <div class="pr_desc">
                <p>{!! BaseHelper::clean($product->description) !!}</p>
            </div>
            @if (count($product->variationAttributeSwatchesForProductList))
                <div class="pr_switch_wrap">
                    <div class="product_color_switch">
                        @foreach($product->variationAttributeSwatchesForProductList->unique('attribute_id') as $attribute)
                            @if ($attribute->display_layout == 'visual')
                                <span @if ($attribute->image) style="background-image: url({{ RvMedia::getImageUrl($attribute->image) }});" @else data-color="{{ $attribute->color }}" @endif></span>
                            @endif
                        @endforeach
                    </div>
                </div>
            @endif
            <div class="list_product_action_box">
                <ul class="list_none pr_action_btn">
                    @if (EcommerceHelper::isCartEnabled() && !$product->isOutOfStock())
                        @if ($product->variations->isNotEmpty())
                            <li class="add-to-cart">
                                <a
                                    class="quick-shop-button"
                                    href="#"
                                    data-url="{{ route('public.ajax.quick-shop', $product->slug) }}"
                                    data-bs-toggle="modal"
                                    data-bs-target="#quick-shop-modal"
                                ><i class="icon-basket-loaded"></i> {{ __('Select options') }}</a>
                            </li>
                        @else
                            <li class="add-to-cart"><a class="add-to-cart-button" data-id="{{ $product->id }}" href="#" data-url="{{ route('public.cart.add-to-cart') }}"><i class="icon-basket-loaded"></i> {{ __('Add To Cart') }}</a></li>
                        @endif
                    @endif

                    @if (EcommerceHelper::isCompareEnabled())
                        <li><a href="#" class="js-add-to-compare-button" data-url="{{ route('public.compare.add', $product->id) }}"><i class="icon-shuffle"></i></a></li>
                    @endif

                    @if (theme_option('enabled_quick_view', 'yes') == 'yes')
                        <li><a href="#" data-bb-toggle="quick-view-product" data-url="{{ route('public.ajax.quick-view', $product->id) }}" rel="nofollow"><i class="icon-magnifier-add"></i></a></li>
                    @endif

                    @if (EcommerceHelper::isWishlistEnabled())
                        <li><a class="js-add-to-wishlist-button" href="#" data-url="{{ route('public.wishlist.add', $product->id) }}"><i class="icon-heart"></i></a></li>
                    @endif
                </ul>
            </div>
        </div>
    </div>
@endif
