<?php if($product): ?>
    <div class="product">
        <?php if($product->isOutOfStock()): ?>
            <span class="pr_flash bg-secondary"><?php echo e(__('Out Of Stock')); ?></span>
        <?php else: ?>
            <?php if($product->productLabels->count()): ?>
                <?php $__currentLoopData = $product->productLabels; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $label): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <span class="pr_flash" <?php echo $label->css_styles; ?>><?php echo e($label->name); ?></span>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            <?php else: ?>
                <?php if($product->front_sale_price !== $product->price): ?>
                    <div class="pr_flash bg-success" dir="ltr"><?php echo e(get_sale_percentage($product->price, $product->front_sale_price)); ?></div>
                <?php endif; ?>
            <?php endif; ?>
        <?php endif; ?>
        <div class="position-relative">
            <div class="product_img">
                <a href="<?php echo e($product->url); ?>">
                    <img src="<?php echo e(RvMedia::getImageUrl($product->image, 'medium', false, RvMedia::getDefaultImage())); ?>" alt="<?php echo e($product->name); ?>" loading="lazy" />
                </a>
            </div>
            <div class="product_action_box">
                <ul class="list_none pr_action_btn">
                    <?php if(EcommerceHelper::isCartEnabled() && !$product->isOutOfStock()): ?>
                        <?php if($product->variations->isNotEmpty()): ?>
                            <li class="add-to-cart">
                                <a
                                    class="quick-shop-button"
                                    href="#"
                                    data-url="<?php echo e(route('public.ajax.quick-shop', $product->slug)); ?>"
                                    data-bs-toggle="modal"
                                    data-bs-target="#quick-shop-modal"
                                    title="<?php echo e(__('Select options')); ?>"
                                ><i class="icon-basket-loaded"></i> <?php echo e(__('Select options')); ?></a>
                            </li>
                        <?php else: ?>
                            <li class="add-to-cart"><a class="add-to-cart-button" data-id="<?php echo e($product->id); ?>" href="#" data-url="<?php echo e(route('public.cart.add-to-cart')); ?>" title="<?php echo e(__('Cart')); ?>"><i class="icon-basket-loaded"></i> <?php echo e(__('Add To Cart')); ?></a></li>
                        <?php endif; ?>
                    <?php endif; ?>
                    <?php if(EcommerceHelper::isCompareEnabled()): ?>
                        <li><a href="#" class="js-add-to-compare-button" data-url="<?php echo e(route('public.compare.add', $product->id)); ?>" title="<?php echo e(__('Compare')); ?>"><i class="icon-shuffle"></i></a></li>
                    <?php endif; ?>
                    <?php if(theme_option('enabled_quick_view', 'yes') == 'yes'): ?>
                        <li><a href="#" data-bb-toggle="quick-view-product" data-url="<?php echo e(route('public.ajax.quick-view', $product->id)); ?>" rel="nofollow" title="<?php echo e(__('Quick view')); ?>"><i class="icon-magnifier-add"></i></a></li>
                    <?php endif; ?>
                    <?php if(EcommerceHelper::isWishlistEnabled()): ?>
                        <li><a class="js-add-to-wishlist-button" href="#" data-url="<?php echo e(route('public.wishlist.add', $product->id)); ?>" title="<?php echo e(__('Wishlist')); ?>"><i class="icon-heart"></i></a></li>
                    <?php endif; ?>
                </ul>
            </div>
        </div>
        <div class="product_info">
            <div class="product_title"><a href="<?php echo e($product->url); ?>"><?php echo e($product->name); ?></a></div>

            <?php echo apply_filters('ecommerce_before_product_price_in_listing', null, $product); ?>

            <?php echo $__env->make(Theme::getThemeNamespace('partials.ecommerce.product-price'), [
                'product' => $product,
                'priceWrapperClassName' => 'product_price',
                'priceClassName' => 'price',
                'priceOriginalWrapperClassName' => '',
                'priceOriginalClassName' => '',
                'saleWrapperClassName' => 'on_sale',
                'salePercentageClassName' => '',
                'saleTextSuffix' => __('Off'),
            ], array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1]))->render(); ?>
            <?php echo apply_filters('ecommerce_after_product_price_in_listing', null, $product); ?>


            <?php if(EcommerceHelper::isReviewEnabled()): ?>
                <div class="rating_wrap">
                    <div class="rating">
                        <div class="product_rate" style="width: <?php echo e($product->reviews_avg * 20); ?>%"></div>
                    </div>
                    <span class="rating_num">(<?php echo e($product->reviews_count); ?>)</span>
                </div>
            <?php endif; ?>
            <div class="pr_desc">
                <p><?php echo BaseHelper::clean($product->description); ?></p>
            </div>
            <?php if(count($product->variationAttributeSwatchesForProductList)): ?>
                <div class="pr_switch_wrap">
                    <div class="product_color_switch">
                        <?php $__currentLoopData = $product->variationAttributeSwatchesForProductList->unique('attribute_id'); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $attribute): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <?php if($attribute->display_layout == 'visual'): ?>
                                <span <?php if($attribute->image): ?> style="background-image: url(<?php echo e(RvMedia::getImageUrl($attribute->image)); ?>);" <?php else: ?> data-color="<?php echo e($attribute->color); ?>" <?php endif; ?>></span>
                            <?php endif; ?>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                    </div>
                </div>
            <?php endif; ?>
            <div class="list_product_action_box">
                <ul class="list_none pr_action_btn">
                    <?php if(EcommerceHelper::isCartEnabled() && !$product->isOutOfStock()): ?>
                        <?php if($product->variations->isNotEmpty()): ?>
                            <li class="add-to-cart">
                                <a
                                    class="quick-shop-button"
                                    href="#"
                                    data-url="<?php echo e(route('public.ajax.quick-shop', $product->slug)); ?>"
                                    data-bs-toggle="modal"
                                    data-bs-target="#quick-shop-modal"
                                ><i class="icon-basket-loaded"></i> <?php echo e(__('Select options')); ?></a>
                            </li>
                        <?php else: ?>
                            <li class="add-to-cart"><a class="add-to-cart-button" data-id="<?php echo e($product->id); ?>" href="#" data-url="<?php echo e(route('public.cart.add-to-cart')); ?>"><i class="icon-basket-loaded"></i> <?php echo e(__('Add To Cart')); ?></a></li>
                        <?php endif; ?>
                    <?php endif; ?>

                    <?php if(EcommerceHelper::isCompareEnabled()): ?>
                        <li><a href="#" class="js-add-to-compare-button" data-url="<?php echo e(route('public.compare.add', $product->id)); ?>"><i class="icon-shuffle"></i></a></li>
                    <?php endif; ?>

                    <?php if(theme_option('enabled_quick_view', 'yes') == 'yes'): ?>
                        <li><a href="#" data-bb-toggle="quick-view-product" data-url="<?php echo e(route('public.ajax.quick-view', $product->id)); ?>" rel="nofollow"><i class="icon-magnifier-add"></i></a></li>
                    <?php endif; ?>

                    <?php if(EcommerceHelper::isWishlistEnabled()): ?>
                        <li><a class="js-add-to-wishlist-button" href="#" data-url="<?php echo e(route('public.wishlist.add', $product->id)); ?>"><i class="icon-heart"></i></a></li>
                    <?php endif; ?>
                </ul>
            </div>
        </div>
    </div>
<?php endif; ?>
<?php /**PATH C:\www\test.fancyprofile.com\platform\themes/shopwise/partials/product-item-grid.blade.php ENDPATH**/ ?>