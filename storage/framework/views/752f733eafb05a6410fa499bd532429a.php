<?php
    $price ??= $product->price()->getPrice();
    $priceWrapperClassName ??= 'product_price';
    $priceClassName ??= 'price';
    $priceOriginalWrapperClassName ??= 'product-price-original';
    $priceOriginalClassName ??= 'text-muted';
    $isDisplayPriceOriginal ??= true;
    $showSalePercentage ??= true;
    $saleWrapperClassName ??= 'on_sale';
    $salePercentageClassName ??= 'on_sale_percentage_text';
    $saleTextSuffix ??= __('Off');
    $shouldShowPrice =
        (! EcommerceHelper::hideProductPrice() || EcommerceHelper::isCartEnabled())
        && (! EcommerceHelper::hideProductPriceWhenZero() || $price > 0);
?>

<?php if($shouldShowPrice): ?>
    <?php echo $__env->make(EcommerceHelper::viewPath('includes.product-price'), [
        'product' => $product,
        'price' => $price,
        'priceFormatted' => $priceFormatted ?? null,
        'priceWrapperClassName' => $priceWrapperClassName,
        'priceClassName' => $priceClassName,
        'priceOriginalWrapperClassName' => $priceOriginalWrapperClassName,
        'priceOriginalClassName' => $priceOriginalClassName,
        'isDisplayPriceOriginal' => $isDisplayPriceOriginal,
    ], array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1]))->render(); ?>

    <?php if($showSalePercentage && $product->isOnSale()): ?>
        <div class="<?php echo e($saleWrapperClassName); ?>">
            <span class="<?php echo e($salePercentageClassName); ?>"><?php echo e(get_sale_percentage($product->price, $product->front_sale_price)); ?></span>
            <?php if($saleTextSuffix !== ''): ?>
                <span><?php echo e($saleTextSuffix); ?></span>
            <?php endif; ?>
        </div>
    <?php endif; ?>
<?php endif; ?>
<?php /**PATH C:\www\test.fancyprofile.com\platform\themes/shopwise/partials/ecommerce/product-price.blade.php ENDPATH**/ ?>