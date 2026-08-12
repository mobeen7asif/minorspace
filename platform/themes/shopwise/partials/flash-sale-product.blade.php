<div class="deal_wrap">
    @if ($product->isOutOfStock())
        <span class="pr_flash" style="background-color: #000">{{ __('Out Of Stock') }}</span>
    @else
        @if ($product->productLabels->count())
            @foreach ($product->productLabels as $label)
                <span class="pr_flash" {!! $label->css_styles !!}>{{ $label->name }}</span>
            @endforeach
        @endif
    @endif
    <div class="product_img">
        <a href="{{ $product->url }}">
            <img src="{{ RvMedia::getImageUrl($product->image, 'medium', false, RvMedia::getDefaultImage()) }}" alt="{{ $product->name }}" loading="lazy" />
        </a>
    </div>
    <div class="deal_content">
        <div class="product_info">
            <h3 class="product_title"><a href="{{ $product->url }}">{{ $product->name }}</a></h3>
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
            @if (EcommerceHelper::isReviewEnabled())
                <div class="rating_wrap">
                    <div class="rating">
                        <div class="product_rate" style="width: {{ $product->reviews_avg * 20 }}%"></div>
                    </div>
                    <span class="rating_num">({{ $product->reviews_count }})</span>
                </div>
            @endif
        </div>
        <div class="deal_progress">
            <span class="stock-sold">{{ __('Already Sold') }}: <strong>{{ $product->pivot->sold }}</strong></span>
            <span class="stock-available">{{ __('Available') }}: <strong>{{ $product->pivot->quantity - $product->pivot->sold }}</strong></span>
            <div class="progress">
                <div class="progress-bar" role="progressbar" aria-label="{{ __('Already Sold') }}" aria-valuenow="{{ $product->pivot->quantity > 0 ? ($product->pivot->sold / $product->pivot->quantity) * 100 : 0 }}" aria-valuemin="0" aria-valuemax="100" style="width:{{ $product->pivot->quantity > 0 ? ($product->pivot->sold / $product->pivot->quantity) * 100 : 0 }}%"> {{ $product->pivot->quantity > 0 ? ($product->pivot->sold / $product->pivot->quantity) * 100 : 0 }}% </div>
            </div>
        </div>
        <div class="countdown_time countdown_style4 mb-4" data-time="{{ $flashSale->end_date }}"></div>
    </div>
</div>
