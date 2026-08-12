@php Theme::set('pageName', __('Wishlist')) @endphp

<div class="section">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="table-responsive shop_cart_table wishlist-table">
                    <table class="table">
                        <thead>
                        <tr>
                            <th class="product-thumbnail">{{ __('Image') }}</th>
                            <th class="product-name">{{ __('Product') }}</th>
                            <th class="product-price">{{ __('Price') }}</th>
                            <th class="product-subtotal">{{ __('Add to cart') }}</th>
                            <th class="product-remove">{{ __('Remove') }}</th>
                        </tr>
                        </thead>
                        <tbody>
                            @if ($products->total())
                                @foreach ($products as $product)
                                    <tr>
                                        <td class="product-thumbnail">
                                            <img alt="{{ $product->name }}" width="50" height="70" class="img-fluid"
                                                    style="max-height: 75px"
                                                    src="{{ RvMedia::getImageUrl($product->image, 'thumb', false, RvMedia::getDefaultImage()) }}" loading="lazy" />
                                        </td>
                                        <td class="product-name" data-title="{{ __('Product') }}">
                                            <a href="{{ $product->original_product->url }}">{{ $product->name }}</a>
                                        </td>
                                        <td class="product-price">
                                            @php
                                                $productPriceValue = $product->price()->getPrice();
                                                $shouldShowProductPrice =
                                                    (! EcommerceHelper::hideProductPrice() || EcommerceHelper::isCartEnabled())
                                                    && (! EcommerceHelper::hideProductPriceWhenZero() || $productPriceValue > 0);
                                            @endphp

                                            @if ($shouldShowProductPrice)
                                                @include(Theme::getThemeNamespace('partials.ecommerce.product-price'), [
                                                    'product' => $product,
                                                    'priceWrapperClassName' => 'product__price' . ($product->front_sale_price != $product->price ? ' sale' : ''),
                                                    'priceClassName' => '',
                                                    'priceOriginalClassName' => '',
                                                    'priceOriginalWrapperClassName' => '',
                                                    'showSalePercentage' => false,
                                                ])
                                            @endif
                                        </td>
                                        <td class="product-remove" data-title="{{ __('Add to cart') }}">
                                            <a class="btn btn-fill-out btn-sm add-to-cart-button" data-id="{{ $product->id }}" href="#" data-url="{{ route('public.cart.add-to-cart') }}">{{ __('Add to cart') }}</a>
                                        </td>
                                        <td class="product-remove" data-title="{{ __('Remove') }}">
                                            <a class="btn btn-dark btn-sm js-remove-from-wishlist-button" href="#" data-url="{{ route('public.wishlist.remove', $product->id) }}">{{ __('Remove') }}</a>
                                        </td>
                                    </tr>
                                @endforeach
                            @else
                                <tr>
                                    <td colspan="5" class="text-center">{{ __('No product in wishlist!') }}</td>
                                </tr>
                            @endif
                        </tbody>
                    </table>
                </div>

                @if ($products->total())
                    <div class="mt-3 justify-content-center pagination_style1">
                        {!! $products->links() !!}
                    </div>
                @endif
            </div>
        </div>
    </div>
</div>
