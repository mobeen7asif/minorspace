<?php

namespace Database\Seeders;

use Botble\Base\Supports\BaseSeeder;
use Botble\Ecommerce\Models\FlashSale;
use Botble\Ecommerce\Models\Product;
use Illuminate\Support\Arr;
use Illuminate\Support\Facades\DB;

class FlashSaleSeeder extends BaseSeeder
{
    public function run(): void
    {
        FlashSale::query()->truncate();
        DB::table('ec_flash_sales_translations')->truncate();

        $productIds = Product::query()->where('is_variation', 0)->pluck('id')->all();

        $data = [
            [
                'name' => 'Deal of the Day.',
                'translations' => [
                    'ar' => 'صفقة اليوم.',
                    'vi' => 'Ưu đãi trong ngày.',
                    'fr' => 'Offre du jour.',
                    'id' => 'Penawaran Hari Ini.',
                    'tr' => 'Günün Fırsatı.',
                ],
            ],
            [
                'name' => 'Gadgets & Accessories',
                'translations' => [
                    'ar' => 'الأجهزة والإكسسوارات',
                    'vi' => 'Thiết bị & Phụ kiện',
                    'fr' => 'Gadgets et Accessoires',
                    'id' => 'Gadget & Aksesori',
                    'tr' => 'Cihazlar ve Aksesuarlar',
                ],
            ],
        ];

        foreach ($data as $item) {
            $translations = $item['translations'] ?? [];
            unset($item['translations']);

            $flashSale = FlashSale::query()->create([
                'name' => $item['name'],
                'end_date' => now()
                    ->addMonths(7)
                    ->addDays(rand(15, 50))
                    ->addHours(rand(1, 23))
                    ->addMinutes(rand(1, 59))
                    ->toDateString(),
            ]);

            foreach ($translations as $locale => $name) {
                DB::table('ec_flash_sales_translations')->insert([
                    'lang_code' => $locale,
                    'ec_flash_sales_id' => $flashSale->id,
                    'name' => $name,
                ]);
            }

            $product = Product::query()->find(Arr::random($productIds));

            $price = $product->price;

            if ($product->front_sale_price !== $product->price) {
                $price = $product->front_sale_price;
            }

            $flashSale->products()->attach(
                [
                    $product->id => [
                        'price' => $price - ($price * rand(10, 70) / 100),
                        'quantity' => rand(6, 20),
                        'sold' => rand(1, 5),
                    ],
                ]
            );
        }
    }
}
