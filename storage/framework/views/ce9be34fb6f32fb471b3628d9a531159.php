<?php
    $currentCustomer = auth('customer')->user();
    $isVendorOfProduct = $currentCustomer
        && $currentCustomer->is_vendor
        && isset($product)
        && $currentCustomer->store
        && $product->store_id == $currentCustomer->store->id;
?>

<?php $__currentLoopData = $reviews; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $review): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
    <?php if(! $review->is_approved && auth('customer')->id() != $review->customer_id) continue; ?>

    <?php
        $isCurrentCustomerReview = auth('customer')->check() && auth('customer')->id() == $review->customer_id;
        $canReply = $isVendorOfProduct && ! $review->reply;
        $canDeleteReply = $isVendorOfProduct && $review->reply && $review->reply->customer_id == $currentCustomer?->id;
    ?>

    <div class="<?php echo \Illuminate\Support\Arr::toCssClasses([
        'row pb-3 mb-3 review-item',
        'border-bottom' => ! $loop->last,
        'opacity-50' => ! $review->is_approved,
        'current-customer-review' => $isCurrentCustomerReview
    ]); ?>">
        <div class="col-auto">
            <img class="rounded-circle" src="<?php echo e($review->customer_avatar_url); ?>" alt="<?php echo e($review->display_name); ?>" width="60" height="60" style="object-fit: cover;">
        </div>
        <div class="col">
            <div class="d-flex flex-wrap align-items-center gap-2 mb-2 review-item__header">
                <div class="fw-medium">
                    <?php echo e($review->display_name); ?>

                </div>
                <?php if($isCurrentCustomerReview): ?>
                    <span class="badge bg-primary">
                        <?php echo e(trans('plugins/ecommerce::review.your_review')); ?>

                    </span>
                <?php endif; ?>
                <time class="text-muted small" datetime="<?php echo e($review->created_at->translatedFormat('Y-m-d\TH:i:sP')); ?>">
                    <?php echo e($review->created_at->diffForHumans()); ?>

                </time>
                <?php
                    $badgeType = $review->badge_type?->getValue() ?? \Botble\Ecommerce\Enums\ReviewBadgeEnum::AUTO;
                ?>
                <?php if($badgeType === \Botble\Ecommerce\Enums\ReviewBadgeEnum::AUTO && $review->order_created_at): ?>
                    <div class="small text-muted"><?php echo e(trans('plugins/ecommerce::review.purchased_at_time', ['time' => $review->order_created_at->diffForHumans()])); ?></div>
                <?php elseif($badgeType === \Botble\Ecommerce\Enums\ReviewBadgeEnum::PURCHASED): ?>
                    <div class="small text-muted"><?php echo e(trans('plugins/ecommerce::review.purchased_at_time', ['time' => $review->created_at->subHours(12)->diffForHumans()])); ?></div>
                <?php elseif($badgeType !== \Botble\Ecommerce\Enums\ReviewBadgeEnum::AUTO && $badgeType !== \Botble\Ecommerce\Enums\ReviewBadgeEnum::NONE): ?>
                    <div class="small text-muted"><?php echo e($review->badge_type->label()); ?></div>
                <?php endif; ?>
                <?php if(! $review->is_approved): ?>
                    <div class="small text-warning"><?php echo e(trans('plugins/ecommerce::review.waiting_for_approval')); ?></div>
                <?php endif; ?>

                <?php if($isCurrentCustomerReview): ?>
                    <div class="review-item__actions">
                        <a
                            href="javascript:void(0)"
                            class="text-danger delete-review-btn p-1"
                            data-review-id="<?php echo e($review->id); ?>"
                            data-confirm-message="<?php echo e(trans('plugins/ecommerce::review.are_you_sure_you_want_to_delete_your_review')); ?>"
                            title="<?php echo e(trans('plugins/ecommerce::review.delete_your_review')); ?>"
                        >
                            <?php if (isset($component)) { $__componentOriginal73995948b3bd877b76251b40caf28170 = $component; } ?>
<?php if (isset($attributes)) { $__attributesOriginal73995948b3bd877b76251b40caf28170 = $attributes; } ?>
<?php $component = Botble\Icon\View\Components\Icon::resolve(['name' => 'ti ti-trash'] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? $attributes->all() : [])); ?>
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
                        </a>
                    </div>
                <?php endif; ?>
            </div>

            <div class="mb-2 review-item__rating">
                <?php echo $__env->make(EcommerceHelper::viewPath('includes.rating-star'), ['avg' => $review->star, 'size' => 80], array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1]))->render(); ?>
            </div>

            <div class="review-item__body">
                <?php echo e($review->comment); ?>

            </div>

            <?php if(EcommerceHelper::isCustomerReviewImageUploadEnabled() && $review->images): ?>
                <div class="review-item__images mt-3">
                    <div class="row g-1 review-images">
                        <?php $__currentLoopData = $review->images; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $image): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <a href="<?php echo e(RvMedia::getImageUrl($image)); ?>" class="col-3 col-md-2 col-xl-1 position-relative">
                                <img src="<?php echo e(RvMedia::getImageUrl($image, 'thumb')); ?>" alt="<?php echo e($review->comment); ?>" class="img-thumbnail">
                            </a>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                    </div>
                </div>
            <?php endif; ?>

            <?php if($review->reply): ?>
                <div class="review-item__reply mt-3">
                    <div class="d-flex gap-3 p-3 rounded" style="background-color: #f8f9fa;">
                        <div class="flex-shrink-0">
                            <img class="rounded" src="<?php echo e($review->reply->responder_avatar_url); ?>" alt="<?php echo e($review->reply->responder_name); ?>" width="48" height="48" style="object-fit: cover;">
                        </div>
                        <div class="flex-grow-1">
                            <div class="d-flex justify-content-between align-items-start">
                                <div class="fw-semibold mb-1"><?php echo e(trans('plugins/ecommerce::review.seller_response')); ?></div>
                                <?php if($canDeleteReply): ?>
                                    <a
                                        href="javascript:void(0)"
                                        class="text-danger vendor-delete-reply-btn"
                                        data-review-id="<?php echo e($review->id); ?>"
                                        data-url="<?php echo e(route('public.reviews.reply.destroy', $review->id)); ?>"
                                        data-confirm-message="<?php echo e(trans('plugins/ecommerce::review.confirm_delete_reply')); ?>"
                                        title="<?php echo e(trans('plugins/ecommerce::review.delete_reply')); ?>"
                                    >
                                        <?php if (isset($component)) { $__componentOriginal73995948b3bd877b76251b40caf28170 = $component; } ?>
<?php if (isset($attributes)) { $__attributesOriginal73995948b3bd877b76251b40caf28170 = $attributes; } ?>
<?php $component = Botble\Icon\View\Components\Icon::resolve(['name' => 'ti ti-trash'] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? $attributes->all() : [])); ?>
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
                                    </a>
                                <?php endif; ?>
                            </div>
                            <div><?php echo e($review->reply->message); ?></div>
                        </div>
                    </div>
                </div>
            <?php elseif($canReply): ?>
                <div class="review-item__reply-form mt-2">
                    <a
                        href="javascript:void(0)"
                        class="vendor-reply-toggle-btn"
                        data-review-id="<?php echo e($review->id); ?>"
                        style="color: #6b7280; font-size: 13px; text-decoration: none;"
                    >
                        <?php if (isset($component)) { $__componentOriginal73995948b3bd877b76251b40caf28170 = $component; } ?>
<?php if (isset($attributes)) { $__attributesOriginal73995948b3bd877b76251b40caf28170 = $attributes; } ?>
<?php $component = Botble\Icon\View\Components\Icon::resolve(['name' => 'ti ti-message'] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? $attributes->all() : [])); ?>
<?php $component->withName('core::icon'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php if (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag): ?>
<?php $attributes = $attributes->except(\Botble\Icon\View\Components\Icon::ignoredParameterNames()); ?>
<?php endif; ?>
<?php $component->withAttributes(['style' => 'width: 14px; height: 14px; margin-right: 4px;']); ?>
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
                        <?php echo e(trans('plugins/ecommerce::review.reply')); ?>

                    </a>

                    <div
                        class="vendor-reply-form mt-3 d-none"
                        data-review-id="<?php echo e($review->id); ?>"
                        data-url="<?php echo e(route('public.reviews.reply', $review->id)); ?>"
                    >
                        <div class="mb-2">
                            <textarea
                                class="form-control vendor-reply-message"
                                rows="2"
                                placeholder="<?php echo e(trans('plugins/ecommerce::review.write_your_reply')); ?>"
                                style="font-size: 14px; padding: 8px 12px; border: 1px solid #d1d5db; border-radius: 6px; color: #374151;"
                            ></textarea>
                        </div>
                        <div class="d-flex" style="gap: 8px;">
                            <button type="button" class="vendor-reply-submit-btn" data-review-id="<?php echo e($review->id); ?>" style="display: inline-block; width: auto; padding: 6px 16px; font-size: 13px; font-weight: 500; background-color: var(--primary-color, #0d6efd); border: none; color: #fff; border-radius: 6px; cursor: pointer;">
                                <?php echo e(trans('plugins/ecommerce::review.submit_reply')); ?>

                            </button>
                            <button type="button" class="vendor-reply-cancel-btn" data-review-id="<?php echo e($review->id); ?>" style="display: inline-block; width: auto; padding: 6px 12px; font-size: 13px; background: transparent; border: none; color: #6b7280; cursor: pointer;">
                                <?php echo e(trans('plugins/ecommerce::review.cancel')); ?>

                            </button>
                        </div>
                    </div>
                </div>
            <?php endif; ?>
        </div>
    </div>
<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

<div class="tp-pagination">
    <?php echo e($reviews->links()); ?>

</div>
<?php /**PATH C:\www\test.fancyprofile.com\platform\plugins\ecommerce\/resources/views/themes/includes/review-list.blade.php ENDPATH**/ ?>