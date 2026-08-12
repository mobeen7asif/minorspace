@php
    $price ??= $product->price()->getPrice();
    $priceWrapperClassName ??= 'product_price';
    $priceClassName ??= 'price';
    $priceOriginalWrapperClassName ??= 'product-price-original';
    $priceOriginalClassName ??= 'text-muted';
    $isDisplayPriceOriginal ??= true;
    $showSalePercentage ??= true;
    $saleWrapperClassName ??= 'on_sale';
    $salePercentageClassName ??= 'on_sale_percentage_text';
    $saleTextSuffix ??= __('Off');
    $shouldShowPrice =
        (! EcommerceHelper::hideProductPrice() || EcommerceHelper::isCartEnabled())
        && (! EcommerceHelper::hideProductPriceWhenZero() || $price > 0);
@endphp

@if ($shouldShowPrice)
    @include(EcommerceHelper::viewPath('includes.product-price'), [
        'product' => $product,
        'price' => $price,
        'priceFormatted' => $priceFormatted ?? null,
        'priceWrapperClassName' => $priceWrapperClassName,
        'priceClassName' => $priceClassName,
        'priceOriginalWrapperClassName' => $priceOriginalWrapperClassName,
        'priceOriginalClassName' => $priceOriginalClassName,
        'isDisplayPriceOriginal' => $isDisplayPriceOriginal,
    ])

    @if ($showSalePercentage && $product->isOnSale())
        <div class="{{ $saleWrapperClassName }}">
            <span class="{{ $salePercentageClassName }}">{{ get_sale_percentage($product->price, $product->front_sale_price) }}</span>
            @if ($saleTextSuffix !== '')
                <span>{{ $saleTextSuffix }}</span>
            @endif
        </div>
    @endif
@endif
