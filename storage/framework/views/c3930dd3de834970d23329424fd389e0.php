<div class="banner_section slide_medium shop_banner_slider staggered-animation-wrap">
    <?php if($collapsingProductCategories): ?>
        <div class="container">
            <div class="row">
                <div class="col-lg-9 offset-lg-3">
    <?php endif; ?>
        <div id="carouselExampleControls" class="carousel slide light_arrow" data-bs-ride="carousel">
            <div class="carousel-inner">
                <?php $__currentLoopData = $sliders->loadMissing('metadata'); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $slider): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <?php
                        $tabletImage = $slider->getMetaData('tablet_image', true) ?: $slider->image;
                        $mobileImage = $slider->getMetaData('mobile_image', true) ?: $tabletImage;
                    ?>

                    <div class="carousel-item <?php if($loop->first): ?> active <?php endif; ?>"
                        data-img-src="<?php echo e(RvMedia::getImageUrl($slider->image, null, false, RvMedia::getDefaultImage())); ?>"
                        <?php if($tabletImage): ?> data-tablet-img-src="<?php echo e(RvMedia::getImageUrl($tabletImage, null, false, RvMedia::getDefaultImage())); ?>" <?php endif; ?>
                        <?php if($mobileImage): ?> data-mobile-img-src="<?php echo e(RvMedia::getImageUrl($mobileImage, null, false, RvMedia::getDefaultImage())); ?>" <?php endif; ?>
                    >
                        <div class="banner_slide_content banner_content_inner">
                            <div class="col-lg-8 col-10">
                                <div class="banner_content overflow-hidden">
                                    <?php if($slider->description): ?>
                                        <p class="banner_content_subtitle mb-3 staggered-animation fw-light" data-animation="slideInLeft" data-animation-delay="0.5s"><?php echo e($slider->description); ?></p>
                                    <?php endif; ?>
                                    <?php if($slider->title): ?>
                                        <h2 class="staggered-animation" data-animation="slideInLeft" data-animation-delay="1s"><?php echo e($slider->title); ?></h2>
                                    <?php endif; ?>
                                    <?php if($slider->link): ?>
                                        <a class="btn btn-fill-out rounded-0 staggered-animation text-uppercase" href="<?php echo e($slider->link); ?>"
                                            data-animation="slideInLeft" data-animation-delay="1.5s"><?php echo BaseHelper::clean($slider->getMetaData('button_text', true) ?: __('Shop Now')); ?></a>
                                    <?php endif; ?>
                                </div>
                            </div>
                        </div>
                    </div>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            </div>
            <div class="carousel-indicators indicators_style1">
                <?php $__currentLoopData = $sliders; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $slider): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <button type="button" data-bs-target="#carouselExampleControls" data-bs-slide-to="<?php echo e($loop->index); ?>" <?php if($loop->first): ?> class="active" <?php endif; ?> aria-current="<?php echo e($loop->first ? 'true' : 'false'); ?>" aria-label="Slide <?php echo e($loop->iteration); ?>"></button>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            </div>
        </div>
    <?php if($collapsingProductCategories): ?>
                </div>
            </div>
        </div>
    <?php endif; ?>
</div>
<?php /**PATH C:\www\test.fancyprofile.com\platform\themes/shopwise/partials/shortcodes/simple-slider/style-1.blade.php ENDPATH**/ ?>