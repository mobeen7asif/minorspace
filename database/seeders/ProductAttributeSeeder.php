<?php

namespace Database\Seeders;

use Botble\Base\Supports\BaseSeeder;
use Botble\Ecommerce\Models\ProductAttribute;
use Botble\Ecommerce\Models\ProductAttributeSet;
use Illuminate\Support\Facades\DB;

class ProductAttributeSeeder extends BaseSeeder
{
    public function run(): void
    {
        ProductAttributeSet::query()->truncate();
        ProductAttribute::query()->truncate();
        DB::table('ec_product_attribute_sets_translations')->truncate();
        DB::table('ec_product_attributes_translations')->truncate();

        $attributeSets = [
            [
                'title' => 'Color',
                'slug' => 'color',
                'display_layout' => 'visual',
                'is_searchable' => true,
                'is_use_in_product_listing' => true,
                'use_image_from_product_variation' => true,
                'order' => 0,
                'translations' => [
                    'ar' => 'اللون',
                    'vi' => 'Màu sắc',
                    'fr' => 'Couleur',
                    'id' => 'Warna',
                    'tr' => 'Renk',
                ],
            ],
            [
                'title' => 'Size',
                'slug' => 'size',
                'display_layout' => 'text',
                'is_searchable' => true,
                'is_use_in_product_listing' => true,
                'order' => 1,
                'translations' => [
                    'ar' => 'الحجم',
                    'vi' => 'Kích thước',
                    'fr' => 'Taille',
                    'id' => 'Ukuran',
                    'tr' => 'Beden',
                ],
            ],
        ];

        foreach ($attributeSets as $item) {
            $translations = $item['translations'] ?? [];
            unset($item['translations']);

            $set = ProductAttributeSet::query()->create($item);

            foreach ($translations as $locale => $title) {
                DB::table('ec_product_attribute_sets_translations')->insert([
                    'lang_code' => $locale,
                    'ec_product_attribute_sets_id' => $set->id,
                    'title' => $title,
                ]);
            }
        }

        $productAttributes = [
            [
                'attribute_set_id' => 1,
                'title' => 'Green',
                'slug' => 'green',
                'color' => '#5FB7D4',
                'is_default' => true,
                'order' => 1,
                'translations' => [
                    'ar' => 'أخضر',
                    'vi' => 'Xanh lá',
                    'fr' => 'Vert',
                    'id' => 'Hijau',
                    'tr' => 'Yeşil',
                ],
            ],
            [
                'attribute_set_id' => 1,
                'title' => 'Blue',
                'slug' => 'blue',
                'color' => '#333333',
                'is_default' => false,
                'order' => 2,
                'translations' => [
                    'ar' => 'أزرق',
                    'vi' => 'Xanh dương',
                    'fr' => 'Bleu',
                    'id' => 'Biru',
                    'tr' => 'Mavi',
                ],
            ],
            [
                'attribute_set_id' => 1,
                'title' => 'Red',
                'slug' => 'red',
                'color' => '#DA323F',
                'is_default' => false,
                'order' => 3,
                'translations' => [
                    'ar' => 'أحمر',
                    'vi' => 'Đỏ',
                    'fr' => 'Rouge',
                    'id' => 'Merah',
                    'tr' => 'Kırmızı',
                ],
            ],
            [
                'attribute_set_id' => 1,
                'title' => 'Black',
                'slug' => 'back',
                'color' => '#2F366C',
                'is_default' => false,
                'order' => 4,
                'translations' => [
                    'ar' => 'أسود',
                    'vi' => 'Đen',
                    'fr' => 'Noir',
                    'id' => 'Hitam',
                    'tr' => 'Siyah',
                ],
            ],
            [
                'attribute_set_id' => 1,
                'title' => 'Brown',
                'slug' => 'brown',
                'color' => '#87554B',
                'is_default' => false,
                'order' => 5,
                'translations' => [
                    'ar' => 'بني',
                    'vi' => 'Nâu',
                    'fr' => 'Marron',
                    'id' => 'Cokelat',
                    'tr' => 'Kahverengi',
                ],
            ],
            [
                'attribute_set_id' => 2,
                'title' => 'S',
                'slug' => 's',
                'is_default' => true,
                'order' => 1,
            ],
            [
                'attribute_set_id' => 2,
                'title' => 'M',
                'slug' => 'm',
                'is_default' => false,
                'order' => 2,
            ],
            [
                'attribute_set_id' => 2,
                'title' => 'L',
                'slug' => 'l',
                'is_default' => false,
                'order' => 3,
            ],
            [
                'attribute_set_id' => 2,
                'title' => 'XL',
                'slug' => 'xl',
                'is_default' => false,
                'order' => 4,
            ],
            [
                'attribute_set_id' => 2,
                'title' => 'XXL',
                'slug' => 'xxl',
                'is_default' => false,
                'order' => 5,
            ],
        ];

        foreach ($productAttributes as $item) {
            $translations = $item['translations'] ?? [];
            unset($item['translations']);

            $attribute = ProductAttribute::query()->create($item);

            foreach ($translations as $locale => $title) {
                DB::table('ec_product_attributes_translations')->insert([
                    'lang_code' => $locale,
                    'ec_product_attributes_id' => $attribute->id,
                    'title' => $title,
                ]);
            }
        }
    }
}
