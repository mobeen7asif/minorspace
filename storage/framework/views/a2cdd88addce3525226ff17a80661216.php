<?php
    if (! isset($product)) {
        return;
    }

    $price ??= $product->price()->getPrice();
    $isDisplayPriceOriginal ??= true;
    $priceWrapperClassName ??= null;
    $priceClassName ??= null;
    $priceOriginalClassName ??= null;
    $priceOriginalWrapperClassName ??= null;
    $shouldShowPrice =
        (! EcommerceHelper::hideProductPrice() || EcommerceHelper::isCartEnabled())
        && (! EcommerceHelper::hideProductPriceWhenZero() || $price > 0);
?>

<?php if($shouldShowPrice): ?>
    <div class="<?php echo e($priceWrapperClassName === null ? 'bb-product-price mb-3' : $priceWrapperClassName); ?>">
        <span
            class="<?php echo e($priceClassName === null ? 'bb-product-price-text fw-bold' : $priceClassName); ?>"
            data-bb-value="product-price"
        ><?php echo e($priceFormatted ?? $product->price()->displayAsText()); ?></span>

        <?php if($isDisplayPriceOriginal): ?>
            <?php echo $__env->make(EcommerceHelper::viewPath('includes.product-prices.original'), [
                'priceWrapperClassName' => $priceOriginalWrapperClassName,
                'priceClassName' => $priceOriginalClassName,
            ], array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1]))->render(); ?>
        <?php endif; ?>
    </div>
<?php endif; ?>
<?php /**PATH C:\www\test.fancyprofile.com\platform\plugins\ecommerce\/resources/views/themes/includes/product-price.blade.php ENDPATH**/ ?>