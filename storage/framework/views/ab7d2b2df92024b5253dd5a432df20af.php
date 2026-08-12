<div <?php echo $shortcode->htmlAttributes(); ?> class="section pb_20 small_pt">
    <div class="container">
        <div class="row">
            <?php for($i = 0; $i < count($ads); $i++): ?>
                <div class="col-md-<?php echo e(12 / count($ads)); ?>">
                    <?php echo $ads[$i]; ?>

                </div>
            <?php endfor; ?>
        </div>
    </div>
</div>
<?php /**PATH C:\www\test.fancyprofile.com\platform\themes/shopwise/partials/shortcodes/theme-ads/style-1.blade.php ENDPATH**/ ?>