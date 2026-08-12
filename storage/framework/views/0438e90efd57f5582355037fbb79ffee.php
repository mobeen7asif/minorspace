<?php if (! $__env->hasRenderedOnce('77466273-c70d-482e-86c5-2bb2ad9dd635')): $__env->markAsRenderedOnce('77466273-c70d-482e-86c5-2bb2ad9dd635'); ?>
    <div
        class="offcanvas offcanvas-end"
        tabindex="-1"
        id="notification-sidebar"
        aria-labelledby="notification-sidebar-label"
        data-url="<?php echo e(route('notifications.index')); ?>"
        data-count-url="<?php echo e(route('notifications.count-unread')); ?>"
    >
        <button
            type="button"
            class="btn-close text-reset"
            data-bs-dismiss="offcanvas"
            aria-label="Close"
        ></button>

        <div class="notification-content"></div>
    </div>

    <script src="<?php echo e(asset('vendor/core/core/base/js/notification.js')); ?>"></script>
<?php endif; ?>
<?php /**PATH C:\www\test.fancyprofile.com\platform\core\base\/resources/views/notification/notification.blade.php ENDPATH**/ ?>