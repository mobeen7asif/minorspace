<?php

namespace Database\Seeders;

use Botble\Base\Facades\MetaBox;
use Botble\Base\Supports\BaseSeeder;
use Botble\Language\Models\LanguageMeta;
use Botble\SimpleSlider\Models\SimpleSlider;
use Botble\SimpleSlider\Models\SimpleSliderItem;
use Illuminate\Support\Arr;
use Illuminate\Support\Str;

class SimpleSliderSeeder extends BaseSeeder
{
    public function run(): void
    {
        $this->uploadFiles('sliders');

        SimpleSlider::query()->truncate();
        SimpleSliderItem::query()->truncate();

        $sliderItems = [
            'en' => [
                [
                    'title' => 'Woman Fashion',
                    'description' => 'Get up to 50% off Today Only!',
                    'link' => 'products',
                    'button_text' => 'Shop now',
                    'sub_title' => 'New Tranding',
                ],
                [
                    'title' => 'Man Fashion',
                    'description' => '50% off in all products',
                    'link' => 'products',
                    'button_text' => 'Discover now',
                ],
                [
                    'title' => 'Summer Sale',
                    'description' => 'Taking your Viewing Experience to Next Level',
                    'link' => 'products',
                    'button_text' => 'Shop now',
                ],
            ],
            'ar' => [
                [
                    'title' => 'أزياء نسائية',
                    'description' => 'احصلي على خصم يصل إلى 50% اليوم فقط!',
                    'link' => 'products',
                    'button_text' => 'تسوقي الآن',
                    'sub_title' => 'صيحات جديدة',
                ],
                [
                    'title' => 'أزياء رجالية',
                    'description' => 'خصم 50% على جميع المنتجات',
                    'link' => 'products',
                    'button_text' => 'اكتشف الآن',
                ],
                [
                    'title' => 'تخفيضات الصيف',
                    'description' => 'ارتقِ بتجربة المشاهدة إلى المستوى التالي',
                    'link' => 'products',
                    'button_text' => 'تسوق الآن',
                ],
            ],
            'vi' => [
                [
                    'title' => 'Thời trang nữ',
                    'description' => 'Giảm giá đến 50% chỉ trong hôm nay!',
                    'link' => 'products',
                    'button_text' => 'Mua ngay',
                    'sub_title' => 'Xu hướng mới',
                ],
                [
                    'title' => 'Thời trang nam',
                    'description' => 'Giảm 50% tất cả sản phẩm',
                    'link' => 'products',
                    'button_text' => 'Khám phá ngay',
                ],
                [
                    'title' => 'Sale mùa hè',
                    'description' => 'Nâng tầm trải nghiệm mua sắm của bạn',
                    'link' => 'products',
                    'button_text' => 'Mua ngay',
                ],
            ],
            'fr' => [
                [
                    'title' => 'Mode femme',
                    'description' => 'Jusqu\'à 50% de réduction aujourd\'hui seulement !',
                    'link' => 'products',
                    'button_text' => 'Acheter',
                    'sub_title' => 'Nouvelle tendance',
                ],
                [
                    'title' => 'Mode homme',
                    'description' => '50% de réduction sur tous les produits',
                    'link' => 'products',
                    'button_text' => 'Découvrir',
                ],
                [
                    'title' => 'Soldes d\'été',
                    'description' => 'Élevez votre expérience au niveau supérieur',
                    'link' => 'products',
                    'button_text' => 'Acheter',
                ],
            ],
            'id' => [
                [
                    'title' => 'Fashion Wanita',
                    'description' => 'Diskon hingga 50% hanya hari ini!',
                    'link' => 'products',
                    'button_text' => 'Belanja sekarang',
                    'sub_title' => 'Tren Baru',
                ],
                [
                    'title' => 'Fashion Pria',
                    'description' => 'Diskon 50% untuk semua produk',
                    'link' => 'products',
                    'button_text' => 'Temukan sekarang',
                ],
                [
                    'title' => 'Sale Musim Panas',
                    'description' => 'Tingkatkan pengalaman belanja Anda',
                    'link' => 'products',
                    'button_text' => 'Belanja sekarang',
                ],
            ],
            'tr' => [
                [
                    'title' => 'Kadın Modası',
                    'description' => 'Sadece bugün %50\'ye varan indirim!',
                    'link' => 'products',
                    'button_text' => 'Alışverişe başla',
                    'sub_title' => 'Yeni Trend',
                ],
                [
                    'title' => 'Erkek Modası',
                    'description' => 'Tüm ürünlerde %50 indirim',
                    'link' => 'products',
                    'button_text' => 'Keşfet',
                ],
                [
                    'title' => 'Yaz İndirimi',
                    'description' => 'Alışveriş deneyiminizi bir üst seviyeye taşıyın',
                    'link' => 'products',
                    'button_text' => 'Alışverişe başla',
                ],
            ],
        ];

        $sliderNames = [
            'en' => 'Home slider',
            'ar' => 'سلايدر الرئيسية',
            'vi' => 'Slider trang chủ',
            'fr' => 'Slider d\'accueil',
            'id' => 'Slider Beranda',
            'tr' => 'Ana Sayfa Slider',
        ];

        $sliderOrigin = md5(Str::random(20) . time());

        foreach (['en', 'ar', 'vi', 'fr', 'id', 'tr'] as $locale) {
            $slider = SimpleSlider::query()->create([
                'name' => $sliderNames[$locale],
                'key' => $locale === 'en' ? 'home-slider' : 'home-slider-' . $locale,
            ]);

            if (is_plugin_active('language')) {
                LanguageMeta::saveMetaData($slider, $locale === 'en' ? 'en_US' : $locale, $sliderOrigin);
            }

            foreach ($sliderItems[$locale] as $key => $item) {
                $item['image'] = 'sliders/' . ($key + 1) . '.jpg';
                $item['order'] = $key + 1;
                $item['simple_slider_id'] = $slider->id;

                $sliderItem = SimpleSliderItem::query()->create(Arr::except($item, ['button_text', 'sub_title']));

                MetaBox::saveMetaBoxData($sliderItem, 'button_text', $item['button_text']);

                if (Arr::get($item, 'sub_title')) {
                    MetaBox::saveMetaBoxData($sliderItem, 'sub_title', $item['sub_title']);
                }
            }
        }
    }
}
