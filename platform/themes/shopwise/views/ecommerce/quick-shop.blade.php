<div class="quick-shop-wrapper bb-product-detail">
    <div class="quick-shop-inner">
        <div class="quick-shop-image">
            <a href="{{ $product->url }}">
                <img src="{{ RvMedia::getImageUrl($product->image, 'medium', false, RvMedia::getDefaultImage()) }}" alt="{{ $product->name }}" loading="lazy" />
            </a>
        </div>
        <div class="quick-shop-info">
            <h3 class="quick-shop-title">
                <a href="{{ $product->url }}">{!! BaseHelper::clean($product->name) !!}</a>
            </h3>

            @include(Theme::getThemeNamespace('partials.ecommerce.product-price'), [
                'product' => $product,
                'priceWrapperClassName' => 'quick-shop-price' . ($product->isOnSale() ? ' sale' : ''),
                'priceClassName' => 'price',
                'priceOriginalWrapperClassName' => '',
                'priceOriginalClassName' => '',
                'saleWrapperClassName' => '',
                'salePercentageClassName' => '',
            ])

            @if (EcommerceHelper::isReviewEnabled() && $product->reviews_count > 0)
                <div class="rating_wrap mb-3">
                    <div class="rating">
                        <div class="product_rate" style="width: {{ $product->reviews_avg * 20 }}%"></div>
                    </div>
                    <span class="rating_num">({{ $product->reviews_count }})</span>
                </div>
            @endif

            <form
                class="add-to-cart-form"
                method="POST"
                action="{{ route('public.cart.add-to-cart') }}"
            >
                @csrf
                <input
                    id="hidden-product-id"
                    class="hidden-product-id"
                    name="id"
                    type="hidden"
                    value="{{ $product->is_variation || !$product->defaultVariation->product_id ? $product->id : $product->defaultVariation->product_id }}"
                />

                @if ($product->variations->isNotEmpty())
                    <div class="quick-shop-variations mb-3">
                        {!! render_product_swatches($product, [
                            'selected' => $selectedAttrs,
                            'referenceProduct' => $referenceProduct ?? null,
                            'view' => Theme::getThemeNamespace('views.ecommerce.attributes.swatches-renderer'),
                        ]) !!}
                    </div>

                    <div class="number-items-available" style="display: none; margin-bottom: 10px;"></div>
                @endif

                {!! render_product_options($product) !!}

                {!! apply_filters(ECOMMERCE_PRODUCT_DETAIL_EXTRA_HTML, null, $product) !!}

                @if (EcommerceHelper::isCartEnabled())
                    <div class="quick-shop-actions d-flex align-items-center gap-3 mb-3">
                        <div class="product__qty">
                            <button type="button" class="down"></button>
                            <input class="qty-input" name="qty" type="number" value="1" min="1">
                            <button type="button" class="up"></button>
                        </div>
                        <button
                            type="submit"
                            class="btn btn-fill-out flex-grow-1"
                            @disabled($product->isOutOfStock())
                            {!! EcommerceHelper::jsAttributes('add-to-cart-in-form', $product) !!}
                        >
                            @if ($product->isOutOfStock())
                                {{ __('Out of Stock') }}
                            @else
                                {{ __('Add to Cart') }}
                            @endif
                        </button>
                    </div>
                @endif

                <div class="success-message text-success" style="display: none;">
                    <span></span>
                </div>
                <div class="error-message text-danger" style="display: none;">
                    <span></span>
                </div>
            </form>

            <a class="quick-shop-view-details" href="{{ $product->url }}">
                {{ __('View full details') }} <i class="ion-ios-arrow-right"></i>
            </a>
        </div>
    </div>
</div>
