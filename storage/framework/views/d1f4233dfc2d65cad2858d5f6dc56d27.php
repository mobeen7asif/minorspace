<?php
    $style = $shortcode->style;
    if (! in_array($style, ['style-1', 'style-3'])) {
        $style = 'style-1';
    }
?>
<?php echo $__env->make(Theme::getThemeNamespace('partials.shortcodes.featured-brands.' . $style), array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1]))->render(); ?>
<?php /**PATH C:\www\test.fancyprofile.com\platform\themes/shopwise/partials/shortcodes/featured-brands/index.blade.php ENDPATH**/ ?>