<?php
    $titleAlignment = in_array($shortcode->title_alignment, ['start', 'center']) ? $shortcode->title_alignment : 'start';
?>

<div <?php echo $shortcode->htmlAttributes(); ?> class="section <?php if(!$shortcode->background_color): ?> bg_default <?php endif; ?> small_pt small_pb"
     <?php if($shortcode->background_color || $shortcode->text_color): ?>
     style="<?php if($shortcode->background_color): ?>background-color: <?php echo e($shortcode->background_color); ?>;<?php endif; ?> <?php if($shortcode->text_color): ?>color: <?php echo e($shortcode->text_color); ?>;<?php endif; ?>"
     <?php endif; ?>>
    <div class="container">
        <div class="row align-items-center">
            <div class="col-md-6">
                <div class="newsletter_text text-<?php echo e($titleAlignment); ?> <?php if(!$shortcode->text_color): ?> text_white <?php endif; ?>"
                     <?php if($shortcode->text_color): ?> style="color: <?php echo e($shortcode->text_color); ?>;" <?php endif; ?>>
                    <h3 <?php if($shortcode->text_color): ?> style="color: <?php echo e($shortcode->text_color); ?>;" <?php endif; ?>><?php echo BaseHelper::clean($shortcode->title); ?></h3>
                    <?php if($shortcode->description): ?>
                        <p <?php if($shortcode->text_color): ?> style="color: <?php echo e($shortcode->text_color); ?>;" <?php endif; ?>><?php echo BaseHelper::clean($shortcode->description); ?></p>
                    <?php endif; ?>
                    <?php if($shortcode->subtitle): ?>
                        <p <?php if($shortcode->text_color): ?> style="color: <?php echo e($shortcode->text_color); ?>;" <?php endif; ?>><?php echo BaseHelper::clean($shortcode->subtitle); ?></p>
                    <?php endif; ?>
                </div>
            </div>
            <div class="col-md-6">
                <div class="newsletter_form2 rounded_input">
                    <?php echo Theme::partial('shortcodes.newsletter-form.form'); ?>

                </div>
            </div>
        </div>
    </div>
</div>
<!-- START SECTION SUBSCRIBE NEWSLETTER -->
<?php /**PATH C:\www\test.fancyprofile.com\platform\themes/shopwise/partials/shortcodes/newsletter-form/style-1.blade.php ENDPATH**/ ?>