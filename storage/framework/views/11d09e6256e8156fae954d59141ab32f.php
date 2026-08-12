<div class="col-lg-2 col-md-4 col-sm-6">
    <div class="widget">
        <h3 class="widget_title"><?php echo e($config['name']); ?></h3>
        <?php echo Menu::generateMenu(['slug' => $config['menu_id'], 'options' => ['class' => 'widget_links']]); ?>

    </div>
</div>
<?php /**PATH C:\www\test.fancyprofile.com\platform\themes/shopwise/////widgets/custom-menu/templates/frontend.blade.php ENDPATH**/ ?>