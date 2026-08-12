<?php

namespace Database\Seeders;

use Botble\Ecommerce\Models\ProductLabel;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class ProductLabelSeeder extends Seeder
{
    public function run(): void
    {
        ProductLabel::query()->truncate();
        DB::table('ec_product_labels_translations')->truncate();

        $labels = [
            [
                'name' => 'Hot',
                'color' => '#d71e2d',
                'text_color' => '#ffffff',
                'translations' => [
                    'ar' => 'رائج',
                    'vi' => 'Hot',
                    'fr' => 'Chaud',
                    'id' => 'Populer',
                    'tr' => 'Sıcak',
                ],
            ],
            [
                'name' => 'New',
                'color' => '#02856e',
                'text_color' => '#ffffff',
                'translations' => [
                    'ar' => 'جديد',
                    'vi' => 'Mới',
                    'fr' => 'Nouveau',
                    'id' => 'Baru',
                    'tr' => 'Yeni',
                ],
            ],
            [
                'name' => 'Sale',
                'color' => '#fe9931',
                'text_color' => '#ffffff',
                'translations' => [
                    'ar' => 'تخفيض',
                    'vi' => 'Giảm giá',
                    'fr' => 'Solde',
                    'id' => 'Diskon',
                    'tr' => 'İndirim',
                ],
            ],
        ];

        foreach ($labels as $item) {
            $translations = $item['translations'] ?? [];
            unset($item['translations']);

            $label = ProductLabel::query()->create($item);

            foreach ($translations as $locale => $name) {
                DB::table('ec_product_labels_translations')->insert([
                    'lang_code' => $locale,
                    'ec_product_labels_id' => $label->id,
                    'name' => $name,
                ]);
            }
        }
    }
}
