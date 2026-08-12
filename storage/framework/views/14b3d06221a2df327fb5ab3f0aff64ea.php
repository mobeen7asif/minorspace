<?php if (! $__env->hasRenderedOnce('d9b2a9b7-1090-4d53-be08-d28716364f73')): $__env->markAsRenderedOnce('d9b2a9b7-1090-4d53-be08-d28716364f73'); ?>
    <style>
        .shortcode-lazy-loading {
            position: relative;
            min-height: 12rem;
        }

        .loading-spinner {
            align-items: center;
            background: hsla(0, 0%, 100%, 0.5);
            display: flex;
            height: 100%;
            inset-inline-start: 0;
            justify-content: center;
            position: absolute;
            top: 0;
            width: 100%;
            z-index: 1;

            &:after {
                animation: loading-spinner-rotation 0.5s linear infinite;
                border-color: var(--primary-color) transparent var(--primary-color) transparent;
                border-radius: 50%;
                border-style: solid;
                border-width: 1px;
                content: ' ';
                display: block;
                height: 40px;
                position: absolute;
                top: calc(50% - 20px);
                width: 40px;
                z-index: 1;
            }
        }

        @keyframes loading-spinner-rotation {
            0% {
                transform: rotate(0deg);
            }

            100% {
                transform: rotate(360deg);
            }
        }
    </style>
<?php endif; ?>

<div
    class="shortcode-lazy-loading"
    data-name="<?php echo e($name); ?>"
    data-attributes="<?php echo e(json_encode($attributes)); ?>"
    <?php if(!empty($shortcodeId)): ?> data-shortcode-id="<?php echo e($shortcodeId); ?>" data-shortcode-name="<?php echo e($name); ?>" <?php endif; ?>
>
    <?php if(!empty($loadingView) && view()->exists($loadingView)): ?>
        <?php echo view($loadingView)->render(); ?>

    <?php else: ?>
        <div class="loading-spinner"></div>
    <?php endif; ?>
</div>
<?php /**PATH C:\www\test.fancyprofile.com\platform\packages\shortcode\/resources/views/partials/lazy-loading-placeholder.blade.php ENDPATH**/ ?>