<div class="deal_wrap">
    <?php if($product->isOutOfStock()): ?>
        <span class="pr_flash" style="background-color: #000"><?php echo e(__('Out Of Stock')); ?></span>
    <?php else: ?>
        <?php if($product->productLabels->count()): ?>
            <?php $__currentLoopData = $product->productLabels; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $label): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <span class="pr_flash" <?php echo $label->css_styles; ?>><?php echo e($label->name); ?></span>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        <?php endif; ?>
    <?php endif; ?>
    <div class="product_img">
        <a href="<?php echo e($product->url); ?>">
            <img src="<?php echo e(RvMedia::getImageUrl($product->image, 'medium', false, RvMedia::getDefaultImage())); ?>" alt="<?php echo e($product->name); ?>" loading="lazy" />
        </a>
    </div>
    <div class="deal_content">
        <div class="product_info">
            <h3 class="product_title"><a href="<?php echo e($product->url); ?>"><?php echo e($product->name); ?></a></h3>
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
            <?php if(EcommerceHelper::isReviewEnabled()): ?>
                <div class="rating_wrap">
                    <div class="rating">
                        <div class="product_rate" style="width: <?php echo e($product->reviews_avg * 20); ?>%"></div>
                    </div>
                    <span class="rating_num">(<?php echo e($product->reviews_count); ?>)</span>
                </div>
            <?php endif; ?>
        </div>
        <div class="deal_progress">
            <span class="stock-sold"><?php echo e(__('Already Sold')); ?>: <strong><?php echo e($product->pivot->sold); ?></strong></span>
            <span class="stock-available"><?php echo e(__('Available')); ?>: <strong><?php echo e($product->pivot->quantity - $product->pivot->sold); ?></strong></span>
            <div class="progress">
                <div class="progress-bar" role="progressbar" aria-label="<?php echo e(__('Already Sold')); ?>" aria-valuenow="<?php echo e($product->pivot->quantity > 0 ? ($product->pivot->sold / $product->pivot->quantity) * 100 : 0); ?>" aria-valuemin="0" aria-valuemax="100" style="width:<?php echo e($product->pivot->quantity > 0 ? ($product->pivot->sold / $product->pivot->quantity) * 100 : 0); ?>%"> <?php echo e($product->pivot->quantity > 0 ? ($product->pivot->sold / $product->pivot->quantity) * 100 : 0); ?>% </div>
            </div>
        </div>
        <div class="countdown_time countdown_style4 mb-4" data-time="<?php echo e($flashSale->end_date); ?>"></div>
    </div>
</div>
<?php /**PATH C:\www\test.fancyprofile.com\platform\themes/shopwise/partials/flash-sale-product.blade.php ENDPATH**/ ?>