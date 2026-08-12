<div class="number-items-available">
    <?php if($product->stock_status == 'on_backorder'): ?>
        <p class="text-warning fw-medium fs-6"><?php echo e(__('Warning: This product is on backorder and may take longer to ship.')); ?></p>
    <?php elseif($product->isOutOfStock()): ?>
        <span class="text-danger"><?php echo e(__('Out of stock')); ?></span>
    <?php else: ?>
        <?php if(! $productVariation): ?>
            <span class="text-danger"><?php echo e(__('Not available')); ?>

        <?php else: ?>
            <?php if($productVariation->stock_status == 'on_backorder'): ?>
                <p class="text-warning fw-medium fs-6"><?php echo e(__('Warning: This product is on backorder and may take longer to ship.')); ?></p>
            <?php elseif($productVariation->isOutOfStock()): ?>
                <span class="text-danger"><?php echo e(__('Out of stock')); ?></span>
            <?php elseif(! $productVariation->with_storehouse_management || $productVariation->quantity < 1): ?>
                <span class="text-success"><?php echo e(__('Available')); ?></span>
            <?php elseif($productVariation->quantity): ?>
                <span class="text-success">
                    <?php if(EcommerceHelper::showNumberOfProductsInProductSingle()): ?>
                        <?php if($productVariation->quantity !== 1): ?>
                            <?php echo e(__(':number products available', ['number' => $productVariation->quantity])); ?>

                        <?php else: ?>
                            <?php echo e(__(':number product available', ['number' => $productVariation->quantity])); ?>

                        <?php endif; ?>
                    <?php else: ?>
                        <?php echo e(__('In stock')); ?>

                    <?php endif; ?>
                </span>
           <?php endif; ?>
       <?php endif; ?>
    <?php endif; ?>
</div>
<?php /**PATH C:\www\test.fancyprofile.com\platform\themes/shopwise/views/ecommerce/includes/product-availability.blade.php ENDPATH**/ ?>