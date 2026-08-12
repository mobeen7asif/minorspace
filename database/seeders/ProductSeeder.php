<?php

namespace Database\Seeders;

use Botble\Base\Enums\BaseStatusEnum;
use Botble\Base\Supports\BaseSeeder;
use Botble\Ecommerce\Database\Seeders\Traits\HasProductSeeder;
use Botble\Ecommerce\Models\Product;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\File;

class ProductSeeder extends BaseSeeder
{
    use HasProductSeeder;

    public function run(): void
    {
        $this->uploadFiles('products');

        $products = [
            [
                'name' => 'Smart Home Speaker',
                'is_featured' => true,
                'translations' => [
                    'ar' => 'مكبر صوت منزلي ذكي',
                    'vi' => 'Loa thông minh gia đình',
                    'fr' => 'Enceinte intelligente',
                    'id' => 'Speaker Rumah Pintar',
                    'tr' => 'Akıllı Ev Hoparlörü',
                ],
            ],
            [
                'name' => 'Headphone Ultra Bass',
                'is_featured' => true,
                'translations' => [
                    'ar' => 'سماعات رأس بصوت جهير فائق',
                    'vi' => 'Tai nghe Ultra Bass',
                    'fr' => 'Casque Ultra Bass',
                    'id' => 'Headphone Ultra Bass',
                    'tr' => 'Ultra Bass Kulaklık',
                ],
            ],
            [
                'name' => 'Boxed - Bluetooth Headphone',
                'is_featured' => true,
                'translations' => [
                    'ar' => 'سماعة بلوتوث في علبة',
                    'vi' => 'Tai nghe Bluetooth hộp',
                    'fr' => 'Casque Bluetooth en boîte',
                    'id' => 'Headphone Bluetooth Kotak',
                    'tr' => 'Kutulu Bluetooth Kulaklık',
                ],
            ],
            [
                'name' => 'Chikie - Bluetooth Speaker',
                'is_featured' => true,
                'translations' => [
                    'ar' => 'شيكي - مكبر صوت بلوتوث',
                    'vi' => 'Chikie - Loa Bluetooth',
                    'fr' => 'Chikie - Enceinte Bluetooth',
                    'id' => 'Chikie - Speaker Bluetooth',
                    'tr' => 'Chikie - Bluetooth Hoparlör',
                ],
            ],
            [
                'name' => 'Camera Hikvision HK-35VS8',
                'is_featured' => true,
                'translations' => [
                    'ar' => 'كاميرا هيكفيجن HK-35VS8',
                    'vi' => 'Camera Hikvision HK-35VS8',
                    'fr' => 'Caméra Hikvision HK-35VS8',
                    'id' => 'Kamera Hikvision HK-35VS8',
                    'tr' => 'Kamera Hikvision HK-35VS8',
                ],
            ],
            [
                'name' => 'Camera Samsung SS-24',
                'is_featured' => true,
                'translations' => [
                    'ar' => 'كاميرا سامسونج SS-24',
                    'vi' => 'Camera Samsung SS-24',
                    'fr' => 'Caméra Samsung SS-24',
                    'id' => 'Kamera Samsung SS-24',
                    'tr' => 'Kamera Samsung SS-24',
                ],
            ],
            [
                'name' => 'Leather Watch Band',
                'is_featured' => true,
                'translations' => [
                    'ar' => 'سوار ساعة جلدي',
                    'vi' => 'Dây đồng hồ da',
                    'fr' => 'Bracelet de montre en cuir',
                    'id' => 'Tali Jam Tangan Kulit',
                    'tr' => 'Deri Saat Kayışı',
                ],
            ],
            [
                'name' => 'Apple iPhone 13 Plus',
                'is_featured' => true,
                'translations' => [
                    'ar' => 'آبل آيفون 13 بلس',
                    'vi' => 'Apple iPhone 13 Plus',
                    'fr' => 'Apple iPhone 13 Plus',
                    'id' => 'Apple iPhone 13 Plus',
                    'tr' => 'Apple iPhone 13 Plus',
                ],
            ],
            [
                'name' => 'Macbook Pro 2015',
                'is_featured' => true,
                'translations' => [
                    'ar' => 'ماك بوك برو 2015',
                    'vi' => 'Macbook Pro 2015',
                    'fr' => 'Macbook Pro 2015',
                    'id' => 'Macbook Pro 2015',
                    'tr' => 'Macbook Pro 2015',
                ],
            ],
            [
                'name' => 'Macbook Air 12 inch',
                'is_featured' => true,
                'translations' => [
                    'ar' => 'ماك بوك إير 12 بوصة',
                    'vi' => 'Macbook Air 12 inch',
                    'fr' => 'Macbook Air 12 pouces',
                    'id' => 'Macbook Air 12 inci',
                    'tr' => 'Macbook Air 12 inç',
                ],
            ],
            [
                'name' => 'Apple Watch Serial 7',
                'is_featured' => true,
                'translations' => [
                    'ar' => 'ساعة آبل سيريال 7',
                    'vi' => 'Apple Watch Series 7',
                    'fr' => 'Apple Watch Série 7',
                    'id' => 'Apple Watch Seri 7',
                    'tr' => 'Apple Watch Seri 7',
                ],
            ],
            [
                'name' => 'Macbook Pro 13 inch',
                'is_featured' => true,
                'translations' => [
                    'ar' => 'ماك بوك برو 13 بوصة',
                    'vi' => 'Macbook Pro 13 inch',
                    'fr' => 'Macbook Pro 13 pouces',
                    'id' => 'Macbook Pro 13 inci',
                    'tr' => 'Macbook Pro 13 inç',
                ],
            ],
            [
                'name' => 'Apple Keyboard',
                'is_featured' => true,
                'translations' => [
                    'ar' => 'لوحة مفاتيح آبل',
                    'vi' => 'Bàn phím Apple',
                    'fr' => 'Clavier Apple',
                    'id' => 'Keyboard Apple',
                    'tr' => 'Apple Klavye',
                ],
            ],
            [
                'name' => 'MacSafe 80W',
                'is_featured' => true,
                'translations' => [
                    'ar' => 'ماك سيف 80 واط',
                    'vi' => 'MacSafe 80W',
                    'fr' => 'MacSafe 80W',
                    'id' => 'MacSafe 80W',
                    'tr' => 'MacSafe 80W',
                ],
            ],
            [
                'name' => 'Hand playstation',
                'is_featured' => true,
                'translations' => [
                    'ar' => 'بلايستيشن محمول',
                    'vi' => 'Máy chơi game cầm tay',
                    'fr' => 'Console de jeu portable',
                    'id' => 'Playstation Genggam',
                    'tr' => 'El Oyun Konsolu',
                ],
            ],
            [
                'name' => 'Apple Airpods Serial 3',
                'is_featured' => true,
                'translations' => [
                    'ar' => 'آبل إيربودز سيريال 3',
                    'vi' => 'Apple Airpods Series 3',
                    'fr' => 'Apple Airpods Série 3',
                    'id' => 'Apple Airpods Seri 3',
                    'tr' => 'Apple Airpods Seri 3',
                ],
            ],
            [
                'name' => 'Cool Smart Watches',
                'is_featured' => true,
                'translations' => [
                    'ar' => 'ساعات ذكية أنيقة',
                    'vi' => 'Đồng hồ thông minh thời thượng',
                    'fr' => 'Montres connectées tendance',
                    'id' => 'Jam Tangan Pintar Keren',
                    'tr' => 'Havalı Akıllı Saatler',
                ],
            ],
            [
                'name' => 'Black Smart Watches',
                'is_featured' => true,
                'translations' => [
                    'ar' => 'ساعات ذكية سوداء',
                    'vi' => 'Đồng hồ thông minh đen',
                    'fr' => 'Montres connectées noires',
                    'id' => 'Jam Tangan Pintar Hitam',
                    'tr' => 'Siyah Akıllı Saatler',
                ],
            ],
            [
                'name' => 'Leather Watch Band Serial 3',
                'is_featured' => true,
                'translations' => [
                    'ar' => 'سوار ساعة جلدي سيريال 3',
                    'vi' => 'Dây đồng hồ da Series 3',
                    'fr' => 'Bracelet de montre en cuir Série 3',
                    'id' => 'Tali Jam Tangan Kulit Seri 3',
                    'tr' => 'Deri Saat Kayışı Seri 3',
                ],
            ],
            [
                'name' => 'Macbook Pro 2015 13 inch',
                'is_featured' => true,
                'translations' => [
                    'ar' => 'ماك بوك برو 2015 13 بوصة',
                    'vi' => 'Macbook Pro 2015 13 inch',
                    'fr' => 'Macbook Pro 2015 13 pouces',
                    'id' => 'Macbook Pro 2015 13 inci',
                    'tr' => 'Macbook Pro 2015 13 inç',
                ],
            ],
            [
                'name' => 'Historic Alarm Clock',
                'is_featured' => true,
                'translations' => [
                    'ar' => 'ساعة منبه تاريخية',
                    'vi' => 'Đồng hồ báo thức cổ điển',
                    'fr' => 'Réveil historique',
                    'id' => 'Jam Alarm Klasik',
                    'tr' => 'Tarihi Çalar Saat',
                ],
            ],
            [
                'name' => 'Black Glasses',
                'is_featured' => true,
                'translations' => [
                    'ar' => 'نظارات سوداء',
                    'vi' => 'Kính đen',
                    'fr' => 'Lunettes noires',
                    'id' => 'Kacamata Hitam',
                    'tr' => 'Siyah Gözlük',
                ],
            ],
            [
                'name' => 'Phillips Mouse',
                'is_featured' => true,
                'translations' => [
                    'ar' => 'فأرة فيليبس',
                    'vi' => 'Chuột Phillips',
                    'fr' => 'Souris Phillips',
                    'id' => 'Mouse Phillips',
                    'tr' => 'Phillips Fare',
                ],
            ],
            [
                'name' => 'Gaming Keyboard',
                'is_featured' => true,
                'translations' => [
                    'ar' => 'لوحة مفاتيح الألعاب',
                    'vi' => 'Bàn phím chơi game',
                    'fr' => 'Clavier gaming',
                    'id' => 'Keyboard Gaming',
                    'tr' => 'Oyun Klavyesi',
                ],
            ],
            [
                'name' => 'Dual Camera 20MP',
                'translations' => [
                    'ar' => 'كاميرا مزدوجة 20 ميجابكسل',
                    'vi' => 'Camera kép 20MP',
                    'fr' => 'Double caméra 20MP',
                    'id' => 'Kamera Ganda 20MP',
                    'tr' => 'Çift Kamera 20MP',
                ],
            ],
            [
                'name' => 'Smart Watches',
                'translations' => [
                    'ar' => 'ساعات ذكية',
                    'vi' => 'Đồng hồ thông minh',
                    'fr' => 'Montres connectées',
                    'id' => 'Jam Tangan Pintar',
                    'tr' => 'Akıllı Saatler',
                ],
            ],
            [
                'name' => 'Beat Headphone',
                'translations' => [
                    'ar' => 'سماعة بيت',
                    'vi' => 'Tai nghe Beat',
                    'fr' => 'Casque Beat',
                    'id' => 'Headphone Beat',
                    'tr' => 'Beat Kulaklık',
                ],
            ],
            [
                'name' => 'Red & Black Headphone',
                'translations' => [
                    'ar' => 'سماعة حمراء وسوداء',
                    'vi' => 'Tai nghe đỏ & đen',
                    'fr' => 'Casque rouge et noir',
                    'id' => 'Headphone Merah & Hitam',
                    'tr' => 'Kırmızı & Siyah Kulaklık',
                ],
            ],
            [
                'name' => 'Audio Equipment',
                'translations' => [
                    'ar' => 'معدات صوتية',
                    'vi' => 'Thiết bị âm thanh',
                    'fr' => 'Équipement audio',
                    'id' => 'Peralatan Audio',
                    'tr' => 'Ses Ekipmanı',
                ],
            ],
            [
                'name' => 'Smart Televisions',
                'translations' => [
                    'ar' => 'تلفزيونات ذكية',
                    'vi' => 'TV thông minh',
                    'fr' => 'Télévisions intelligentes',
                    'id' => 'TV Pintar',
                    'tr' => 'Akıllı Televizyonlar',
                ],
            ],
            [
                'name' => 'Samsung Smart TV',
                'translations' => [
                    'ar' => 'تلفزيون سامسونج الذكي',
                    'vi' => 'TV thông minh Samsung',
                    'fr' => 'TV intelligente Samsung',
                    'id' => 'Samsung Smart TV',
                    'tr' => 'Samsung Akıllı TV',
                ],
            ],
        ];

        foreach ($products as $key => &$item) {
            $item['description'] = '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>';
            $item['content'] = '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>
                                <p>- Casual unisex fit</p>

                                <p>- 64% polyester, 36% polyurethane</p>

                                <p>- Water column pressure: 4000 mm</p>

                                <p>- Model is 187cm tall and wearing a size S / M</p>

                                <p>- Unisex fit</p>

                                <p>- Drawstring hood with built-in cap</p>

                                <p>- Front placket with snap buttons</p>

                                <p>- Ventilation under armpit</p>

                                <p>- Adjustable cuffs</p>

                                <p>- Double welted front pockets</p>

                                <p>- Adjustable elastic string at hempen</p>

                                <p>- Ultrasonically welded seams</p>

                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>';
            $item['status'] = BaseStatusEnum::PUBLISHED;
            $item['sku'] = 'HS-' . rand(100, 200);
            $item['brand_id'] = rand(1, 7);
            $item['tax_id'] = 1;
            $item['views'] = rand(1000, 200000);
            $item['quantity'] = rand(10, 20);
            $item['length'] = rand(10, 20);
            $item['wide'] = rand(10, 20);
            $item['height'] = rand(10, 20);
            $item['weight'] = rand(500, 900);
            $item['with_storehouse_management'] = true;

            $images = [];

            for ($i = 1; $i <= 10; $i++) {
                if (File::exists(database_path('seeders/files/products/' . ($key + 1) . '-' . $i . '.jpg'))) {
                    $images[] = 'products/' . ($key + 1) . '-' . $i . '.jpg';
                }
            }

            $item['images'] = json_encode($images);
        }

        $productsForCreation = array_map(function ($item) {
            unset($item['translations']);

            return $item;
        }, $products);

        $this->createProducts($productsForCreation);

        $this->seedProductTranslations($products);
    }

    protected function seedProductTranslations(array $products): void
    {
        DB::table('ec_products_translations')->truncate();

        $dbProducts = Product::query()
            ->where('is_variation', 0)
            ->pluck('id', 'name')
            ->all();

        foreach ($products as $item) {
            $translations = $item['translations'] ?? [];
            $productId = $dbProducts[$item['name']] ?? null;

            if (! $productId || empty($translations)) {
                continue;
            }

            foreach ($translations as $locale => $name) {
                DB::table('ec_products_translations')->insert([
                    'lang_code' => $locale,
                    'ec_products_id' => $productId,
                    'name' => $name,
                ]);
            }
        }
    }
}
