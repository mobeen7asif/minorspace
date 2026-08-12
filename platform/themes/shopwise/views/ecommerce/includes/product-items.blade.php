@if ($products->isNotEmpty())
    @foreach($products as $product)
        <div class="col">
            {!! Theme::partial('product-item-grid', compact('product')) !!}
        </div>
    @endforeach

    <div class="col-12 mt-3 justify-content-center pagination_style1">
        {!! $products->appends(request()->query())->onEachSide(1)->links() !!}
    </div>
@else
    <br>
    <div class="col-12 text-center">{{ __('No products!') }}</div>
@endif
