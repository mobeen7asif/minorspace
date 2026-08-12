<?php
    $priceClassName ??= null;
    $priceWrapperClassName ??= null;
?>

<span class="<?php echo e($priceWrapperClassName === null ? 'bb-product-price-text-old' : $priceWrapperClassName); ?>">
    <small>
        <del
            class="<?php echo e($priceClassName === null ? 'text-muted' : $priceClassName); ?>"
            data-bb-value="product-original-price"
            style="<?php echo \Illuminate\Support\Arr::toCssStyles(['display: none' => ! $product->isOnSale()]) ?>"
        ><?php echo e($product->price()->displayPriceOriginalAsText()); ?></del>
    </small>
</span>
<?php /**PATH C:\www\test.fancyprofile.com\platform\plugins\ecommerce\/resources/views/themes/includes/product-prices/original.blade.php ENDPATH**/ ?>