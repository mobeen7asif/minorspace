@php
    $titleAlignment = in_array($shortcode->title_alignment, ['start', 'center']) ? $shortcode->title_alignment : 'start';
@endphp

<div {!! $shortcode->htmlAttributes() !!} class="section @if(!$shortcode->background_color) bg_default @endif small_pt small_pb"
     @if($shortcode->background_color || $shortcode->text_color)
     style="@if($shortcode->background_color)background-color: {{ $shortcode->background_color }};@endif @if($shortcode->text_color)color: {{ $shortcode->text_color }};@endif"
     @endif>
    <div class="container">
        <div class="row align-items-center">
            <div class="col-md-6">
                <div class="newsletter_text text-{{ $titleAlignment }} @if(!$shortcode->text_color) text_white @endif"
                     @if($shortcode->text_color) style="color: {{ $shortcode->text_color }};" @endif>
                    <h3 @if($shortcode->text_color) style="color: {{ $shortcode->text_color }};" @endif>{!! BaseHelper::clean($shortcode->title) !!}</h3>
                    @if ($shortcode->description)
                        <p @if($shortcode->text_color) style="color: {{ $shortcode->text_color }};" @endif>{!! BaseHelper::clean($shortcode->description) !!}</p>
                    @endif
                    @if ($shortcode->subtitle)
                        <p @if($shortcode->text_color) style="color: {{ $shortcode->text_color }};" @endif>{!! BaseHelper::clean($shortcode->subtitle) !!}</p>
                    @endif
                </div>
            </div>
            <div class="col-md-6">
                <div class="newsletter_form2 rounded_input">
                    {!! Theme::partial('shortcodes.newsletter-form.form') !!}
                </div>
            </div>
        </div>
    </div>
</div>
<!-- START SECTION SUBSCRIBE NEWSLETTER -->
