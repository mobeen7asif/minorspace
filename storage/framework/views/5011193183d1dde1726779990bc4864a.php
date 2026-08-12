<?php
    $itemsPerRow = $shortcode->products_per_row ?: get_products_per_row();
    $itemsPerRowOnMobile = theme_option('ecommerce_products_per_row_mobile', 2);
    $titleAlignment = in_array($shortcode->title_alignment, ['start', 'center']) ? $shortcode->title_alignment : 'center';
    $responsiveConfig = json_encode([
        '0' => ['items' => (string) $itemsPerRowOnMobile],
        '481' => ['items' => '2'],
        '768' => ['items' => '3'],
        '991' => ['items' => (string) $itemsPerRow],
    ]);
?>

<div <?php echo $shortcode->htmlAttributes(); ?> class="section small_pt small_pb">
    <div class="container">
        <div class="row">
            <?php if(is_plugin_active('ads') && $shortcode->ads_key && $ads = AdsManager::displayAds($shortcode->ads_key, ['class' => 'sale-banner'], ['class' => 'hover_effect1'])): ?>
                <div class="col-xl-3 d-none d-xl-block">
                    <?php echo $ads; ?>

                </div>
                <div class="col-xl-9">
            <?php else: ?>
                <div class="col-12">
            <?php endif; ?>
                <div class="row">
                    <div class="col-12">
                        <div class="heading_tab_header text-<?php echo e($titleAlignment); ?>">
                            <div class="heading_s2">
                                <h2 class="h4"><?php echo BaseHelper::clean($shortcode->title); ?></h2>
                            </div>
                            <div class="view_all">
                                <a href="<?php echo e(route('public.products')); ?>" class="text_default">
                                    <i class="linearicons-power"></i>
                                    <span><?php echo e(__('View All')); ?></span>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12">
                        <div class="product_slider carousel_slider owl-carousel owl-theme dot_style1" data-loop="true" data-margin="20" data-responsive='<?php echo $responsiveConfig; ?>'>
                            <?php $__currentLoopData = $products; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $product): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <div class="item">
                                    <?php echo Theme::partial('product-item', ['product' => $product]); ?>

                                </div>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<?php /**PATH C:\www\test.fancyprofile.com\platform\themes/shopwise/partials/shortcodes/trending-products/style-1.blade.php ENDPATH**/ ?>