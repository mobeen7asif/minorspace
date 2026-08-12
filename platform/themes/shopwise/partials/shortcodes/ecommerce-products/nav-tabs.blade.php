<ul class="nav nav-tabs justify-content-center {{ Arr::get($attributes ?? [], 'class') }}" id="ecommerce-products-tabmenubar-{{ $shortcode->id ?? 'default' }}" role="tablist" aria-label="Categories list">
    @foreach ($categories as $category)
        <li class="nav-item" role="tab" aria-controls="category-{{ $category->id }}" aria-selected="true"
            id="category-{{ $category->id }}-tab"
            aria-labelledby="#ecommerce-products-tabmenubar-{{ $shortcode->id ?? 'default' }}">
            <a @class([
                'nav-link',
                'active' => $category->id == $categoryId,
            ])
            data-bs-toggle="tab"
            href="#category-{{ $category->id }}"
            @if ($category->id == $categoryId) data-loaded @endif data-ref="category-{{ $category->id }}"
            data-url="{{ route('public.ajax.products', ['category_id' => $category->id, 'limit' => $limit]) }}">{{ $category->name }}</a>
        </li>
    @endforeach
</ul>
