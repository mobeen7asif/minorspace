<?php

namespace Database\Seeders;

use Botble\Base\Supports\BaseSeeder;
use Botble\Ecommerce\Models\ProductCategory;
use Botble\Slug\Facades\SlugHelper;
use Illuminate\Support\Facades\DB;

class ProductCategorySeeder extends BaseSeeder
{
    public function run(): void
    {
        $this->uploadFiles('product-categories');

        ProductCategory::query()->truncate();
        DB::table('ec_product_category_product')->truncate();
        DB::table('ec_product_categorizables')->truncate();
        DB::table('ec_product_categories_translations')->truncate();

        $categories = [
            [
                'name' => 'Television',
                'icon' => 'flaticon-tv',
                'image' => 'product-categories/p-1.png',
                'is_featured' => true,
                'translations' => [
                    'ar' => 'تلفزيون',
                    'vi' => 'Tivi',
                    'fr' => 'Télévision',
                    'id' => 'Televisi',
                    'tr' => 'Televizyon',
                ],
                'children' => [
                    [
                        'name' => 'Home Audio & Theaters',
                        'translations' => [
                            'ar' => 'الصوت المنزلي والمسارح',
                            'vi' => 'Âm thanh gia đình & Rạp hát',
                            'fr' => 'Audio domestique et cinéma',
                            'id' => 'Audio Rumah & Teater',
                            'tr' => 'Ev Ses Sistemleri ve Sinema',
                        ],
                    ],
                    [
                        'name' => 'TV & Videos',
                        'translations' => [
                            'ar' => 'التلفزيون والفيديو',
                            'vi' => 'TV & Video',
                            'fr' => 'TV et Vidéos',
                            'id' => 'TV & Video',
                            'tr' => 'TV ve Video',
                        ],
                    ],
                    [
                        'name' => 'Camera, Photos & Videos',
                        'translations' => [
                            'ar' => 'كاميرا وصور وفيديو',
                            'vi' => 'Máy ảnh, Ảnh & Video',
                            'fr' => 'Caméra, Photos et Vidéos',
                            'id' => 'Kamera, Foto & Video',
                            'tr' => 'Kamera, Fotoğraf ve Video',
                        ],
                    ],
                    [
                        'name' => 'Cellphones & Accessories',
                        'translations' => [
                            'ar' => 'الهواتف المحمولة والإكسسوارات',
                            'vi' => 'Điện thoại & Phụ kiện',
                            'fr' => 'Téléphones et Accessoires',
                            'id' => 'Ponsel & Aksesori',
                            'tr' => 'Cep Telefonları ve Aksesuarlar',
                        ],
                    ],
                    [
                        'name' => 'Headphones',
                        'translations' => [
                            'ar' => 'سماعات الرأس',
                            'vi' => 'Tai nghe',
                            'fr' => 'Casques',
                            'id' => 'Headphone',
                            'tr' => 'Kulaklıklar',
                        ],
                    ],
                    [
                        'name' => 'Videos games',
                        'translations' => [
                            'ar' => 'ألعاب الفيديو',
                            'vi' => 'Trò chơi điện tử',
                            'fr' => 'Jeux vidéo',
                            'id' => 'Video Game',
                            'tr' => 'Video Oyunları',
                        ],
                    ],
                    [
                        'name' => 'Wireless Speakers',
                        'translations' => [
                            'ar' => 'مكبرات صوت لاسلكية',
                            'vi' => 'Loa không dây',
                            'fr' => 'Enceintes sans fil',
                            'id' => 'Speaker Nirkabel',
                            'tr' => 'Kablosuz Hoparlörler',
                        ],
                    ],
                    [
                        'name' => 'Office Electronic',
                        'translations' => [
                            'ar' => 'إلكترونيات المكتب',
                            'vi' => 'Thiết bị văn phòng',
                            'fr' => 'Électronique de bureau',
                            'id' => 'Elektronik Kantor',
                            'tr' => 'Ofis Elektroniği',
                        ],
                    ],
                ],
            ],
            [
                'name' => 'Mobile',
                'icon' => 'flaticon-responsive',
                'image' => 'product-categories/p-2.png',
                'is_featured' => true,
                'translations' => [
                    'ar' => 'هاتف محمول',
                    'vi' => 'Điện thoại',
                    'fr' => 'Mobile',
                    'id' => 'Ponsel',
                    'tr' => 'Cep Telefonu',
                ],
                'children' => [
                    [
                        'name' => 'Digital Cables',
                        'translations' => [
                            'ar' => 'كابلات رقمية',
                            'vi' => 'Cáp kỹ thuật số',
                            'fr' => 'Câbles numériques',
                            'id' => 'Kabel Digital',
                            'tr' => 'Dijital Kablolar',
                        ],
                    ],
                    [
                        'name' => 'Audio & Video Cables',
                        'translations' => [
                            'ar' => 'كابلات الصوت والفيديو',
                            'vi' => 'Cáp âm thanh & video',
                            'fr' => 'Câbles audio et vidéo',
                            'id' => 'Kabel Audio & Video',
                            'tr' => 'Ses ve Video Kabloları',
                        ],
                    ],
                    [
                        'name' => 'Batteries',
                        'translations' => [
                            'ar' => 'بطاريات',
                            'vi' => 'Pin',
                            'fr' => 'Batteries',
                            'id' => 'Baterai',
                            'tr' => 'Piller',
                        ],
                    ],
                ],
            ],
            [
                'name' => 'Headphone',
                'icon' => 'flaticon-headphones',
                'image' => 'product-categories/p-3.png',
                'is_featured' => true,
                'translations' => [
                    'ar' => 'سماعات',
                    'vi' => 'Tai nghe',
                    'fr' => 'Casque',
                    'id' => 'Headphone',
                    'tr' => 'Kulaklık',
                ],
                'children' => [
                    [
                        'name' => 'Computer & Tablets',
                        'translations' => [
                            'ar' => 'أجهزة الكمبيوتر والأجهزة اللوحية',
                            'vi' => 'Máy tính & Máy tính bảng',
                            'fr' => 'Ordinateurs et Tablettes',
                            'id' => 'Komputer & Tablet',
                            'tr' => 'Bilgisayar ve Tabletler',
                        ],
                    ],
                    [
                        'name' => 'Laptop',
                        'translations' => [
                            'ar' => 'حاسوب محمول',
                            'vi' => 'Laptop',
                            'fr' => 'Ordinateur portable',
                            'id' => 'Laptop',
                            'tr' => 'Dizüstü Bilgisayar',
                        ],
                    ],
                    [
                        'name' => 'Monitors',
                        'translations' => [
                            'ar' => 'شاشات',
                            'vi' => 'Màn hình',
                            'fr' => 'Moniteurs',
                            'id' => 'Monitor',
                            'tr' => 'Monitörler',
                        ],
                    ],
                    [
                        'name' => 'Computer Components',
                        'translations' => [
                            'ar' => 'مكونات الكمبيوتر',
                            'vi' => 'Linh kiện máy tính',
                            'fr' => 'Composants informatiques',
                            'id' => 'Komponen Komputer',
                            'tr' => 'Bilgisayar Bileşenleri',
                        ],
                    ],
                ],
            ],
            [
                'name' => 'Watches',
                'icon' => 'flaticon-watch',
                'image' => 'product-categories/p-4.png',
                'is_featured' => true,
                'translations' => [
                    'ar' => 'ساعات',
                    'vi' => 'Đồng hồ',
                    'fr' => 'Montres',
                    'id' => 'Jam Tangan',
                    'tr' => 'Saatler',
                ],
                'children' => [
                    [
                        'name' => 'Drive & Storages',
                        'translations' => [
                            'ar' => 'الأقراص والتخزين',
                            'vi' => 'Ổ đĩa & Lưu trữ',
                            'fr' => 'Lecteurs et Stockage',
                            'id' => 'Drive & Penyimpanan',
                            'tr' => 'Sürücüler ve Depolama',
                        ],
                    ],
                    [
                        'name' => 'Gaming Laptop',
                        'translations' => [
                            'ar' => 'حاسوب الألعاب المحمول',
                            'vi' => 'Laptop chơi game',
                            'fr' => 'Ordinateur portable gaming',
                            'id' => 'Laptop Gaming',
                            'tr' => 'Oyun Dizüstü Bilgisayarı',
                        ],
                    ],
                    [
                        'name' => 'Security & Protection',
                        'translations' => [
                            'ar' => 'الأمان والحماية',
                            'vi' => 'An ninh & Bảo vệ',
                            'fr' => 'Sécurité et Protection',
                            'id' => 'Keamanan & Perlindungan',
                            'tr' => 'Güvenlik ve Koruma',
                        ],
                    ],
                    [
                        'name' => 'Accessories',
                        'translations' => [
                            'ar' => 'إكسسوارات',
                            'vi' => 'Phụ kiện',
                            'fr' => 'Accessoires',
                            'id' => 'Aksesori',
                            'tr' => 'Aksesuarlar',
                        ],
                    ],
                ],
            ],
            [
                'name' => 'Game',
                'icon' => 'flaticon-console',
                'image' => 'product-categories/p-5.png',
                'is_featured' => true,
                'translations' => [
                    'ar' => 'ألعاب',
                    'vi' => 'Trò chơi',
                    'fr' => 'Jeux',
                    'id' => 'Game',
                    'tr' => 'Oyun',
                ],
            ],
            [
                'name' => 'Camera',
                'icon' => 'flaticon-camera',
                'image' => 'product-categories/p-6.png',
                'is_featured' => true,
                'translations' => [
                    'ar' => 'كاميرا',
                    'vi' => 'Máy ảnh',
                    'fr' => 'Caméra',
                    'id' => 'Kamera',
                    'tr' => 'Kamera',
                ],
            ],
            [
                'name' => 'Audio',
                'icon' => 'flaticon-music-system',
                'image' => 'product-categories/p-7.png',
                'is_featured' => true,
                'translations' => [
                    'ar' => 'صوتيات',
                    'vi' => 'Âm thanh',
                    'fr' => 'Audio',
                    'id' => 'Audio',
                    'tr' => 'Ses',
                ],
            ],
            [
                'name' => 'Mobile & Tablet',
                'icon' => 'flaticon-responsive',
                'translations' => [
                    'ar' => 'هاتف محمول وجهاز لوحي',
                    'vi' => 'Điện thoại & Máy tính bảng',
                    'fr' => 'Mobile et Tablette',
                    'id' => 'Ponsel & Tablet',
                    'tr' => 'Cep Telefonu ve Tablet',
                ],
            ],
            [
                'name' => 'Accessories',
                'icon' => 'flaticon-plugins',
                'translations' => [
                    'ar' => 'إكسسوارات',
                    'vi' => 'Phụ kiện',
                    'fr' => 'Accessoires',
                    'id' => 'Aksesori',
                    'tr' => 'Aksesuarlar',
                ],
            ],
            [
                'name' => 'Home Audio & Theater',
                'icon' => 'flaticon-music-system',
                'translations' => [
                    'ar' => 'الصوت المنزلي والمسرح',
                    'vi' => 'Âm thanh gia đình & Rạp hát',
                    'fr' => 'Audio domestique et Cinéma',
                    'id' => 'Audio Rumah & Teater',
                    'tr' => 'Ev Ses Sistemi ve Sinema',
                ],
            ],
            [
                'name' => 'Tv & Smart Box',
                'icon' => 'flaticon-monitor',
                'translations' => [
                    'ar' => 'التلفزيون والأجهزة الذكية',
                    'vi' => 'TV & Smart Box',
                    'fr' => 'TV et Smart Box',
                    'id' => 'TV & Smart Box',
                    'tr' => 'TV ve Akıllı Kutu',
                ],
            ],
            [
                'name' => 'Printer',
                'icon' => 'flaticon-printer',
                'translations' => [
                    'ar' => 'طابعة',
                    'vi' => 'Máy in',
                    'fr' => 'Imprimante',
                    'id' => 'Printer',
                    'tr' => 'Yazıcı',
                ],
            ],
            [
                'name' => 'Computer',
                'icon' => 'flaticon-tv',
                'translations' => [
                    'ar' => 'كمبيوتر',
                    'vi' => 'Máy tính',
                    'fr' => 'Ordinateur',
                    'id' => 'Komputer',
                    'tr' => 'Bilgisayar',
                ],
            ],
            [
                'name' => 'Fax Machine',
                'icon' => 'flaticon-fax',
                'translations' => [
                    'ar' => 'جهاز فاكس',
                    'vi' => 'Máy fax',
                    'fr' => 'Télécopieur',
                    'id' => 'Mesin Fax',
                    'tr' => 'Faks Makinesi',
                ],
            ],
            [
                'name' => 'Mouse',
                'icon' => 'flaticon-mouse',
                'translations' => [
                    'ar' => 'فأرة',
                    'vi' => 'Chuột',
                    'fr' => 'Souris',
                    'id' => 'Mouse',
                    'tr' => 'Fare',
                ],
            ],
        ];

        foreach ($categories as $index => $item) {
            $this->createCategoryItem($index, $item);
        }
    }

    protected function createCategoryItem(int $index, array $category, int|string|null $parentId = 0): void
    {
        $translations = $category['translations'] ?? [];
        $children = $category['children'] ?? [];
        unset($category['translations'], $category['children']);

        $category['parent_id'] = $parentId;
        $category['order'] = $index;

        $createdCategory = ProductCategory::query()->create($category);

        $slug = SlugHelper::createSlug($createdCategory);

        $createdCategory->update(['slug' => $slug->key]);

        foreach ($translations as $locale => $name) {
            DB::table('ec_product_categories_translations')->insert([
                'lang_code' => $locale,
                'ec_product_categories_id' => $createdCategory->id,
                'name' => $name,
            ]);
        }

        foreach ($children as $childIndex => $child) {
            $this->createCategoryItem($childIndex, $child, $createdCategory->id);
        }
    }
}
