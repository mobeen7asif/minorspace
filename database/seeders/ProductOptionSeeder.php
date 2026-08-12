<?php

namespace Database\Seeders;

use Botble\Ecommerce\Models\GlobalOption;
use Botble\Ecommerce\Models\GlobalOptionValue;
use Botble\Ecommerce\Option\OptionType\Dropdown;
use Botble\Ecommerce\Option\OptionType\RadioButton;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class ProductOptionSeeder extends Seeder
{
    public function run(): void
    {
        DB::table('ec_global_options')->truncate();
        DB::table('ec_global_option_value')->truncate();
        DB::table('ec_options')->truncate();
        DB::table('ec_option_value')->truncate();
        DB::table('ec_global_options_translations')->truncate();

        $options = [
            [
                'name' => 'Warranty',
                'option_type' => RadioButton::class,
                'required' => true,
                'translations' => [
                    'ar' => 'الضمان',
                    'vi' => 'Bảo hành',
                    'fr' => 'Garantie',
                    'id' => 'Garansi',
                    'tr' => 'Garanti',
                ],
                'values' => [
                    ['option_value' => '1 Year', 'affect_price' => 0, 'affect_type' => 0],
                    ['option_value' => '2 Year', 'affect_price' => 10, 'affect_type' => 0],
                    ['option_value' => '3 Year', 'affect_price' => 20, 'affect_type' => 0],
                ],
            ],
            [
                'name' => 'RAM',
                'option_type' => RadioButton::class,
                'required' => true,
                'values' => [
                    ['option_value' => '4GB', 'affect_price' => 0, 'affect_type' => 0],
                    ['option_value' => '8GB', 'affect_price' => 10, 'affect_type' => 0],
                    ['option_value' => '16GB', 'affect_price' => 20, 'affect_type' => 0],
                ],
            ],
            [
                'name' => 'CPU',
                'option_type' => RadioButton::class,
                'required' => true,
                'values' => [
                    ['option_value' => 'Core i5', 'affect_price' => 0, 'affect_type' => 0],
                    ['option_value' => 'Core i7', 'affect_price' => 10, 'affect_type' => 0],
                    ['option_value' => 'Core i9', 'affect_price' => 20, 'affect_type' => 0],
                ],
            ],
            [
                'name' => 'HDD',
                'option_type' => Dropdown::class,
                'required' => false,
                'translations' => [
                    'ar' => 'القرص الصلب',
                    'vi' => 'Ổ cứng',
                    'fr' => 'Disque dur',
                    'id' => 'HDD',
                    'tr' => 'Sabit Disk',
                ],
                'values' => [
                    ['option_value' => '128GB', 'affect_price' => 0, 'affect_type' => 0],
                    ['option_value' => '256GB', 'affect_price' => 10, 'affect_type' => 0],
                    ['option_value' => '512GB', 'affect_price' => 20, 'affect_type' => 0],
                ],
            ],
        ];

        foreach ($options as $option) {
            $translations = $option['translations'] ?? [];
            unset($option['translations']);

            $globalOption = new GlobalOption();
            $globalOption->name = $option['name'];
            $globalOption->option_type = $option['option_type'];
            $globalOption->required = $option['required'];
            $globalOption->save();

            foreach ($translations as $locale => $name) {
                DB::table('ec_global_options_translations')->insert([
                    'lang_code' => $locale,
                    'ec_global_options_id' => $globalOption->id,
                    'name' => $name,
                ]);
            }

            $optionValues = [];
            foreach ($option['values'] as $item) {
                $globalOptionValue = new GlobalOptionValue();
                $item['affect_price'] = ! empty($item['affect_price']) ? $item['affect_price'] : 0;
                $globalOptionValue->fill($item);
                $optionValues[] = $globalOptionValue;
            }

            $globalOption->values()->saveMany($optionValues);
        }
    }
}
