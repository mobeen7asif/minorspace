<?php if(request()->ajax() && isset($products) && isset($parentProduct)): ?>
    <?php if($products->isNotEmpty()): ?>
        <?php
            $carouselConfig = apply_filters('ecommerce_cross_sale_carousel_config', [
                'rtl' => BaseHelper::siteLanguageDirection() == 'rtl',
                'appendArrows' => '.ec-cross-sale-arrows',
                'arrows' => true,
                'prevArrow' => '<button type="button" class="slick-prev slick-arrow" aria-label="' . __('Previous') . '"><svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><polyline points="15 18 9 12 15 6"></polyline></svg></button>',
                'nextArrow' => '<button type="button" class="slick-next slick-arrow" aria-label="' . __('Next') . '"><svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><polyline points="9 18 15 12 9 6"></polyline></svg></button>',
                'dots' => false,
                'autoplay' => false,
                'infinite' => false,
                'autoplaySpeed' => 3000,
                'speed' => 800,
                'slidesToShow' => 5,
                'slidesToScroll' => 1,
                'swipeToSlide' => true,
                'responsive' => [
                    [
                        'breakpoint' => 1400,
                        'settings' => [
                            'slidesToShow' => 4,
                        ],
                    ],
                    [
                        'breakpoint' => 1199,
                        'settings' => [
                            'slidesToShow' => 3,
                        ],
                    ],
                    [
                        'breakpoint' => 991,
                        'settings' => [
                            'slidesToShow' => 2,
                        ],
                    ],
                    [
                        'breakpoint' => 575,
                        'settings' => [
                            'arrows' => true,
                            'slidesToShow' => 2,
                            'slidesToScroll' => 1,
                        ],
                    ],
                ],
            ]);
        ?>
        <section class="ec-cross-sale-section">
            <div class="container">
                <div class="ec-cross-sale-wrapper">
                    <div class="ec-cross-sale-header">
                        <div class="ec-cross-sale-icon">
                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                <circle cx="9" cy="21" r="1"></circle>
                                <circle cx="20" cy="21" r="1"></circle>
                                <path d="M1 1h4l2.68 13.39a2 2 0 0 0 2 1.61h9.72a2 2 0 0 0 2-1.61L23 6H6"></path>
                            </svg>
                        </div>
                        <div class="ec-cross-sale-title">
                            <h4><?php echo e(__('Frequently Bought Together')); ?></h4>
                            <p><?php echo e(__('Customers who viewed this item also bought')); ?></p>
                        </div>
                    </div>

                    <div class="ec-cross-sale-slider">
                        <div class="ec-cross-sale-carousel slick-slides-carousel" data-slick="<?php echo e(json_encode($carouselConfig)); ?>">
                            <?php $__currentLoopData = $products; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $index => $product): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <?php
                                    $productPrice = $product->price();
                                    $salePrice = $productPrice->getPrice();
                                    $originalPrice = $productPrice->getPriceOriginal();
                                    $hasDiscount = $salePrice < $originalPrice;
                                    $shouldShowPrice =
                                        (! EcommerceHelper::hideProductPrice() || EcommerceHelper::isCartEnabled())
                                        && (! EcommerceHelper::hideProductPriceWhenZero() || $salePrice > 0);
                                ?>
                                <div class="ec-cross-sale-slide">
                                    <div class="ec-cross-sale-card">
                                        <?php if($index > 0): ?>
                                            <div class="ec-cross-sale-plus">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round">
                                                    <line x1="12" y1="5" x2="12" y2="19"></line>
                                                    <line x1="5" y1="12" x2="19" y2="12"></line>
                                                </svg>
                                            </div>
                                        <?php endif; ?>
                                        <div class="ec-cross-sale-card-inner">
                                            <div class="ec-cross-sale-thumb">
                                                <a href="<?php echo e($product->url); ?>">
                                                    <?php echo e(RvMedia::image($product->image, $product->name, 'medium', true)); ?>

                                                </a>
                                            </div>
                                            <div class="ec-cross-sale-content">
                                                <h3 class="ec-cross-sale-name">
                                                    <a href="<?php echo e($product->url); ?>" title="<?php echo e($product->name); ?>">
                                                        <?php echo e($product->name); ?>

                                                    </a>
                                                </h3>
                                                <?php if($shouldShowPrice): ?>
                                                    <div class="ec-cross-sale-price">
                                                        <span class="ec-cross-sale-price-current"><?php echo e(format_price($salePrice)); ?></span>
                                                        <?php if($hasDiscount): ?>
                                                            <span class="ec-cross-sale-price-old"><?php echo e(format_price($originalPrice)); ?></span>
                                                        <?php endif; ?>
                                                    </div>
                                                <?php endif; ?>
                                                <?php if(EcommerceHelper::isCartEnabled()): ?>
                                                    <button
                                                        type="button"
                                                        <?php if($hasVariations = $product->hasVariations): ?>
                                                            data-bb-toggle="quick-shop"
                                                            data-url="<?php echo e(route('public.ajax.quick-shop', ['slug' => $product->slug, 'reference_product' => $parentProduct->slug])); ?>"
                                                        <?php else: ?>
                                                            data-bb-toggle="add-to-cart"
                                                            data-show-toast-on-success="false"
                                                            data-url="<?php echo e(route('public.cart.add-to-cart')); ?>"
                                                            data-id="<?php echo e($product->id); ?>"
                                                            <?php echo EcommerceHelper::jsAttributes('add-to-cart', $product); ?>

                                                        <?php endif; ?>
                                                        class="ec-cross-sale-add-btn <?php echo e($hasVariations ? 'has-options' : ''); ?>"
                                                        <?php if($product->isOutOfStock()): echo 'disabled'; endif; ?>
                                                    >
                                                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                                            <circle cx="9" cy="21" r="1"></circle>
                                                            <circle cx="20" cy="21" r="1"></circle>
                                                            <path d="M1 1h4l2.68 13.39a2 2 0 0 0 2 1.61h9.72a2 2 0 0 0 2-1.61L23 6H6"></path>
                                                        </svg>
                                                        <?php if($hasVariations): ?>
                                                            <?php echo e(__('Select Options')); ?>

                                                        <?php else: ?>
                                                            <?php echo e(__('Add to Cart')); ?>

                                                        <?php endif; ?>
                                                    </button>
                                                <?php endif; ?>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        </div>
                        <div class="ec-cross-sale-arrows"></div>
                    </div>
                </div>
            </div>
        </section>
    <?php endif; ?>
<?php elseif(isset($parentProduct)): ?>
    <div data-bb-toggle="block-lazy-loading" data-url="<?php echo e(route('public.ajax.cross-sale-products', $parentProduct)); ?>">
        <section class="ec-cross-sale-skeleton">
            <div class="container">
                <div class="ec-cross-sale-skeleton-wrapper">
                    <div class="ec-cross-sale-skeleton-header">
                        <div class="skeleton skeleton-icon"></div>
                        <div class="skeleton-title-group">
                            <div class="skeleton skeleton-title"></div>
                            <div class="skeleton skeleton-subtitle"></div>
                        </div>
                    </div>
                    <div class="ec-cross-sale-skeleton-slider">
                        <?php for($i = 0; $i < 5; $i++): ?>
                            <div class="ec-cross-sale-skeleton-card">
                                <div class="skeleton skeleton-thumb"></div>
                                <div class="skeleton-content">
                                    <div class="skeleton skeleton-name"></div>
                                    <div class="skeleton skeleton-price"></div>
                                    <div class="skeleton skeleton-btn"></div>
                                </div>
                            </div>
                        <?php endfor; ?>
                    </div>
                    <div class="ec-cross-sale-skeleton-scrollbar">
                        <div class="skeleton-drag"></div>
                    </div>
                </div>
            </div>
        </section>
    </div>
<?php endif; ?>
<?php /**PATH C:\www\test.fancyprofile.com\platform\plugins\ecommerce\/resources/views/themes/includes/cross-sale-products.blade.php ENDPATH**/ ?>