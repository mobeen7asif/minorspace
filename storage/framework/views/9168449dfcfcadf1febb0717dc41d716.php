<?php
    $titleAlignment = in_array($shortcode->title_alignment, ['start', 'center']) ? $shortcode->title_alignment : 'start';
?>

<div <?php echo $shortcode->htmlAttributes(); ?> class="section pt-0 pb_20 product-blocks">
    <div class="container">
        <div class="row">
            <?php $__currentLoopData = $data; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $products): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <div class="col-lg-<?php echo e(12 / $data->count()); ?>">
                    <div class="row">
                        <div class="col-12">
                            <div class="heading_tab_header text-<?php echo e($titleAlignment); ?>">
                                <div class="heading_s2">
                                    <h2 class="h4"><?php echo BaseHelper::clean($shortcode->{$key . '_title'}); ?></h2>
                                </div>
                                <div class="view_all">
                                    <a href="<?php echo e(route('public.products')); ?>" class="text_default"><span><?php echo e(__('View All')); ?></span></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div
                                class="product_slider carousel_slider product_list owl-carousel owl-theme nav_style5" data-nav="true"
                                data-dots="false" data-loop="false" data-margin="20"
                                data-responsive='{"0":{"items": "1"}, "380":{"items": "1"}, "640":{"items": "2"}, "991":{"items": "1"}}'>
                                <?php $__currentLoopData = $products->chunk(3); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $chunk): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    <div class="item">
                                        <?php $__currentLoopData = $chunk; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $product): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                            <?php echo Theme::partial('product-item', ['product' => $product]); ?>

                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                    </div>
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                            </div>
                        </div>
                    </div>
                </div>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        </div>
    </div>
</div>
<?php /**PATH C:\www\test.fancyprofile.com\platform\themes/shopwise/partials/shortcodes/product-blocks/style-1.blade.php ENDPATH**/ ?>