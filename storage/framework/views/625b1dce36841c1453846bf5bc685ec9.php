<?php
    Theme::set('pageName', $product->name);
    Theme::asset()->usePath()->add('lightGallery-css', 'plugins/lightGallery/css/lightgallery.min.css');
    Theme::asset()->container('footer')->usePath()
        ->add('lightGallery-js', 'plugins/lightGallery/js/lightgallery.min.js', ['jquery']);
?>

<div class="section">
    <div class="container">
        <div class="row">
            <div class="col-lg-5 col-md-5 mb-4 mb-md-0">
                <div class="product-image">
                    <div class="product_img_box">
                        <img id="product_img" src="<?php echo e(RvMedia::getImageUrl($product->image, 'medium', false, RvMedia::getDefaultImage())); ?>" data-zoom-enable="<?php echo e(theme_option('enabled_product_image_zoom', 'yes') == 'yes' ? 'true' : 'false'); ?>" data-zoom-image="<?php echo e(RvMedia::getImageUrl($product->image, null, false, RvMedia::getDefaultImage())); ?>" alt="<?php echo e($product->name); ?>" loading="lazy" />
                        <a href="#" class="product_img_zoom" title="Zoom">
                            <span class="linearicons-zoom-in"></span>
                        </a>
                    </div>
                    <div id="pr_item_gallery" class="product_gallery_item slick_slider" data-slides-to-show="4" data-slides-to-scroll="1" data-infinite="false">
                        <?php $__currentLoopData = $productImages; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $img): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <div class="item">
                                <a href="#" class="product_gallery_item <?php if($loop->first): ?> active <?php endif; ?>" data-image="<?php echo e(RvMedia::getImageUrl($img, 'medium')); ?>" data-zoom-image="<?php echo e(RvMedia::getImageUrl($img)); ?>">
                                    <img src="<?php echo e(RvMedia::getImageUrl($img, 'thumb')); ?>" alt="<?php echo e($product->name); ?>" loading="lazy"/>
                                </a>
                            </div>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                    </div>
                </div>
            </div>
            <div class="col-lg-7 col-md-7">
                <div class="pr_detail bb-product-detail">
                <div class="product_description">
                    <h4 class="product_title"><a href="<?php echo e($product->url); ?>"><?php echo e($product->name); ?></a></h4>
                    <?php echo $__env->make(Theme::getThemeNamespace('partials.ecommerce.product-price'), [
                        'product' => $product,
                        'priceWrapperClassName' => 'product_price',
                        'priceClassName' => 'price product-sale-price-text',
                        'priceOriginalClassName' => 'product-price-text',
                        'saleWrapperClassName' => 'on_sale',
                        'salePercentageClassName' => 'on_sale_percentage_text',
                        'saleTextSuffix' => __('Off'),
                    ], array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1]))->render(); ?>
                    <?php if(EcommerceHelper::isReviewEnabled()): ?>
                        <?php if($product->reviews_count > 0): ?>
                            <div class="rating_wrap">
                                <div class="rating">
                                    <div class="product_rate" style="width: <?php echo e($product->reviews_avg * 20); ?>%"></div>
                                </div>
                                <span class="rating_num">(<?php echo e($product->reviews_count); ?>)</span>
                            </div>
                        <?php endif; ?>
                    <?php endif; ?>
                    <div class="clearfix"></div>
                    <?php if($product->tax_description): ?>
                        <div class="product-tax-description mt-2 mb-2">
                            <small class="text-muted">
                                <?php echo e($product->tax_description); ?>

                            </small>
                        </div>
                    <?php endif; ?>
                    <div class="pr_desc">
                        <?php echo apply_filters('ecommerce_before_product_description', null, $product); ?>

                        <p><?php echo BaseHelper::clean($product->description); ?></p>
                        <?php echo apply_filters('ecommerce_after_product_description', null, $product); ?>

                    </div>

                    <div class="cart_extra">
                        <form class="add-to-cart-form" method="POST" action="<?php echo e(route('public.cart.add-to-cart')); ?>">
                            <?php echo csrf_field(); ?>

                            <?php if($product->has_variation): ?>
                                <div class="pr_switch_wrap">
                                    <?php echo render_product_swatches($product, [
                                        'selected' => $selectedAttrs,
                                        'view'     => Theme::getThemeNamespace() . '::views.ecommerce.attributes.swatches-renderer'
                                    ]); ?>

                                </div>
                            <?php endif; ?>

                           <?php echo render_product_options($product); ?>


                            <hr />

                            <?php echo apply_filters(ECOMMERCE_PRODUCT_DETAIL_EXTRA_HTML, null, $product); ?>

                            <input type="hidden" name="id" id="hidden-product-id" value="<?php echo e(($product->is_variation || !$product->defaultVariation->product_id) ? $product->id : $product->defaultVariation->product_id); ?>"/>

                            <?php echo $__env->make(Theme::getThemeNamespace('views.ecommerce.includes.product-availability'), array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1]))->render(); ?>

                            <br>

                            <?php if(EcommerceHelper::isCartEnabled()): ?>
                                <div class="cart-product-quantity">
                                    <div class="quantity float-start">
                                        <input type="button" value="-" class="minus">
                                        <input type="text" name="qty" value="1" title="<?php echo e(__('Qty')); ?>" class="qty" size="4">
                                        <input type="button" value="+" class="plus">
                                    </div> &nbsp;
                                </div>
                                <br>
                            <?php endif; ?>
                            <div class="cart_btn">
                                <?php if(EcommerceHelper::isCartEnabled()): ?>
                                    <button class="btn btn-fill-out <?php if($product->isOutOfStock()): ?> btn-disabled <?php endif; ?>" type="submit" <?php if($product->isOutOfStock()): ?> disabled <?php endif; ?>><i class="icon-basket-loaded"></i> <?php echo e(__('Add to cart')); ?></button>
                                <?php endif; ?>
                                <?php if(EcommerceHelper::isQuickBuyButtonEnabled()): ?>
                                    &nbsp;
                                    <button class="btn btn-dark <?php if($product->isOutOfStock()): ?> btn-disabled <?php endif; ?>" type="submit" <?php if($product->isOutOfStock()): ?> disabled <?php endif; ?> name="checkout"><?php echo e(__('Quick Buy')); ?></button>
                                <?php endif; ?>
                                <?php if(EcommerceHelper::isCompareEnabled()): ?>
                                    <a class="add_compare js-add-to-compare-button" data-url="<?php echo e(route('public.compare.add', $product->id)); ?>" href="#" title="<?php echo e(__('Compare')); ?>"><i class="icon-shuffle"></i></a>
                                <?php endif; ?>
                                <?php if(EcommerceHelper::isWishlistEnabled()): ?>
                                    <a class="add_wishlist js-add-to-wishlist-button" href="#" data-url="<?php echo e(route('public.wishlist.add', $product->id)); ?>" title="<?php echo e(__('Wishlist')); ?>"><i class="icon-heart"></i></a>
                                <?php endif; ?>
                            </div>
                            <br>
                            <div class="success-message text-success" style="display: none;">
                                <span></span>
                            </div>
                            <div class="error-message text-danger" style="display: none;">
                                <span></span>
                            </div>
                        </form>
                    </div>
                    <hr />
                    <ul class="product-meta">
                        <li id="product-sku" <?php if(!$product->sku): ?> style="display: none" <?php endif; ?>><?php echo e(__('SKU')); ?>: <span><?php echo e($product->sku); ?></span></li>
                        <?php if($product->categories->isNotEmpty()): ?>
			                <li><?php echo e(__('Category')); ?>:
                                <?php $__currentLoopData = $product->categories; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $category): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    <a href="<?php echo e($category->url); ?>"><?php echo e($category->name); ?></a><?php if(!$loop->last): ?>,<?php endif; ?>
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                            </li>
			            <?php endif; ?>
                        <?php if($product->tags->isNotEmpty()): ?>
                            <li><?php echo e(__('Tags')); ?>:
                                <?php $__currentLoopData = $product->tags; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $tag): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    <a href="<?php echo e($tag->url); ?>" rel="tag"><?php echo e($tag->name); ?></a><?php if(!$loop->last): ?>,<?php endif; ?>
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                            </li>
                        <?php endif; ?>
                    </ul>

                    <div class="product_share">
                        <span><?php echo e(__('Share')); ?>:</span>

                        <?php echo Theme::renderSocialSharing($product->url, SeoHelper::getDescription(), $product->image); ?>

                    </div>
                </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-12">
                <div class="large_divider clearfix"></div>
            </div>
        </div>

        <?php if(EcommerceHelper::isEnabledUpSaleProducts()): ?>
            <?php echo $__env->make(EcommerceHelper::viewPath('includes.up-sale-products'), ['parentProduct' => $product], array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1]))->render(); ?>
        <?php endif; ?>

        <?php if(EcommerceHelper::isEnabledCrossSaleProducts()): ?>
            <?php echo $__env->make(EcommerceHelper::viewPath('includes.cross-sale-products'), ['parentProduct' => $product], array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1]))->render(); ?>
        <?php endif; ?>

        <div class="row">
            <div class="col-12">
                <div class="tab-style3">
                    <ul class="nav nav-tabs" role="tablist" aria-label="Product tabs">
                        <li class="nav-item">
                            <a class="nav-link active" id="description-tab" data-bs-toggle="tab" href="#description" role="tab" aria-controls="description" aria-selected="true"><?php echo e(__('Description')); ?></a>
                        </li>
                        <?php if(EcommerceHelper::isProductSpecificationEnabled() && $product->specificationAttributes->where('pivot.hidden', false)->isNotEmpty()): ?>
                            <li class="nav-item">
                                <a class="nav-link" id="specification-tab" data-bs-toggle="tab" href="#tab-specification" role="tab" aria-controls="specification" aria-selected="true"><?php echo e(__('Specification')); ?></a>
                            </li>
                        <?php endif; ?>
                        <?php if(EcommerceHelper::isReviewEnabled()): ?>
                            <li class="nav-item">
                                <a class="nav-link" id="reviews-tab" data-bs-toggle="tab" href="#reviews" role="tab" aria-controls="reviews" aria-selected="false"><?php echo e(__('Reviews')); ?> (<?php echo e($product->reviews_count); ?>)</a>
                            </li>
                        <?php endif; ?>
                        <?php if(is_plugin_active('faq') && $product->faq_items): ?>
                            <li class="nav-item">
                                <a class="nav-link" data-bs-toggle="tab" href="#tab-faq"><?php echo e(__('Questions and Answers')); ?></a>
                            </li>
                        <?php endif; ?>
                    </ul>
                    <div class="tab-content shop_info_tab">
                        <div class="tab-pane fade show active" id="description" role="tabpanel" aria-labelledby="description-tab">
                            <div id="app" class="ck-content">
                                <?php echo BaseHelper::clean($product->content); ?>

                            </div>
                            <br />
                            <?php echo apply_filters(BASE_FILTER_PUBLIC_COMMENT_AREA, null, $product); ?>

                        </div>

                        <?php if(EcommerceHelper::isProductSpecificationEnabled() && $product->specificationAttributes->where('pivot.hidden', false)->isNotEmpty()): ?>
                            <div class="tab-pane fade" id="tab-specification" role="tabpanel" aria-labelledby="specification-tab">
                                <div class="tp-product-details-additional-info">
                                    <?php echo $__env->make(EcommerceHelper::viewPath('includes.product-specification'), array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1]))->render(); ?>
                                </div>
                            </div>
                        <?php endif; ?>

                        <?php if(is_plugin_active('faq') && $product->faq_items): ?>
                            <div class="tab-pane fade faqs-list" id="tab-faq">
                                <div class="accordion" id="faq-accordion">
                                    <?php $__currentLoopData = $product->faq_items; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $faq): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                        <div class="card">
                                            <div class="card-header" id="heading-faq-<?php echo e($loop->index); ?>">
                                                <h2 class="mb-0">
                                                    <button class="btn btn-link btn-block text-start <?php if(!$loop->first): ?> collapsed <?php endif; ?>" type="button" data-bs-toggle="collapse" data-bs-target="#collapse-faq-<?php echo e($loop->index); ?>" aria-expanded="true" aria-controls="collapse-faq-<?php echo e($loop->index); ?>">
                                                        <?php echo BaseHelper::clean($faq[0]['value']); ?>

                                                    </button>
                                                </h2>
                                            </div>

                                            <div id="collapse-faq-<?php echo e($loop->index); ?>" class="collapse <?php if($loop->first): ?> show <?php endif; ?>" aria-labelledby="heading-faq-<?php echo e($loop->index); ?>" data-bs-parent="#faq-accordion">
                                                <div class="card-body">
                                                    <?php echo BaseHelper::clean($faq[1]['value']); ?>

                                                </div>
                                            </div>
                                        </div>
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                </div>
                            </div>
                        <?php endif; ?>

                        <?php if(EcommerceHelper::isReviewEnabled()): ?>
                            <div class="tab-pane fade product-reviews-container" id="reviews" role="tabpanel" aria-labelledby="reviews-tab">
                                <?php echo $__env->make('plugins/ecommerce::themes.includes.reviews', array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1]))->render(); ?>
                            </div>
                        <?php endif; ?>
                    </div>
                </div>
            </div>
        </div>

        <?php
            $relatedProducts = get_related_products($product);
        ?>
        <?php if($relatedProducts->isNotEmpty()): ?>
            <div class="row shop_container grid mt-5">
                <div class="col-12">
                    <div class="heading_s1">
                        <h3><?php echo e(__('Related Products')); ?></h3>
                    </div>
                    <div class="releted_product_slider carousel_slider owl-carousel owl-theme" data-margin="20" data-responsive='{"0":{"items": "1"}, "481":{"items": "2"}, "768":{"items": "3"}, "1199":{"items": "4"}}'>
                        <?php $__currentLoopData = $relatedProducts; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $related): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <?php echo Theme::partial('product-item-grid', ['product' => $related]); ?>

                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                    </div>
                </div>
            </div>
        <?php endif; ?>
    </div>
</div>
<?php /**PATH C:\www\test.fancyprofile.com\platform\themes/shopwise/views/ecommerce/product.blade.php ENDPATH**/ ?>