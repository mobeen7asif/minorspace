@if ($products->count())
    <div class="panel__content">
        <div class="row mx-0">
            @foreach($products as $product)
            <div class="col-12 px-1 px-md-2 py-1 product_wrap mb-0 border border-top-0 border-gray shadow-none rounded-0">
                <div class="row mx-md-2 gx-md-2 gx-1 justify-content-center align-items-center">
                    <div class="col-xl-2 col-3">
                        <div class="product-img">
                            <a href="{{ $product->url }}">
                                <img src="{{ RvMedia::getImageUrl($product->image, 'product-thumb', false, RvMedia::getDefaultImage()) }}" alt="{{ $product->name }}" loading="lazy" />
                            </a>
                        </div>
                    </div>
                    <div class="col-xl-10 col-9">
                        <div class="product_info">
                            <div class="product_title"><a href="{{ $product->url }}">{{ $product->name }}</a></div>
                            @if (EcommerceHelper::isReviewEnabled())
                                <div class="rating_wrap">
                                    <div class="rating">
                                        <div class="product_rate" style="width: {{ $product->reviews_avg * 20 }}%"></div>
                                    </div>
                                    <span class="rating_num">({{ $product->reviews_count }})</span>
                                </div>
                            @endif
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
                        </div>
                    </div>
                </div>
            </div>
        @endforeach
        </div>
    </div>
    <div class="panel__footer text-center">
        <a href="{{ route('public.products', $queries) }}">{{ __('See all results') }}</a>
    </div>
@else
    <div class="panel__content py-2 px-2 row mx-0 bg-white w-100 text-center">
        <div class="text-center">{{ __('No products found.') }}</div>
    </div>
@endif
