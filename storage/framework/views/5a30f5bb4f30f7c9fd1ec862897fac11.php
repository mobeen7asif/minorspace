<?php
    $titleAlignment = in_array($shortcode->title_alignment, ['start', 'center']) ? $shortcode->title_alignment : 'start';
?>

<div <?php echo $shortcode->htmlAttributes(); ?> class="section pt-0 small_pb">
    <div class="container">
        <div class="heading_tab_header text-<?php echo e($titleAlignment); ?>">
            <div class="heading_s2">
                <h2 class="h4"><?php echo BaseHelper::clean($shortcode->title); ?></h2>
            </div>
        </div>
        <div class="col-12">
            <div class="client_logo carousel_slider owl-carousel owl-theme nav_style3"
                 data-dots="false" data-nav="true" data-margin="30" data-loop="false" data-autoplay="true"
                 data-responsive='{"0":{"items": "2"}, "480":{"items": "3"}, "767":{"items": "4"}, "991":{"items": "5"}, "1199":{"items": "6"}}'>
                <?php $__currentLoopData = $brands; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $brand): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <div class="item">
                        <div class="cl_logo">
                            <?php if($brand->website): ?>
                                <a href="<?php echo e($brand->website); ?>">
                                    <img src="<?php echo e(RvMedia::getImageUrl($brand->logo, null, false, RvMedia::getDefaultImage())); ?>" alt="<?php echo e($brand->name); ?>" loading="lazy"/>
                                </a>
                            <?php else: ?>
                                <img src="<?php echo e(RvMedia::getImageUrl($brand->logo, null, false, RvMedia::getDefaultImage())); ?>" alt="<?php echo e($brand->name); ?>" loading="lazy"/>
                            <?php endif; ?>
                        </div>
                    </div>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            </div>
        </div>
    </div>
</div>
<?php /**PATH C:\www\test.fancyprofile.com\platform\themes/shopwise/partials/shortcodes/featured-brands/style-1.blade.php ENDPATH**/ ?>