<?php
    $titleAlignment = in_array($shortcode->title_alignment, ['start', 'center']) ? $shortcode->title_alignment : 'start';
?>

<div <?php echo $shortcode->htmlAttributes(); ?> class="section pt-0 pb-0">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="heading_tab_header text-<?php echo e($titleAlignment); ?>">
                    <div class="heading_s2">
                        <h2 class="h4"><?php echo BaseHelper::clean($shortcode->title); ?></h2>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div
                     class="product_slider carousel_slider owl-carousel owl-theme nav_style3" data-loop="false"
                     data-dots="false" data-nav="true" data-margin="30"
                     data-responsive='{"0":{"items": "1"}, "650":{"items": "2"}, "1199":{"items": "2"}}'>
                    <?php $__currentLoopData = $flashSales; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $flashSale): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <?php $__currentLoopData = $flashSale->products; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $product): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <?php if(! EcommerceHelper::showOutOfStockProducts() && $product->isOutOfStock()) continue; ?>

                            <div class="item">
                                <?php echo Theme::partial('flash-sale-product', compact('product', 'flashSale')); ?>

                            </div>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                </div>
            </div>
        </div>
    </div>
</div>
<?php /**PATH C:\www\test.fancyprofile.com\platform\themes/shopwise/partials/shortcodes/flash-sale/style-1.blade.php ENDPATH**/ ?>