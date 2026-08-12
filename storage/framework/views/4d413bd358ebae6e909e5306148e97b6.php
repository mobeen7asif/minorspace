<?php
    $titleAlignment = in_array($shortcode->title_alignment, ['start', 'center']) ? $shortcode->title_alignment : 'start';
?>

<div <?php echo $shortcode->htmlAttributes(); ?> class="section small_pb small_pt">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="heading_s4 text-<?php echo e($titleAlignment); ?>">
                    <h2><?php echo BaseHelper::clean($shortcode->title); ?></h2>
                </div>
                <p class="text-<?php echo e($titleAlignment); ?> leads">
                    <?php if($shortcode->description): ?>
                        <?php echo BaseHelper::clean($shortcode->description); ?>

                    <?php endif; ?>
                    <?php if($shortcode->subtitle): ?>
                        <?php echo BaseHelper::clean($shortcode->subtitle); ?>

                    <?php endif; ?>
                </p>
            </div>
        </div>
        <div class="row align-items-center">
            <div class="col-12">
                <div class="cat_slider cat_style1 mt-4 mt-md-0 carousel_slider owl-carousel owl-theme nav_style5"
                     data-loop="false" data-dots="false" data-nav="true" data-margin="30"
                     data-responsive='{"0":{"items": "2"}, "480":{"items": "3"}, "576":{"items": "4"}, "768":{"items": "5"}, "991":{"items": "6"}, "1199":{"items": "7"}}'>
                    <?php $__currentLoopData = $categories; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $category): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <div class="item">
                            <div class="categories_box">
                                <a href="<?php echo e($category->url); ?>">
                                    <img src="<?php echo e(RvMedia::getImageUrl($category->image, null, false, RvMedia::getDefaultImage())); ?>" alt="category-image" loading="lazy" />
                                    <span><?php echo e($category->name); ?></span>
                                </a>
                            </div>
                        </div>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                </div>
            </div>
        </div>
    </div>
</div>
<?php /**PATH C:\www\test.fancyprofile.com\platform\themes/shopwise/partials/shortcodes/featured-product-categories/style-1.blade.php ENDPATH**/ ?>