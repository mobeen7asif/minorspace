<?php

namespace Database\Seeders;

use Botble\Base\Supports\BaseSeeder;
use Botble\Testimonial\Models\Testimonial;
use Illuminate\Support\Facades\DB;

class TestimonialSeeder extends BaseSeeder
{
    public function run(): void
    {
        $this->uploadFiles('testimonials');

        Testimonial::query()->truncate();
        DB::table('testimonials_translations')->truncate();

        $testimonials = [
            [
                'name' => 'Adam Williams',
                'company' => 'CEO Of Microsoft',
                'translations' => [
                    'ar' => ['name' => 'آدم ويليامز', 'company' => 'الرئيس التنفيذي لمايكروسوفت'],
                    'vi' => ['name' => 'Adam Williams', 'company' => 'Giám đốc điều hành Microsoft'],
                    'fr' => ['name' => 'Adam Williams', 'company' => 'PDG de Microsoft'],
                    'id' => ['name' => 'Adam Williams', 'company' => 'CEO Microsoft'],
                    'tr' => ['name' => 'Adam Williams', 'company' => 'Microsoft CEO'],
                ],
            ],
            [
                'name' => 'Retha Deowalim',
                'company' => 'CEO Of Apple',
                'translations' => [
                    'ar' => ['name' => 'ريثا ديواليم', 'company' => 'الرئيس التنفيذي لآبل'],
                    'vi' => ['name' => 'Retha Deowalim', 'company' => 'Giám đốc điều hành Apple'],
                    'fr' => ['name' => 'Retha Deowalim', 'company' => 'PDG d\'Apple'],
                    'id' => ['name' => 'Retha Deowalim', 'company' => 'CEO Apple'],
                    'tr' => ['name' => 'Retha Deowalim', 'company' => 'Apple CEO'],
                ],
            ],
            [
                'name' => 'Sam J. Wasim',
                'company' => 'Pio Founder',
                'translations' => [
                    'ar' => ['name' => 'سام ج. وسيم', 'company' => 'مؤسس بيو'],
                    'vi' => ['name' => 'Sam J. Wasim', 'company' => 'Nhà sáng lập Pio'],
                    'fr' => ['name' => 'Sam J. Wasim', 'company' => 'Fondateur de Pio'],
                    'id' => ['name' => 'Sam J. Wasim', 'company' => 'Pendiri Pio'],
                    'tr' => ['name' => 'Sam J. Wasim', 'company' => 'Pio Kurucusu'],
                ],
            ],
            [
                'name' => 'Usan Gulwarm',
                'company' => 'CEO Of Facewarm',
                'translations' => [
                    'ar' => ['name' => 'أوسان جولوارم', 'company' => 'الرئيس التنفيذي لفيسوارم'],
                    'vi' => ['name' => 'Usan Gulwarm', 'company' => 'Giám đốc điều hành Facewarm'],
                    'fr' => ['name' => 'Usan Gulwarm', 'company' => 'PDG de Facewarm'],
                    'id' => ['name' => 'Usan Gulwarm', 'company' => 'CEO Facewarm'],
                    'tr' => ['name' => 'Usan Gulwarm', 'company' => 'Facewarm CEO'],
                ],
            ],
        ];

        $content = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua';

        $contentTranslations = [
            'ar' => 'تجربة رائعة مع هذا المتجر. المنتجات عالية الجودة والخدمة ممتازة. أنصح الجميع بالتسوق من هنا.',
            'vi' => 'Trải nghiệm tuyệt vời với cửa hàng này. Sản phẩm chất lượng cao và dịch vụ xuất sắc. Tôi khuyên mọi người nên mua sắm tại đây.',
            'fr' => 'Une expérience formidable avec cette boutique. Des produits de haute qualité et un service excellent. Je recommande à tous.',
            'id' => 'Pengalaman luar biasa dengan toko ini. Produk berkualitas tinggi dan layanan yang sangat baik. Saya merekomendasikan semua orang untuk berbelanja di sini.',
            'tr' => 'Bu mağazayla harika bir deneyim. Yüksek kaliteli ürünler ve mükemmel hizmet. Herkese buradan alışveriş yapmalarını öneriyorum.',
        ];

        foreach ($testimonials as $index => $item) {
            $translations = $item['translations'] ?? [];
            unset($item['translations']);

            $item['image'] = 'testimonials/' . ($index + 1) . '.jpg';
            $item['content'] = $content;

            $testimonial = Testimonial::query()->create($item);

            foreach ($translations as $locale => $translation) {
                DB::table('testimonials_translations')->insert([
                    'lang_code' => $locale,
                    'testimonials_id' => $testimonial->id,
                    'name' => $translation['name'],
                    'content' => $contentTranslations[$locale],
                    'company' => $translation['company'],
                ]);
            }
        }
    }
}
