<div class="section small_pt pb-0">
    <div class="custom-container">
        <div class="row">
            <div class="col-12">
                <div class="heading_s2 mb-4">
                    <div class="skeleton-loading w-25 h-20"></div>
                </div>
            </div>
        </div>
        <div class="row">
            @for ($i = 0; $i < 4; $i++)
                <div class="col-lg-3 col-md-6 col-6">
                    <div class="product skeleton-loading">
                        <div class="product_img skeleton-loading" style="height: 300px;"></div>
                        <div class="product_info mt-3">
                            <div class="skeleton-loading w-75 h-20 mb-2"></div>
                            <div class="skeleton-loading w-50 h-20"></div>
                        </div>
                    </div>
                </div>
            @endfor
        </div>
    </div>
</div>
