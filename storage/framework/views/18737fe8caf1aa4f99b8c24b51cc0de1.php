<?php if($data->isNotEmpty()): ?>
    <?php
        $style = $shortcode->style;
        if (! in_array($style, ['style-1', 'style-2', 'style-3', 'style-4'])) {
            $style = 'style-1';
        }
    ?>
    <?php echo $__env->make(Theme::getThemeNamespace('partials.shortcodes.product-blocks.' . $style), array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1]))->render(); ?>
<?php endif; ?>
<?php /**PATH C:\www\test.fancyprofile.com\platform\themes/shopwise/partials/shortcodes/product-blocks/index.blade.php ENDPATH**/ ?>