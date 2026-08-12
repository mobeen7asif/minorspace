@php
    $titleAlignment = in_array($shortcode->title_alignment, ['start', 'center']) ? $shortcode->title_alignment : 'start';
@endphp

<div {!! $shortcode->htmlAttributes() !!} class="section @if(!$shortcode->background_color) bg_dark @endif small_pt small_pb"
     @if($shortcode->background_color || $shortcode->text_color)
     style="@if($shortcode->background_color)background-color: {{ $shortcode->background_color }};@endif @if($shortcode->text_color)color: {{ $shortcode->text_color }};@endif"
     @endif>
	<div class="container">
    	<div class="row align-items-center">
            <div class="col-md-6">
                <div class="heading_s1 text-{{ $titleAlignment }} mb-md-0 @if(!$shortcode->text_color) heading_light @endif">
                    <h3 @if($shortcode->text_color) style="color: {{ $shortcode->text_color }};" @endif>{!! BaseHelper::clean($shortcode->title) !!}</h3>
                </div>
            </div>
            <div class="col-md-6">
                <div class="newsletter_form">
                    {!! Theme::partial('shortcodes.newsletter-form.form', ['attributes' => ['class' => 'btn btn-fill-out rounded-0']]) !!}
                </div>
            </div>
        </div>
    </div>
</div>
