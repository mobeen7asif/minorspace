<?php if (! $__env->hasRenderedOnce('2f2f3086-b82a-4258-897c-415d8b6d1fbb')): $__env->markAsRenderedOnce('2f2f3086-b82a-4258-897c-415d8b6d1fbb'); ?>
    <script>
        var lazyLoadShortcodeBlocks = function() {
            document.querySelectorAll('.shortcode-lazy-loading').forEach(function(element) {
                var name = element.getAttribute('data-name');
                var attributes = JSON.parse(element.getAttribute('data-attributes'));
                var shortcodeId = element.getAttribute('data-shortcode-id');

                const url = '<?php echo e(route('public.ajax.render-ui-block')); ?>';
                const csrfToken = '<?php echo e(csrf_token()); ?>';

                const urlParams = new URLSearchParams(window.location.search);
                const refLang = urlParams.get('ref_lang');

                document.body.classList.add('lazy-loading-active');

                const requestBody = {
                    name,
                    shortcodeId,
                    attributes: {
                        ...attributes
                    }
                };

                if (refLang) {
                    requestBody.ref_lang = refLang;
                }

                fetch(url, {
                        method: 'POST',
                        headers: {
                            'Content-Type': 'application/json',
                            'Accept': 'application/json',
                            'X-CSRF-TOKEN': csrfToken
                        },
                        body: JSON.stringify(requestBody)
                    })
                    .then(response => {
                        if (!response.ok) {
                            throw new Error('Network response was not ok');
                        }
                        return response.json();
                    })
                    .then(({
                        error,
                        data
                    }) => {
                        if (error) {
                            return;
                        }

                        const tempDiv = document.createElement('div');
                        tempDiv.innerHTML = data;
                        const firstChild = tempDiv.firstElementChild;
                        if (firstChild) {
                            firstChild.classList.add('shortcode-lazy-loading-loaded');

                            const shortcodeId = element.getAttribute('data-shortcode-id');
                            if (shortcodeId && !firstChild.getAttribute('data-shortcode-id')) {
                                firstChild.setAttribute('data-shortcode-id', shortcodeId);
                                firstChild.setAttribute('data-shortcode-name', name);
                            }

                            tempDiv.querySelectorAll('.wow').forEach(function(el) {
                                el.classList.remove('wow');
                                el.style.visibility = 'visible';
                            });

                            data = tempDiv.innerHTML;
                        }

                        const scripts = tempDiv.querySelectorAll('script');

                        element.outerHTML = data;

                        scripts.forEach(function(oldScript) {
                            const newScript = document.createElement('script');
                            if (oldScript.src) {
                                newScript.src = oldScript.src;
                            } else {
                                newScript.textContent = oldScript.textContent;
                            }
                            Array.from(oldScript.attributes).forEach(function(attr) {
                                newScript.setAttribute(attr.name, attr.value);
                            });
                            document.body.appendChild(newScript);
                        });

                        document.dispatchEvent(new CustomEvent('shortcode.loaded', {
                            detail: {
                                name,
                                attributes,
                                html: data
                            }
                        }));

                        if (typeof Theme !== 'undefined' && typeof Theme.lazyLoadInstance !== 'undefined') {
                            Theme.lazyLoadInstance.update()
                        }

                        setTimeout(function() {
                            const remainingLoaders = document.querySelectorAll(
                                '.shortcode-lazy-loading');
                            if (remainingLoaders.length === 0) {
                                document.body.classList.remove('lazy-loading-active');
                            }
                        }, 100);
                    })
                    .catch(error => {
                        console.error('Fetch error:', error);
                        document.body.classList.remove('lazy-loading-active');
                    });
            });
        };

        window.addEventListener('load', function() {
            lazyLoadShortcodeBlocks();
        });
    </script>
<?php endif; ?>
<?php /**PATH C:\www\test.fancyprofile.com\platform\packages\shortcode\/resources/views/partials/lazy-loading-script.blade.php ENDPATH**/ ?>