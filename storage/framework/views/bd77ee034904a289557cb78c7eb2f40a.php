<div <?php echo $shortcode->htmlAttributes(); ?> class="section">
    <div class="container">
        <div class="row g-0">
            <?php for($i = 1; $i < 4; $i++): ?>
                <div class="col-md-4">
                    <div class="icon_box icon_box_style1">
                        <div class="icon">
                            <i class="<?php echo BaseHelper::clean($shortcode->{'icon' . $i}); ?>"></i>
                        </div>
                        <div class="icon_box_content">
                            <p class="icon_box_title"><?php echo BaseHelper::clean($shortcode->{'title' . $i}); ?></p>
                            <?php if($shortcode->{'description' . $i}): ?>
                                <p><?php echo BaseHelper::clean($shortcode->{'description' . $i}); ?></p>
                            <?php endif; ?>
                            <?php if($shortcode->{'subtitle' . $i}): ?>
                                <p><?php echo BaseHelper::clean($shortcode->{'subtitle' . $i}); ?></p>
                            <?php endif; ?>
                        </div>
                    </div>
                </div>
            <?php endfor; ?>
        </div>
    </div>
</div>
<?php /**PATH C:\www\test.fancyprofile.com\platform\themes/shopwise/partials/shortcodes/our-features/style-1.blade.php ENDPATH**/ ?>