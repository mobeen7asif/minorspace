@php
    $style = $shortcode->style;
    if (! in_array($style, ['style-1', 'style-2', 'style-3', 'style-4'])) {
        $style = 'style-1';
    }
@endphp

<div {!! $shortcode->htmlAttributes() !!} class="section small_pt pb-0">
    <div class="custom-container">
        @include(Theme::getThemeNamespace('partials.shortcodes.ecommerce-products.' . $style))
    </div>
</div>
