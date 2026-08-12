<?php

namespace Database\Seeders;

use Botble\Base\Supports\BaseSeeder;
use Botble\Ecommerce\Models\ProductCollection;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;

class ProductCollectionSeeder extends BaseSeeder
{
    public function run(): void
    {
        ProductCollection::query()->truncate();
        DB::table('ec_product_collections_translations')->truncate();

        $productCollections = [
            [
                'name' => 'New Arrival',
                'translations' => [
                    'ar' => 'وصل حديثًا',
                    'vi' => 'Hàng mới về',
                    'fr' => 'Nouveautés',
                    'id' => 'Produk Baru',
                    'tr' => 'Yeni Gelenler',
                ],
            ],
            [
                'name' => 'Best Sellers',
                'translations' => [
                    'ar' => 'الأكثر مبيعًا',
                    'vi' => 'Bán chạy nhất',
                    'fr' => 'Meilleures ventes',
                    'id' => 'Terlaris',
                    'tr' => 'En Çok Satanlar',
                ],
            ],
            [
                'name' => 'Special Offer',
                'translations' => [
                    'ar' => 'عرض خاص',
                    'vi' => 'Ưu đãi đặc biệt',
                    'fr' => 'Offre spéciale',
                    'id' => 'Penawaran Khusus',
                    'tr' => 'Özel Teklif',
                ],
            ],
        ];

        foreach ($productCollections as $item) {
            $translations = $item['translations'] ?? [];
            unset($item['translations']);

            $item['slug'] = Str::slug($item['name']);

            $collection = ProductCollection::query()->create($item);

            foreach ($translations as $locale => $name) {
                DB::table('ec_product_collections_translations')->insert([
                    'lang_code' => $locale,
                    'ec_product_collections_id' => $collection->id,
                    'name' => $name,
                ]);
            }
        }
    }
}
