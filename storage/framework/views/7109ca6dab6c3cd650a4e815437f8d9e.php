<?php if(Cart::instance('cart')->count() > 0): ?>
    <ul class="cart_list">
        <?php
            $products = [];
            $productIds = Cart::instance('cart')->content()->pluck('id')->toArray();

            if ($productIds) {
                $products = get_products([
                    'condition' => [
                        ['ec_products.id', 'IN', $productIds],
                    ],
                    'with' => ['slugable'],
                ]);
            }
        ?>
        <?php if(count($products)): ?>
            <?php $__currentLoopData = Cart::instance('cart')->content(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $cartItem): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <?php
                    $product = $products->where('id', $cartItem->id)->first();
                ?>

                <?php if(!empty($product)): ?>
                    <li>
                        <a href="<?php echo e(route('public.cart.remove', $cartItem->rowId)); ?>" class="item_remove remove-cart-button"><i class="ion-close"></i></a>
                        <a href="<?php echo e($product->original_product->url); ?>"><img src="<?php echo e(RvMedia::getImageUrl($cartItem->options->image, 'thumb', false, RvMedia::getDefaultImage())); ?>" alt="<?php echo e($product->name); ?>"  loading="lazy" /> <?php echo e($product->name); ?>  <?php if($product->isOutOfStock()): ?> <span class="stock-status-label">(<?php echo $product->stock_status_html; ?>)</span> <?php endif; ?></a>
                        <p style="margin-bottom: 0; line-height: 20px; color: #fff;">
                            <small><?php echo e($cartItem->options['attributes'] ?? ''); ?></small>
                        </p>

                        <?php if(!empty($cartItem->options['options'])): ?>
                            <?php echo render_product_options_info($cartItem->options['options'], $product, true); ?>

                        <?php endif; ?>

                        <?php if(!empty($cartItem->options['extras']) && is_array($cartItem->options['extras'])): ?>
                            <?php $__currentLoopData = $cartItem->options['extras']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $option): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <?php if(!empty($option['key']) && !empty($option['value'])): ?>
                                    <p style="margin-bottom: 0; line-height: 20px; color: #fff;"><small><?php echo e($option['key']); ?>: <strong> <?php echo e($option['value']); ?></strong></small></p>
                                <?php endif; ?>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        <?php endif; ?>
                        <?php
                            $cartItemPriceValue = $cartItem->price;
                            $shouldShowProductPrice =
                                (! EcommerceHelper::hideProductPrice() || EcommerceHelper::isCartEnabled())
                                && (! EcommerceHelper::hideProductPriceWhenZero() || $cartItemPriceValue > 0);
                        ?>
                        <?php if($shouldShowProductPrice): ?>
                            <span class="cart_quantity">
                                <?php echo e($cartItem->qty); ?> x
                                <?php echo $__env->make(Theme::getThemeNamespace('partials.ecommerce.product-price'), [
                                    'product' => $product,
                                    'price' => $cartItem->price,
                                    'priceFormatted' => format_price($cartItem->price),
                                    'priceWrapperClassName' => 'cart_amount d-inline-block',
                                    'priceClassName' => '',
                                    'priceOriginalClassName' => '',
                                    'priceOriginalWrapperClassName' => '',
                                    'showSalePercentage' => false,
                                ], array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1]))->render(); ?>
                            </span>
                        <?php endif; ?>
                        <?php echo app(\Botble\Ecommerce\Supports\CartBundleHelper::class)->renderBundleBadge($cartItem); ?>

                    </li>
                <?php endif; ?>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        <?php endif; ?>
    </ul>
    <div class="cart_footer">
        <?php if(EcommerceHelper::isTaxEnabled()): ?>
            <p class="cart_total sub_total"><strong><?php echo e(__('Sub Total')); ?>:</strong> <span class="cart_price"><?php echo e(format_price(Cart::instance('cart')->rawSubTotal())); ?></span></p>
            <p class="cart_total sub_total"><strong><?php echo e(__('Tax')); ?>:</strong> <span class="cart_price"><?php echo e(format_price(Cart::instance('cart')->rawTax())); ?></span></p>
            <p class="cart_total"><strong><?php echo e(__('Total')); ?>:</strong> <span class="cart_price"><?php echo e(format_price(Cart::instance('cart')->rawSubTotal() + Cart::instance('cart')->rawTax())); ?></span></p>
        <?php else: ?>
            <p class="cart_total"><strong><?php echo e(__('Sub Total')); ?>:</strong> <span class="cart_price"><?php echo e(format_price(Cart::instance('cart')->rawSubTotal())); ?></span></p>
        <?php endif; ?>
        <p class="cart_buttons">
            <a href="<?php echo e(route('public.cart')); ?>" class="btn btn-fill-line view-cart"><?php echo e(__('View Cart')); ?></a>
            <?php if(session('tracked_start_checkout')): ?>
                <a href="<?php echo e(route('public.checkout.information', session('tracked_start_checkout'))); ?>" class="btn btn-fill-out checkout"><?php echo e(__('Checkout')); ?></a>
            <?php endif; ?>
        </p>
    </div>
<?php else: ?>
    <p class="text-center"><?php echo e(__('Your cart is empty!')); ?></p>
<?php endif; ?>
<?php /**PATH C:\www\test.fancyprofile.com\platform\themes/shopwise/partials/cart.blade.php ENDPATH**/ ?>