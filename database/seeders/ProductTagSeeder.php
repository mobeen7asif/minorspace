<?php

namespace Database\Seeders;

use Botble\Base\Supports\BaseSeeder;
use Botble\Ecommerce\Models\ProductTag;
use Botble\Slug\Facades\SlugHelper;
use Illuminate\Support\Facades\DB;

class ProductTagSeeder extends BaseSeeder
{
    public function run(): void
    {
        ProductTag::query()->truncate();
        DB::table('ec_product_tags_translations')->truncate();

        $tags = [
            [
                'name' => 'Electronic',
                'translations' => [
                    'ar' => 'إلكترونيات',
                    'vi' => 'Điện tử',
                    'fr' => 'Électronique',
                    'id' => 'Elektronik',
                    'tr' => 'Elektronik',
                ],
            ],
            [
                'name' => 'Mobile',
                'translations' => [
                    'ar' => 'هاتف محمول',
                    'vi' => 'Điện thoại',
                    'fr' => 'Mobile',
                    'id' => 'Ponsel',
                    'tr' => 'Cep Telefonu',
                ],
            ],
            [
                'name' => 'Iphone',
                'translations' => [
                    'ar' => 'آيفون',
                    'vi' => 'Iphone',
                    'fr' => 'Iphone',
                    'id' => 'Iphone',
                    'tr' => 'Iphone',
                ],
            ],
            [
                'name' => 'Printer',
                'translations' => [
                    'ar' => 'طابعة',
                    'vi' => 'Máy in',
                    'fr' => 'Imprimante',
                    'id' => 'Printer',
                    'tr' => 'Yazıcı',
                ],
            ],
            [
                'name' => 'Office',
                'translations' => [
                    'ar' => 'مكتب',
                    'vi' => 'Văn phòng',
                    'fr' => 'Bureau',
                    'id' => 'Kantor',
                    'tr' => 'Ofis',
                ],
            ],
            [
                'name' => 'IT',
                'translations' => [
                    'ar' => 'تقنية المعلومات',
                    'vi' => 'Công nghệ thông tin',
                    'fr' => 'Informatique',
                    'id' => 'TI',
                    'tr' => 'Bilişim',
                ],
            ],
        ];

        foreach ($tags as $item) {
            $translations = $item['translations'] ?? [];
            unset($item['translations']);

            $tag = ProductTag::query()->create($item);

            SlugHelper::createSlug($tag);

            foreach ($translations as $locale => $name) {
                DB::table('ec_product_tags_translations')->insert([
                    'lang_code' => $locale,
                    'ec_product_tags_id' => $tag->id,
                    'name' => $name,
                ]);
            }
        }
    }
}
