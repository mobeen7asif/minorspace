<?php if(request()->ajax() && isset($products)): ?>
    <?php if($products->isNotEmpty()): ?>
        <?php
            $cartContent = Cart::instance('cart')->content();
            $cartProductIds = $cartContent->pluck('id')->filter()->unique()->toArray();
            $parentProductInCart = false;

            if (!empty($cartProductIds)) {
                $cartProducts = \Botble\Ecommerce\Models\Product::query()
                    ->whereIn('id', $cartProductIds)
                    ->with('variationInfo.configurableProduct')
                    ->get();

                $parentProductInCart = $cartProducts->contains(function ($product) use ($parentProduct) {
                    if ($product->id == $parentProduct->id) {
                        return true;
                    }
                    if ($product->is_variation && $product->variationInfo && $product->variationInfo->configurable_product_id) {
                        return $product->variationInfo->configurable_product_id == $parentProduct->id;
                    }
                    return false;
                });
            }

            $currency = get_application_currency();
            $currencyConfig = [
                'symbol' => $currency->symbol,
                'is_prefix' => $currency->is_prefix_symbol,
                'decimals' => $currency->decimals,
                'thousands_separator' => $currency->thousands_separator,
                'decimal_separator' => $currency->decimal_separator,
            ];
        ?>
        <section class="ec-upsell-bundle" data-upsale-bundle data-currency-config="<?php echo e(json_encode($currencyConfig)); ?>">
            <div class="container">
                <div class="ec-upsell-bundle-wrapper">
                    <div class="ec-upsell-bundle-header">
                        <div class="ec-upsell-bundle-icon">
                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                <path d="M6 2L3 6v14a2 2 0 0 0 2 2h14a2 2 0 0 0 2-2V6l-3-4z"></path>
                                <line x1="3" y1="6" x2="21" y2="6"></line>
                                <path d="M16 10a4 4 0 0 1-8 0"></path>
                            </svg>
                        </div>
                        <div class="ec-upsell-bundle-title">
                            <h4><?php echo e(trans('plugins/ecommerce::products.up_sale.title')); ?></h4>
                            <p><?php echo e(trans('plugins/ecommerce::products.up_sale.description')); ?></p>
                        </div>
                    </div>

                    <div class="ec-upsell-bundle-list">
                        <?php $__currentLoopData = $products; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $product): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <?php
                                $productVariation = $product;
                                $selectedAttrs = collect();
                                $productImage = $product->image;

                                if ($product->variations->isNotEmpty()) {
                                    [$productImages, $productVariation, $selectedAttrs] = \Botble\Ecommerce\Facades\EcommerceHelper::getProductVariationInfo($product);
                                    if ($productImages && count($productImages) > 0) {
                                        $productImage = $productImages[0];
                                    }
                                }

                                $originalPrice = $productVariation->price()->getPriceOriginal();
                                $salePrice = $productVariation->price()->getPrice();

                                $bundleDiscountPrice = $product->pivot->price ?? 0;
                                $bundleDiscountType = $product->pivot->price_type ?? 'fixed';
                                $isPercentDiscount = $bundleDiscountType === 'percent' || $bundleDiscountType === \Botble\Ecommerce\Enums\UpSellPriceType::PERCENT;

                                $bundlePrice = $salePrice;
                                if ($bundleDiscountPrice > 0) {
                                    if ($isPercentDiscount) {
                                        $bundlePrice = $salePrice - ($salePrice * $bundleDiscountPrice / 100);
                                    } else {
                                        $bundlePrice = max(0, $salePrice - $bundleDiscountPrice);
                                    }
                                }

                                $hasDiscount = $bundlePrice < $salePrice || $salePrice < $originalPrice;
                                $showOriginalPrice = $bundlePrice < $salePrice ? $salePrice : ($salePrice < $originalPrice ? $originalPrice : null);

                                $displayPrice = $bundlePrice;
                                if (!$currency->is_default && $currency->exchange_rate > 0) {
                                    $displayPrice = $bundlePrice * $currency->exchange_rate;
                                }

                                $cartId = $productVariation->is_variation ? $productVariation->id : $product->id;
                            ?>
                            <div
                                class="<?php echo \Illuminate\Support\Arr::toCssClasses([
                                    'ec-upsell-bundle-item',
                                    'has-variations' => $product->variations->isNotEmpty(),
                                    'is-locked' => ! $parentProductInCart,
                                ]); ?>"
                                data-product-id="<?php echo e($product->id); ?>"
                                data-upsale-bundle-item
                                <?php if (! ($parentProductInCart)): ?>
                                    title="<?php echo e(trans('plugins/ecommerce::products.up_sale.unlock_discount', ['product' => $parentProduct->name])); ?>"
                                <?php endif; ?>
                            >
                                <div class="ec-upsell-bundle-item-inner">
                                    <div class="ec-upsell-bundle-checkbox">
                                        <input
                                            type="checkbox"
                                            class="ec-upsell-checkbox"
                                            data-upsale-checkbox
                                            aria-label="<?php echo e(__('Select :name', ['name' => $product->name])); ?>"
                                            data-id="<?php echo e($cartId); ?>"
                                            data-price="<?php echo e($displayPrice); ?>"
                                            data-name="<?php echo e($product->name); ?>"
                                            data-bundle-discount="<?php echo e($bundleDiscountPrice); ?>"
                                            data-bundle-discount-type="<?php echo e($isPercentDiscount ? 'percent' : 'fixed'); ?>"
                                            <?php if($parentProductInCart): echo 'checked'; endif; ?>
                                            <?php if(! $parentProductInCart): echo 'disabled'; endif; ?>
                                        >
                                        <span class="ec-upsell-checkmark">
                                            <?php if (! ($parentProductInCart)): ?>
                                                <svg class="ec-upsell-lock-icon" xmlns="http://www.w3.org/2000/svg" width="12" height="12" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true">
                                                    <rect x="3" y="11" width="18" height="11" rx="2" ry="2"></rect>
                                                    <path d="M7 11V7a5 5 0 0 1 10 0v4"></path>
                                                </svg>
                                            <?php endif; ?>
                                        </span>
                                    </div>

                                    <div class="ec-upsell-bundle-thumb">
                                        <a href="<?php echo e($product->url); ?>">
                                            <?php echo e(RvMedia::image($productImage, $product->name, 'thumb', true)); ?>

                                        </a>
                                    </div>

                                    <div class="ec-upsell-bundle-info">
                                        <h5 class="ec-upsell-bundle-name">
                                            <a href="<?php echo e($product->url); ?>" title="<?php echo e($product->name); ?>">
                                                <?php echo e(Str::limit($product->name, 50)); ?>

                                            </a>
                                        </h5>
                                        <div class="ec-upsell-bundle-price">
                                            <?php if($showOriginalPrice): ?>
                                                <span class="ec-upsell-price-original"><?php echo e(format_price($showOriginalPrice)); ?></span>
                                            <?php endif; ?>
                                            <span class="ec-upsell-price-sale"><?php echo e(format_price($bundlePrice)); ?></span>
                                            <?php if($bundleDiscountPrice > 0): ?>
                                                
                                                <span class="ec-upsell-discount-badge ec-upsell-discount-badge--inline">
                                                    <?php if($isPercentDiscount): ?>
                                                        -<?php echo e((int) $bundleDiscountPrice); ?>%
                                                    <?php else: ?>
                                                        -<?php echo e(format_price($bundleDiscountPrice)); ?>

                                                    <?php endif; ?>
                                                </span>
                                            <?php endif; ?>
                                        </div>

                                        <?php if($product->variations->isNotEmpty()): ?>
                                            <div class="ec-upsell-attributes-wrapper" data-product-id="<?php echo e($product->id); ?>">
                                                <input type="hidden" name="id" class="ec-upsell-variation-id" value="<?php echo e($cartId); ?>" />
                                                <?php echo render_product_swatches($product, [
                                                    'selected' => $selectedAttrs,
                                                    'view' => 'plugins/ecommerce::themes.attributes.swatches-renderer-upsale',
                                                ]); ?>

                                            </div>
                                        <?php endif; ?>
                                    </div>

                                    <div class="ec-upsell-bundle-action">
                                        <button
                                            type="button"
                                            class="ec-upsell-add-btn"
                                            data-upsale-add-btn
                                            aria-label="<?php echo e(__('Add :name to cart', ['name' => $product->name])); ?>"
                                            data-url="<?php echo e(route('public.cart.add-to-cart')); ?>"
                                            data-id="<?php echo e($cartId); ?>"
                                            data-parent-product="<?php echo e($parentProduct->slug); ?>"
                                            <?php if(!$parentProductInCart): echo 'disabled'; endif; ?>
                                        >
                                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                                <circle cx="9" cy="21" r="1"></circle>
                                                <circle cx="20" cy="21" r="1"></circle>
                                                <path d="M1 1h4l2.68 13.39a2 2 0 0 0 2 1.61h9.72a2 2 0 0 0 2-1.61L23 6H6"></path>
                                            </svg>
                                        </button>
                                    </div>
                                </div>
                            </div>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                    </div>

                    <?php if(EcommerceHelper::isCartEnabled()): ?>
                        <div class="ec-upsell-bundle-footer">
                            <?php if(!$parentProductInCart): ?>
                                <div class="ec-upsell-bundle-notice">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                        <circle cx="12" cy="12" r="10"></circle>
                                        <line x1="12" y1="8" x2="12" y2="12"></line>
                                        <line x1="12" y1="16" x2="12.01" y2="16"></line>
                                    </svg>
                                    <span><?php echo e(trans('plugins/ecommerce::products.up_sale.unlock_discount', ['product' => $parentProduct->name])); ?></span>
                                </div>
                            <?php else: ?>
                                <div class="ec-upsell-bundle-total">
                                    <span class="ec-upsell-total-label"><?php echo e(trans('plugins/ecommerce::products.up_sale.selected_items_total')); ?></span>
                                    <span class="ec-upsell-total-price" data-upsale-total-price data-base-price="0">
                                        <?php echo e(format_price(0)); ?>

                                    </span>
                                </div>
                                <button
                                    type="button"
                                    class="ec-upsell-bundle-add-all"
                                    data-upsale-add-all
                                    data-url="<?php echo e(route('public.cart.add-to-cart')); ?>"
                                    data-parent-product="<?php echo e($parentProduct->slug); ?>"
                                    disabled
                                >
                                    <svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                        <circle cx="9" cy="21" r="1"></circle>
                                        <circle cx="20" cy="21" r="1"></circle>
                                        <path d="M1 1h4l2.68 13.39a2 2 0 0 0 2 1.61h9.72a2 2 0 0 0 2-1.61L23 6H6"></path>
                                    </svg>
                                    <?php echo e(trans('plugins/ecommerce::products.up_sale.add_selected_to_cart')); ?>

                                </button>
                            <?php endif; ?>
                        </div>
                    <?php endif; ?>
                </div>
            </div>
        </section>
    <?php endif; ?>
<?php else: ?>
    <div data-bb-toggle="block-lazy-loading" data-url="<?php echo e(route('public.ajax.up-sale-products', $parentProduct)); ?>">
        <section class="ec-upsell-skeleton">
            <div class="container">
                <div class="ec-upsell-skeleton-wrapper">
                    <div class="ec-upsell-skeleton-header">
                        <div class="skeleton skeleton-icon"></div>
                        <div class="skeleton-title-group">
                            <div class="skeleton skeleton-title"></div>
                            <div class="skeleton skeleton-subtitle"></div>
                        </div>
                    </div>
                    <div class="ec-upsell-skeleton-items">
                        <?php for($i = 0; $i < 2; $i++): ?>
                            <div class="ec-upsell-skeleton-item">
                                <div class="skeleton skeleton-checkbox"></div>
                                <div class="skeleton skeleton-thumb"></div>
                                <div class="skeleton-info">
                                    <div class="skeleton skeleton-name"></div>
                                    <div class="skeleton skeleton-price"></div>
                                </div>
                                <div class="skeleton skeleton-action"></div>
                            </div>
                        <?php endfor; ?>
                    </div>
                    <div class="ec-upsell-skeleton-footer">
                        <div class="skeleton-total">
                            <div class="skeleton skeleton-label"></div>
                            <div class="skeleton skeleton-price"></div>
                        </div>
                        <div class="skeleton skeleton-btn"></div>
                    </div>
                </div>
            </div>
        </section>
    </div>
<?php endif; ?>
<?php /**PATH C:\www\test.fancyprofile.com\platform\plugins\ecommerce\/resources/views/themes/includes/up-sale-products.blade.php ENDPATH**/ ?>