<div class="<?php echo \Illuminate\Support\Arr::toCssClasses(['col-12', 'col-md-8' => $showAvgRating]); ?>">
    <h4><?php echo e(trans('plugins/ecommerce::review.add_your_review')); ?></h4>

    <?php if(isset($checkReview) && ! $checkReview['error']): ?>
        <p>
            <?php echo e(trans('plugins/ecommerce::ecommerce.your_email_address_will_not_be_published_required_')); ?>

            <span class="required"></span>
        </p>
    <?php endif; ?>

    <?php if(auth()->guard('customer')->guest()): ?>
        <p class="text-danger">
            <?php echo BaseHelper::clean(
                trans('plugins/ecommerce::review.please_login_to_write_review', ['link' => route('customer.login')]),
            ); ?>

        </p>
    <?php endif; ?>

    <?php if(isset($checkReview) && $checkReview['error']): ?>
        <?php
            $alertClass = match($checkReview['type']) {
                'already_reviewed' => 'review-info-alert',
                default => 'review-warning-alert'
            };
            $iconClass = match($checkReview['type']) {
                'already_reviewed' => 'info-icon',
                default => 'warning-icon'
            };
            $contentClass = match($checkReview['type']) {
                'already_reviewed' => 'info-content',
                default => 'warning-content'
            };
            $titleClass = match($checkReview['type']) {
                'already_reviewed' => 'info-title',
                default => 'warning-title'
            };
            $messageClass = match($checkReview['type']) {
                'already_reviewed' => 'info-message',
                default => 'warning-message'
            };
            $actionsClass = match($checkReview['type']) {
                'already_reviewed' => 'info-actions',
                default => 'warning-actions'
            };
            $buttonClass = match($checkReview['type']) {
                'already_reviewed' => 'btn btn-outline-info btn-sm',
                default => 'btn btn-outline-warning btn-sm'
            };
        ?>
        <div class="<?php echo e($alertClass); ?> mt-4">
            <div class="<?php echo e($iconClass); ?>">
                <?php if($checkReview['type'] === 'already_reviewed'): ?>
                    <?php if (isset($component)) { $__componentOriginal73995948b3bd877b76251b40caf28170 = $component; } ?>
<?php if (isset($attributes)) { $__attributesOriginal73995948b3bd877b76251b40caf28170 = $attributes; } ?>
<?php $component = Botble\Icon\View\Components\Icon::resolve(['name' => 'ti ti-circle-check'] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? $attributes->all() : [])); ?>
<?php $component->withName('core::icon'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php if (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag): ?>
<?php $attributes = $attributes->except(\Botble\Icon\View\Components\Icon::ignoredParameterNames()); ?>
<?php endif; ?>
<?php $component->withAttributes([]); ?>
<?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__attributesOriginal73995948b3bd877b76251b40caf28170)): ?>
<?php $attributes = $__attributesOriginal73995948b3bd877b76251b40caf28170; ?>
<?php unset($__attributesOriginal73995948b3bd877b76251b40caf28170); ?>
<?php endif; ?>
<?php if (isset($__componentOriginal73995948b3bd877b76251b40caf28170)): ?>
<?php $component = $__componentOriginal73995948b3bd877b76251b40caf28170; ?>
<?php unset($__componentOriginal73995948b3bd877b76251b40caf28170); ?>
<?php endif; ?>
                <?php elseif($checkReview['type'] === 'purchase_required'): ?>
                    <?php if (isset($component)) { $__componentOriginal73995948b3bd877b76251b40caf28170 = $component; } ?>
<?php if (isset($attributes)) { $__attributesOriginal73995948b3bd877b76251b40caf28170 = $attributes; } ?>
<?php $component = Botble\Icon\View\Components\Icon::resolve(['name' => 'ti ti-shopping-cart'] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? $attributes->all() : [])); ?>
<?php $component->withName('core::icon'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php if (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag): ?>
<?php $attributes = $attributes->except(\Botble\Icon\View\Components\Icon::ignoredParameterNames()); ?>
<?php endif; ?>
<?php $component->withAttributes([]); ?>
<?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__attributesOriginal73995948b3bd877b76251b40caf28170)): ?>
<?php $attributes = $__attributesOriginal73995948b3bd877b76251b40caf28170; ?>
<?php unset($__attributesOriginal73995948b3bd877b76251b40caf28170); ?>
<?php endif; ?>
<?php if (isset($__componentOriginal73995948b3bd877b76251b40caf28170)): ?>
<?php $component = $__componentOriginal73995948b3bd877b76251b40caf28170; ?>
<?php unset($__componentOriginal73995948b3bd877b76251b40caf28170); ?>
<?php endif; ?>
                <?php else: ?>
                    <?php if (isset($component)) { $__componentOriginal73995948b3bd877b76251b40caf28170 = $component; } ?>
<?php if (isset($attributes)) { $__attributesOriginal73995948b3bd877b76251b40caf28170 = $attributes; } ?>
<?php $component = Botble\Icon\View\Components\Icon::resolve(['name' => 'ti ti-alert-triangle'] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? $attributes->all() : [])); ?>
<?php $component->withName('core::icon'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php if (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag): ?>
<?php $attributes = $attributes->except(\Botble\Icon\View\Components\Icon::ignoredParameterNames()); ?>
<?php endif; ?>
<?php $component->withAttributes([]); ?>
<?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__attributesOriginal73995948b3bd877b76251b40caf28170)): ?>
<?php $attributes = $__attributesOriginal73995948b3bd877b76251b40caf28170; ?>
<?php unset($__attributesOriginal73995948b3bd877b76251b40caf28170); ?>
<?php endif; ?>
<?php if (isset($__componentOriginal73995948b3bd877b76251b40caf28170)): ?>
<?php $component = $__componentOriginal73995948b3bd877b76251b40caf28170; ?>
<?php unset($__componentOriginal73995948b3bd877b76251b40caf28170); ?>
<?php endif; ?>
                <?php endif; ?>
            </div>
            <div class="<?php echo e($contentClass); ?>">
                <div class="<?php echo e($titleClass); ?>">
                    <?php if($checkReview['type'] === 'already_reviewed'): ?>
                        <?php echo e(trans('plugins/ecommerce::review.thank_you_for_your_review')); ?>

                    <?php elseif($checkReview['type'] === 'purchase_required'): ?>
                        <?php echo e(trans('plugins/ecommerce::ecommerce.purchase_required')); ?>

                    <?php else: ?>
                        <?php echo e(trans('plugins/ecommerce::review.review_not_available')); ?>

                    <?php endif; ?>
                </div>
                <div class="<?php echo e($messageClass); ?>">
                    <?php echo e($checkReview['message']); ?>

                </div>
                <?php if($checkReview['type'] === 'purchase_required'): ?>
                    <div class="<?php echo e($actionsClass); ?>">
                        <a href="<?php echo e(route('public.products')); ?>" class="<?php echo e($buttonClass); ?>">
                            <?php if (isset($component)) { $__componentOriginal73995948b3bd877b76251b40caf28170 = $component; } ?>
<?php if (isset($attributes)) { $__attributesOriginal73995948b3bd877b76251b40caf28170 = $attributes; } ?>
<?php $component = Botble\Icon\View\Components\Icon::resolve(['name' => 'ti ti-shopping-bag'] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? $attributes->all() : [])); ?>
<?php $component->withName('core::icon'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php if (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag): ?>
<?php $attributes = $attributes->except(\Botble\Icon\View\Components\Icon::ignoredParameterNames()); ?>
<?php endif; ?>
<?php $component->withAttributes([]); ?>
<?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__attributesOriginal73995948b3bd877b76251b40caf28170)): ?>
<?php $attributes = $__attributesOriginal73995948b3bd877b76251b40caf28170; ?>
<?php unset($__attributesOriginal73995948b3bd877b76251b40caf28170); ?>
<?php endif; ?>
<?php if (isset($__componentOriginal73995948b3bd877b76251b40caf28170)): ?>
<?php $component = $__componentOriginal73995948b3bd877b76251b40caf28170; ?>
<?php unset($__componentOriginal73995948b3bd877b76251b40caf28170); ?>
<?php endif; ?>
                            <?php echo e(trans('plugins/ecommerce::products.browse_products')); ?>

                        </a>
                    </div>
                <?php elseif($checkReview['type'] === 'already_reviewed'): ?>
                    <div class="<?php echo e($actionsClass); ?>">
                        <a href="<?php echo e(route('customer.product-reviews')); ?>" class="<?php echo e($buttonClass); ?>">
                            <?php if (isset($component)) { $__componentOriginal73995948b3bd877b76251b40caf28170 = $component; } ?>
<?php if (isset($attributes)) { $__attributesOriginal73995948b3bd877b76251b40caf28170 = $attributes; } ?>
<?php $component = Botble\Icon\View\Components\Icon::resolve(['name' => 'ti ti-star'] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? $attributes->all() : [])); ?>
<?php $component->withName('core::icon'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php if (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag): ?>
<?php $attributes = $attributes->except(\Botble\Icon\View\Components\Icon::ignoredParameterNames()); ?>
<?php endif; ?>
<?php $component->withAttributes([]); ?>
<?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__attributesOriginal73995948b3bd877b76251b40caf28170)): ?>
<?php $attributes = $__attributesOriginal73995948b3bd877b76251b40caf28170; ?>
<?php unset($__attributesOriginal73995948b3bd877b76251b40caf28170); ?>
<?php endif; ?>
<?php if (isset($__componentOriginal73995948b3bd877b76251b40caf28170)): ?>
<?php $component = $__componentOriginal73995948b3bd877b76251b40caf28170; ?>
<?php unset($__componentOriginal73995948b3bd877b76251b40caf28170); ?>
<?php endif; ?>
                            <?php echo e(trans('plugins/ecommerce::review.view_your_reviews')); ?>

                        </a>
                    </div>
                <?php endif; ?>
            </div>
        </div>
    <?php else: ?>
        <?php if (isset($component)) { $__componentOriginald83dae5750a07af1a413e54a0071b325 = $component; } ?>
<?php if (isset($attributes)) { $__attributesOriginald83dae5750a07af1a413e54a0071b325 = $attributes; } ?>
<?php $component = Illuminate\View\AnonymousComponent::resolve(['view' => '8def1252668913628243c4d363bee1ef::form.index','data' => ['url' => route('public.reviews.create'),'method' => 'post','files' => true]] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? $attributes->all() : [])); ?>
<?php $component->withName('core::form'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php if (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag): ?>
<?php $attributes = $attributes->except(\Illuminate\View\AnonymousComponent::ignoredParameterNames()); ?>
<?php endif; ?>
<?php $component->withAttributes(['url' => \Illuminate\View\Compilers\BladeCompiler::sanitizeComponentAttribute(route('public.reviews.create')),'method' => 'post','files' => true]); ?>
            <input type="hidden" name="product_id" value="<?php echo e($product->id); ?>">

            <div class="d-flex align-items-center mb-3">
                <label class="form-label mb-0 required" for="rating"><?php echo e(trans('plugins/ecommerce::review.your_rating')); ?></label>
                <div class="form-rating-stars ms-2">
                    <?php for($i = 5; $i >= 1; $i--): ?>
                        <input
                            class="btn-check"
                            id="rating-star-<?php echo e($i); ?>"
                            name="star"
                            type="radio"
                            value="<?php echo e($i); ?>"
                            <?php if($i === 5): echo 'checked'; endif; ?>
                        >
                        <label for="rating-star-<?php echo e($i); ?>" title="<?php echo e($i); ?> stars">
                            <?php if (isset($component)) { $__componentOriginal73995948b3bd877b76251b40caf28170 = $component; } ?>
<?php if (isset($attributes)) { $__attributesOriginal73995948b3bd877b76251b40caf28170 = $attributes; } ?>
<?php $component = Botble\Icon\View\Components\Icon::resolve(['name' => 'ti ti-star-filled'] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? $attributes->all() : [])); ?>
<?php $component->withName('core::icon'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php if (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag): ?>
<?php $attributes = $attributes->except(\Botble\Icon\View\Components\Icon::ignoredParameterNames()); ?>
<?php endif; ?>
<?php $component->withAttributes([]); ?>
<?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__attributesOriginal73995948b3bd877b76251b40caf28170)): ?>
<?php $attributes = $__attributesOriginal73995948b3bd877b76251b40caf28170; ?>
<?php unset($__attributesOriginal73995948b3bd877b76251b40caf28170); ?>
<?php endif; ?>
<?php if (isset($__componentOriginal73995948b3bd877b76251b40caf28170)): ?>
<?php $component = $__componentOriginal73995948b3bd877b76251b40caf28170; ?>
<?php unset($__componentOriginal73995948b3bd877b76251b40caf28170); ?>
<?php endif; ?>
                        </label>
                    <?php endfor; ?>
                </div>
            </div>

            <div class="mb-3">
                <label for="comment" class="<?php echo \Illuminate\Support\Arr::toCssClasses(['form-label', 'required' => EcommerceHelper::isReviewCommentRequired()]); ?>">
                    <?php echo e(trans('plugins/ecommerce::review.review')); ?>:
                </label>
                <textarea
                    class="form-control"
                    name="comment"
                    <?php if(EcommerceHelper::isReviewCommentRequired()): ?> required <?php endif; ?>
                    rows="8"
                    placeholder="<?php echo e(trans('plugins/ecommerce::review.write_your_review')); ?>"
                    <?php if(! auth('customer')->check()): echo 'disabled'; endif; ?>
                ></textarea>
            </div>

            <?php if(EcommerceHelper::isCustomerReviewImageUploadEnabled()): ?>
                <script type="text/x-custom-template" id="review-image-template">
                    <span class="image-viewer__item" data-id="__id__">
                        <img src="<?php echo e(RvMedia::getDefaultImage()); ?>" alt="Preview" class="img-responsive d-block">
                        <span class="image-viewer__icon-remove">
                            <?php if (isset($component)) { $__componentOriginal73995948b3bd877b76251b40caf28170 = $component; } ?>
<?php if (isset($attributes)) { $__attributesOriginal73995948b3bd877b76251b40caf28170 = $attributes; } ?>
<?php $component = Botble\Icon\View\Components\Icon::resolve(['name' => 'ti ti-x'] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? $attributes->all() : [])); ?>
<?php $component->withName('core::icon'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php if (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag): ?>
<?php $attributes = $attributes->except(\Botble\Icon\View\Components\Icon::ignoredParameterNames()); ?>
<?php endif; ?>
<?php $component->withAttributes([]); ?>
<?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__attributesOriginal73995948b3bd877b76251b40caf28170)): ?>
<?php $attributes = $__attributesOriginal73995948b3bd877b76251b40caf28170; ?>
<?php unset($__attributesOriginal73995948b3bd877b76251b40caf28170); ?>
<?php endif; ?>
<?php if (isset($__componentOriginal73995948b3bd877b76251b40caf28170)): ?>
<?php $component = $__componentOriginal73995948b3bd877b76251b40caf28170; ?>
<?php unset($__componentOriginal73995948b3bd877b76251b40caf28170); ?>
<?php endif; ?>
                        </span>
                    </span>
                </script>

                <div class="image-upload__viewer d-flex">
                    <div class="image-viewer__list position-relative">
                        <div class="image-upload__uploader-container">
                            <div class="d-table">
                                <div class="image-upload__uploader">
                                    <?php if (isset($component)) { $__componentOriginal73995948b3bd877b76251b40caf28170 = $component; } ?>
<?php if (isset($attributes)) { $__attributesOriginal73995948b3bd877b76251b40caf28170 = $attributes; } ?>
<?php $component = Botble\Icon\View\Components\Icon::resolve(['name' => 'ti ti-photo'] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? $attributes->all() : [])); ?>
<?php $component->withName('core::icon'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php if (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag): ?>
<?php $attributes = $attributes->except(\Botble\Icon\View\Components\Icon::ignoredParameterNames()); ?>
<?php endif; ?>
<?php $component->withAttributes([]); ?>
<?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__attributesOriginal73995948b3bd877b76251b40caf28170)): ?>
<?php $attributes = $__attributesOriginal73995948b3bd877b76251b40caf28170; ?>
<?php unset($__attributesOriginal73995948b3bd877b76251b40caf28170); ?>
<?php endif; ?>
<?php if (isset($__componentOriginal73995948b3bd877b76251b40caf28170)): ?>
<?php $component = $__componentOriginal73995948b3bd877b76251b40caf28170; ?>
<?php unset($__componentOriginal73995948b3bd877b76251b40caf28170); ?>
<?php endif; ?>
                                    <div class="image-upload__text"><?php echo e(trans('plugins/ecommerce::ecommerce.upload_photos')); ?></div>
                                    <input
                                        class="image-upload__file-input"
                                        name="images[]"
                                        data-max-files="<?php echo e(EcommerceHelper::reviewMaxFileNumber()); ?>"
                                        data-max-size="<?php echo e(EcommerceHelper::reviewMaxFileSize(true)); ?>"
                                        data-max-size-message="<?php echo e(trans('validation.max.file', ['attribute' => '__attribute__', 'max' => '__max__'])); ?>"
                                        type="file"
                                        accept="image/png,image/jpeg,image/jpg"
                                        multiple="multiple"
                                    >
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div role="alert" class="image-upload-info alert alert-info p-2">
                    <div class="small d-flex align-items-center gap-1">
                        <?php if (isset($component)) { $__componentOriginal73995948b3bd877b76251b40caf28170 = $component; } ?>
<?php if (isset($attributes)) { $__attributesOriginal73995948b3bd877b76251b40caf28170 = $attributes; } ?>
<?php $component = Botble\Icon\View\Components\Icon::resolve(['name' => 'ti ti-info-circle'] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? $attributes->all() : [])); ?>
<?php $component->withName('core::icon'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php if (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag): ?>
<?php $attributes = $attributes->except(\Botble\Icon\View\Components\Icon::ignoredParameterNames()); ?>
<?php endif; ?>
<?php $component->withAttributes([]); ?>
<?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__attributesOriginal73995948b3bd877b76251b40caf28170)): ?>
<?php $attributes = $__attributesOriginal73995948b3bd877b76251b40caf28170; ?>
<?php unset($__attributesOriginal73995948b3bd877b76251b40caf28170); ?>
<?php endif; ?>
<?php if (isset($__componentOriginal73995948b3bd877b76251b40caf28170)): ?>
<?php $component = $__componentOriginal73995948b3bd877b76251b40caf28170; ?>
<?php unset($__componentOriginal73995948b3bd877b76251b40caf28170); ?>
<?php endif; ?>

                        <?php echo e(trans('plugins/ecommerce::review.upload_photos_limit', [
                            'total' => EcommerceHelper::reviewMaxFileNumber(),
                            'max' => EcommerceHelper::reviewMaxFileSize(),
                        ])); ?>

                    </div>
                </div>
            <?php endif; ?>

            <button
                type="submit"
                class="<?php echo \Illuminate\Support\Arr::toCssClasses([
                    $reviewButtonClass ?? 'btn btn-primary',
                    'disabled' => ! auth('customer')->check(),
                ]); ?>"
                <?php if(! auth('customer')->check()): echo 'disabled'; endif; ?>
            >
                <?php echo e(trans('plugins/ecommerce::ecommerce.submit')); ?>

            </button>
         <?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__attributesOriginald83dae5750a07af1a413e54a0071b325)): ?>
<?php $attributes = $__attributesOriginald83dae5750a07af1a413e54a0071b325; ?>
<?php unset($__attributesOriginald83dae5750a07af1a413e54a0071b325); ?>
<?php endif; ?>
<?php if (isset($__componentOriginald83dae5750a07af1a413e54a0071b325)): ?>
<?php $component = $__componentOriginald83dae5750a07af1a413e54a0071b325; ?>
<?php unset($__componentOriginald83dae5750a07af1a413e54a0071b325); ?>
<?php endif; ?>
    <?php endif; ?>
</div>
<?php /**PATH C:\www\test.fancyprofile.com\platform\plugins\ecommerce\/resources/views/themes/includes/review-form.blade.php ENDPATH**/ ?>