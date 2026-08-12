<?php

namespace Database\Seeders;

use Botble\Base\Supports\BaseSeeder;
use Botble\Blog\Models\Category;
use Botble\Blog\Models\Tag;
use Botble\Ecommerce\Models\Brand;
use Botble\Ecommerce\Models\ProductCategory;
use Botble\Ecommerce\Models\ProductTag;
use Botble\Language\Models\LanguageMeta;
use Botble\Menu\Facades\Menu;
use Botble\Menu\Models\Menu as MenuModel;
use Botble\Menu\Models\MenuLocation;
use Botble\Menu\Models\MenuNode;
use Botble\Page\Models\Page;
use Illuminate\Support\Arr;
use Illuminate\Support\Str;

class MenuSeeder extends BaseSeeder
{
    public function run(): void
    {
        MenuModel::query()->truncate();
        MenuLocation::query()->truncate();
        MenuNode::query()->truncate();

        $pages = Page::query()->pluck('id', 'name')->all();

        $this->createMainMenu($pages);
        $this->createUsefulLinksMenu($pages);
        $this->createCategoriesMenu();
        $this->createMyAccountMenu();

        Menu::clearCacheMenuItems();
    }

    protected function createMainMenu(array $pages): void
    {
        $enData = [
            'name' => 'Main menu',
            'slug' => 'main-menu',
            'location' => 'main-menu',
            'items' => [
                [
                    'title' => 'Home',
                    'url' => '/',
                    'children' => [
                        ['title' => 'Homepage', 'url' => '/'],
                        ['title' => 'Homepage 2', 'reference_id' => $pages['Homepage 2'] ?? null, 'reference_type' => Page::class],
                        ['title' => 'Homepage 3', 'reference_id' => $pages['Homepage 3'] ?? null, 'reference_type' => Page::class],
                        ['title' => 'Homepage 4', 'reference_id' => $pages['Homepage 4'] ?? null, 'reference_type' => Page::class],
                        ['title' => 'Homepage 5', 'reference_id' => $pages['Homepage 5'] ?? null, 'reference_type' => Page::class],
                        ['title' => 'Homepage 6', 'reference_id' => $pages['Homepage 6'] ?? null, 'reference_type' => Page::class],
                    ],
                ],
                ['title' => 'Products', 'url' => '/products'],
                [
                    'title' => 'Shop',
                    'url' => '#',
                    'children' => [
                        ['title' => 'Product Category', 'reference_id' => 1, 'reference_type' => ProductCategory::class],
                        ['title' => 'Brand', 'reference_id' => 1, 'reference_type' => Brand::class],
                        ['title' => 'Product Tag', 'reference_id' => 1, 'reference_type' => ProductTag::class],
                        ['title' => 'Product Single', 'url' => 'products/beat-headphone'],
                    ],
                ],
                [
                    'title' => 'Blog',
                    'reference_id' => $pages['Blog'] ?? null,
                    'reference_type' => Page::class,
                    'children' => [
                        ['title' => 'Blog Left Sidebar', 'reference_id' => $pages['Blog'] ?? null, 'reference_type' => Page::class],
                        ['title' => 'Blog Category', 'reference_id' => 1, 'reference_type' => Category::class],
                        ['title' => 'Blog Tag', 'reference_id' => 1, 'reference_type' => Tag::class],
                        ['title' => 'Blog Single', 'url' => 'blog/how-to-match-the-color-of-your-handbag-with-an-outfit'],
                    ],
                ],
                ['title' => 'FAQ', 'reference_id' => $pages['FAQ'] ?? null, 'reference_type' => Page::class],
                ['title' => 'Contact', 'reference_id' => $pages['Contact us'] ?? null, 'reference_type' => Page::class],
            ],
        ];

        $translations = [
            'ar' => [
                'name' => 'القائمة الرئيسية',
                'items' => [
                    [
                        'title' => 'الرئيسية',
                        'url' => '/',
                        'children' => [
                            ['title' => 'الرئيسية', 'url' => '/'],
                            ['title' => 'الرئيسية 2', 'reference_id' => $pages['Homepage 2'] ?? null, 'reference_type' => Page::class],
                            ['title' => 'الرئيسية 3', 'reference_id' => $pages['Homepage 3'] ?? null, 'reference_type' => Page::class],
                            ['title' => 'الرئيسية 4', 'reference_id' => $pages['Homepage 4'] ?? null, 'reference_type' => Page::class],
                            ['title' => 'الرئيسية 5', 'reference_id' => $pages['Homepage 5'] ?? null, 'reference_type' => Page::class],
                            ['title' => 'الرئيسية 6', 'reference_id' => $pages['Homepage 6'] ?? null, 'reference_type' => Page::class],
                        ],
                    ],
                    ['title' => 'المنتجات', 'url' => '/products'],
                    [
                        'title' => 'المتجر',
                        'url' => '#',
                        'children' => [
                            ['title' => 'فئة المنتج', 'reference_id' => 1, 'reference_type' => ProductCategory::class],
                            ['title' => 'العلامة التجارية', 'reference_id' => 1, 'reference_type' => Brand::class],
                            ['title' => 'وسم المنتج', 'reference_id' => 1, 'reference_type' => ProductTag::class],
                            ['title' => 'منتج فردي', 'url' => 'products/beat-headphone'],
                        ],
                    ],
                    [
                        'title' => 'المدونة',
                        'reference_id' => $pages['Blog'] ?? null,
                        'reference_type' => Page::class,
                        'children' => [
                            ['title' => 'المدونة مع شريط جانبي', 'reference_id' => $pages['Blog'] ?? null, 'reference_type' => Page::class],
                            ['title' => 'فئة المدونة', 'reference_id' => 1, 'reference_type' => Category::class],
                            ['title' => 'وسم المدونة', 'reference_id' => 1, 'reference_type' => Tag::class],
                            ['title' => 'مقال فردي', 'url' => 'blog/how-to-match-the-color-of-your-handbag-with-an-outfit'],
                        ],
                    ],
                    ['title' => 'الأسئلة الشائعة', 'reference_id' => $pages['FAQ'] ?? null, 'reference_type' => Page::class],
                    ['title' => 'اتصل بنا', 'reference_id' => $pages['Contact us'] ?? null, 'reference_type' => Page::class],
                ],
            ],
            'vi' => [
                'name' => 'Menu chính',
                'items' => [
                    [
                        'title' => 'Trang chủ',
                        'url' => '/',
                        'children' => [
                            ['title' => 'Trang chủ', 'url' => '/'],
                            ['title' => 'Trang chủ 2', 'reference_id' => $pages['Homepage 2'] ?? null, 'reference_type' => Page::class],
                            ['title' => 'Trang chủ 3', 'reference_id' => $pages['Homepage 3'] ?? null, 'reference_type' => Page::class],
                            ['title' => 'Trang chủ 4', 'reference_id' => $pages['Homepage 4'] ?? null, 'reference_type' => Page::class],
                            ['title' => 'Trang chủ 5', 'reference_id' => $pages['Homepage 5'] ?? null, 'reference_type' => Page::class],
                            ['title' => 'Trang chủ 6', 'reference_id' => $pages['Homepage 6'] ?? null, 'reference_type' => Page::class],
                        ],
                    ],
                    ['title' => 'Sản phẩm', 'url' => '/products'],
                    [
                        'title' => 'Cửa hàng',
                        'url' => '#',
                        'children' => [
                            ['title' => 'Danh mục sản phẩm', 'reference_id' => 1, 'reference_type' => ProductCategory::class],
                            ['title' => 'Thương hiệu', 'reference_id' => 1, 'reference_type' => Brand::class],
                            ['title' => 'Thẻ sản phẩm', 'reference_id' => 1, 'reference_type' => ProductTag::class],
                            ['title' => 'Sản phẩm đơn', 'url' => 'products/beat-headphone'],
                        ],
                    ],
                    [
                        'title' => 'Tin tức',
                        'reference_id' => $pages['Blog'] ?? null,
                        'reference_type' => Page::class,
                        'children' => [
                            ['title' => 'Tin tức thanh bên', 'reference_id' => $pages['Blog'] ?? null, 'reference_type' => Page::class],
                            ['title' => 'Danh mục tin tức', 'reference_id' => 1, 'reference_type' => Category::class],
                            ['title' => 'Thẻ tin tức', 'reference_id' => 1, 'reference_type' => Tag::class],
                            ['title' => 'Bài viết đơn', 'url' => 'blog/how-to-match-the-color-of-your-handbag-with-an-outfit'],
                        ],
                    ],
                    ['title' => 'Câu hỏi thường gặp', 'reference_id' => $pages['FAQ'] ?? null, 'reference_type' => Page::class],
                    ['title' => 'Liên hệ', 'reference_id' => $pages['Contact us'] ?? null, 'reference_type' => Page::class],
                ],
            ],
            'fr' => [
                'name' => 'Menu principal',
                'items' => [
                    [
                        'title' => 'Accueil',
                        'url' => '/',
                        'children' => [
                            ['title' => 'Accueil', 'url' => '/'],
                            ['title' => 'Accueil 2', 'reference_id' => $pages['Homepage 2'] ?? null, 'reference_type' => Page::class],
                            ['title' => 'Accueil 3', 'reference_id' => $pages['Homepage 3'] ?? null, 'reference_type' => Page::class],
                            ['title' => 'Accueil 4', 'reference_id' => $pages['Homepage 4'] ?? null, 'reference_type' => Page::class],
                            ['title' => 'Accueil 5', 'reference_id' => $pages['Homepage 5'] ?? null, 'reference_type' => Page::class],
                            ['title' => 'Accueil 6', 'reference_id' => $pages['Homepage 6'] ?? null, 'reference_type' => Page::class],
                        ],
                    ],
                    ['title' => 'Produits', 'url' => '/products'],
                    [
                        'title' => 'Boutique',
                        'url' => '#',
                        'children' => [
                            ['title' => 'Catégorie de produits', 'reference_id' => 1, 'reference_type' => ProductCategory::class],
                            ['title' => 'Marque', 'reference_id' => 1, 'reference_type' => Brand::class],
                            ['title' => 'Tag produit', 'reference_id' => 1, 'reference_type' => ProductTag::class],
                            ['title' => 'Produit individuel', 'url' => 'products/beat-headphone'],
                        ],
                    ],
                    [
                        'title' => 'Blog',
                        'reference_id' => $pages['Blog'] ?? null,
                        'reference_type' => Page::class,
                        'children' => [
                            ['title' => 'Blog barre latérale', 'reference_id' => $pages['Blog'] ?? null, 'reference_type' => Page::class],
                            ['title' => 'Catégorie du blog', 'reference_id' => 1, 'reference_type' => Category::class],
                            ['title' => 'Tag du blog', 'reference_id' => 1, 'reference_type' => Tag::class],
                            ['title' => 'Article du blog', 'url' => 'blog/how-to-match-the-color-of-your-handbag-with-an-outfit'],
                        ],
                    ],
                    ['title' => 'FAQ', 'reference_id' => $pages['FAQ'] ?? null, 'reference_type' => Page::class],
                    ['title' => 'Contact', 'reference_id' => $pages['Contact us'] ?? null, 'reference_type' => Page::class],
                ],
            ],
            'id' => [
                'name' => 'Menu Utama',
                'items' => [
                    [
                        'title' => 'Beranda',
                        'url' => '/',
                        'children' => [
                            ['title' => 'Beranda', 'url' => '/'],
                            ['title' => 'Beranda 2', 'reference_id' => $pages['Homepage 2'] ?? null, 'reference_type' => Page::class],
                            ['title' => 'Beranda 3', 'reference_id' => $pages['Homepage 3'] ?? null, 'reference_type' => Page::class],
                            ['title' => 'Beranda 4', 'reference_id' => $pages['Homepage 4'] ?? null, 'reference_type' => Page::class],
                            ['title' => 'Beranda 5', 'reference_id' => $pages['Homepage 5'] ?? null, 'reference_type' => Page::class],
                            ['title' => 'Beranda 6', 'reference_id' => $pages['Homepage 6'] ?? null, 'reference_type' => Page::class],
                        ],
                    ],
                    ['title' => 'Produk', 'url' => '/products'],
                    [
                        'title' => 'Toko',
                        'url' => '#',
                        'children' => [
                            ['title' => 'Kategori Produk', 'reference_id' => 1, 'reference_type' => ProductCategory::class],
                            ['title' => 'Merek', 'reference_id' => 1, 'reference_type' => Brand::class],
                            ['title' => 'Tag Produk', 'reference_id' => 1, 'reference_type' => ProductTag::class],
                            ['title' => 'Produk Tunggal', 'url' => 'products/beat-headphone'],
                        ],
                    ],
                    [
                        'title' => 'Blog',
                        'reference_id' => $pages['Blog'] ?? null,
                        'reference_type' => Page::class,
                        'children' => [
                            ['title' => 'Blog Sidebar', 'reference_id' => $pages['Blog'] ?? null, 'reference_type' => Page::class],
                            ['title' => 'Kategori Blog', 'reference_id' => 1, 'reference_type' => Category::class],
                            ['title' => 'Tag Blog', 'reference_id' => 1, 'reference_type' => Tag::class],
                            ['title' => 'Artikel Blog', 'url' => 'blog/how-to-match-the-color-of-your-handbag-with-an-outfit'],
                        ],
                    ],
                    ['title' => 'FAQ', 'reference_id' => $pages['FAQ'] ?? null, 'reference_type' => Page::class],
                    ['title' => 'Kontak', 'reference_id' => $pages['Contact us'] ?? null, 'reference_type' => Page::class],
                ],
            ],
            'tr' => [
                'name' => 'Ana Menü',
                'items' => [
                    [
                        'title' => 'Ana Sayfa',
                        'url' => '/',
                        'children' => [
                            ['title' => 'Ana Sayfa', 'url' => '/'],
                            ['title' => 'Ana Sayfa 2', 'reference_id' => $pages['Homepage 2'] ?? null, 'reference_type' => Page::class],
                            ['title' => 'Ana Sayfa 3', 'reference_id' => $pages['Homepage 3'] ?? null, 'reference_type' => Page::class],
                            ['title' => 'Ana Sayfa 4', 'reference_id' => $pages['Homepage 4'] ?? null, 'reference_type' => Page::class],
                            ['title' => 'Ana Sayfa 5', 'reference_id' => $pages['Homepage 5'] ?? null, 'reference_type' => Page::class],
                            ['title' => 'Ana Sayfa 6', 'reference_id' => $pages['Homepage 6'] ?? null, 'reference_type' => Page::class],
                        ],
                    ],
                    ['title' => 'Ürünler', 'url' => '/products'],
                    [
                        'title' => 'Mağaza',
                        'url' => '#',
                        'children' => [
                            ['title' => 'Ürün Kategorisi', 'reference_id' => 1, 'reference_type' => ProductCategory::class],
                            ['title' => 'Marka', 'reference_id' => 1, 'reference_type' => Brand::class],
                            ['title' => 'Ürün Etiketi', 'reference_id' => 1, 'reference_type' => ProductTag::class],
                            ['title' => 'Tekil Ürün', 'url' => 'products/beat-headphone'],
                        ],
                    ],
                    [
                        'title' => 'Blog',
                        'reference_id' => $pages['Blog'] ?? null,
                        'reference_type' => Page::class,
                        'children' => [
                            ['title' => 'Blog Kenar Çubuğu', 'reference_id' => $pages['Blog'] ?? null, 'reference_type' => Page::class],
                            ['title' => 'Blog Kategorisi', 'reference_id' => 1, 'reference_type' => Category::class],
                            ['title' => 'Blog Etiketi', 'reference_id' => 1, 'reference_type' => Tag::class],
                            ['title' => 'Blog Yazısı', 'url' => 'blog/how-to-match-the-color-of-your-handbag-with-an-outfit'],
                        ],
                    ],
                    ['title' => 'SSS', 'reference_id' => $pages['FAQ'] ?? null, 'reference_type' => Page::class],
                    ['title' => 'İletişim', 'reference_id' => $pages['Contact us'] ?? null, 'reference_type' => Page::class],
                ],
            ],
        ];

        $this->createMenuWithTranslations($enData, 'main-menu', $translations);
    }

    protected function createUsefulLinksMenu(array $pages): void
    {
        $enData = [
            'name' => 'Useful Links',
            'slug' => 'useful-links',
            'items' => [
                ['title' => 'About Us', 'reference_id' => $pages['About us'] ?? null, 'reference_type' => Page::class],
                ['title' => 'FAQ', 'reference_id' => $pages['FAQ'] ?? null, 'reference_type' => Page::class],
                ['title' => 'Location', 'reference_id' => $pages['Location'] ?? null, 'reference_type' => Page::class],
                ['title' => 'Affiliates', 'reference_id' => $pages['Affiliates'] ?? null, 'reference_type' => Page::class],
                ['title' => 'Contact', 'reference_id' => $pages['Contact us'] ?? null, 'reference_type' => Page::class],
            ],
        ];

        $translations = [
            'ar' => [
                'name' => 'روابط مفيدة',
                'items' => [
                    ['title' => 'من نحن', 'reference_id' => $pages['About us'] ?? null, 'reference_type' => Page::class],
                    ['title' => 'الأسئلة الشائعة', 'reference_id' => $pages['FAQ'] ?? null, 'reference_type' => Page::class],
                    ['title' => 'الموقع', 'reference_id' => $pages['Location'] ?? null, 'reference_type' => Page::class],
                    ['title' => 'الشركاء', 'reference_id' => $pages['Affiliates'] ?? null, 'reference_type' => Page::class],
                    ['title' => 'اتصل بنا', 'reference_id' => $pages['Contact us'] ?? null, 'reference_type' => Page::class],
                ],
            ],
            'vi' => [
                'name' => 'Liên kết hữu ích',
                'items' => [
                    ['title' => 'Giới thiệu', 'reference_id' => $pages['About us'] ?? null, 'reference_type' => Page::class],
                    ['title' => 'Câu hỏi thường gặp', 'reference_id' => $pages['FAQ'] ?? null, 'reference_type' => Page::class],
                    ['title' => 'Vị trí', 'reference_id' => $pages['Location'] ?? null, 'reference_type' => Page::class],
                    ['title' => 'Đối tác', 'reference_id' => $pages['Affiliates'] ?? null, 'reference_type' => Page::class],
                    ['title' => 'Liên hệ', 'reference_id' => $pages['Contact us'] ?? null, 'reference_type' => Page::class],
                ],
            ],
            'fr' => [
                'name' => 'Liens utiles',
                'items' => [
                    ['title' => 'À propos', 'reference_id' => $pages['About us'] ?? null, 'reference_type' => Page::class],
                    ['title' => 'FAQ', 'reference_id' => $pages['FAQ'] ?? null, 'reference_type' => Page::class],
                    ['title' => 'Emplacement', 'reference_id' => $pages['Location'] ?? null, 'reference_type' => Page::class],
                    ['title' => 'Affiliés', 'reference_id' => $pages['Affiliates'] ?? null, 'reference_type' => Page::class],
                    ['title' => 'Contact', 'reference_id' => $pages['Contact us'] ?? null, 'reference_type' => Page::class],
                ],
            ],
            'id' => [
                'name' => 'Tautan Berguna',
                'items' => [
                    ['title' => 'Tentang Kami', 'reference_id' => $pages['About us'] ?? null, 'reference_type' => Page::class],
                    ['title' => 'FAQ', 'reference_id' => $pages['FAQ'] ?? null, 'reference_type' => Page::class],
                    ['title' => 'Lokasi', 'reference_id' => $pages['Location'] ?? null, 'reference_type' => Page::class],
                    ['title' => 'Afiliasi', 'reference_id' => $pages['Affiliates'] ?? null, 'reference_type' => Page::class],
                    ['title' => 'Kontak', 'reference_id' => $pages['Contact us'] ?? null, 'reference_type' => Page::class],
                ],
            ],
            'tr' => [
                'name' => 'Faydalı Bağlantılar',
                'items' => [
                    ['title' => 'Hakkımızda', 'reference_id' => $pages['About us'] ?? null, 'reference_type' => Page::class],
                    ['title' => 'SSS', 'reference_id' => $pages['FAQ'] ?? null, 'reference_type' => Page::class],
                    ['title' => 'Konum', 'reference_id' => $pages['Location'] ?? null, 'reference_type' => Page::class],
                    ['title' => 'İş Ortakları', 'reference_id' => $pages['Affiliates'] ?? null, 'reference_type' => Page::class],
                    ['title' => 'İletişim', 'reference_id' => $pages['Contact us'] ?? null, 'reference_type' => Page::class],
                ],
            ],
        ];

        $this->createMenuWithTranslations($enData, null, $translations);
    }

    protected function createCategoriesMenu(): void
    {
        $enData = [
            'name' => 'Categories',
            'slug' => 'categories',
            'items' => [
                ['title' => 'Television', 'reference_id' => 1, 'reference_type' => ProductCategory::class],
                ['title' => 'Mobile', 'reference_id' => 2, 'reference_type' => ProductCategory::class],
                ['title' => 'Headphone', 'reference_id' => 3, 'reference_type' => ProductCategory::class],
                ['title' => 'Watches', 'reference_id' => 4, 'reference_type' => ProductCategory::class],
                ['title' => 'Game', 'reference_id' => 5, 'reference_type' => ProductCategory::class],
            ],
        ];

        $translations = [
            'ar' => [
                'name' => 'الفئات',
                'items' => [
                    ['title' => 'تلفزيون', 'reference_id' => 1, 'reference_type' => ProductCategory::class],
                    ['title' => 'هاتف محمول', 'reference_id' => 2, 'reference_type' => ProductCategory::class],
                    ['title' => 'سماعات', 'reference_id' => 3, 'reference_type' => ProductCategory::class],
                    ['title' => 'ساعات', 'reference_id' => 4, 'reference_type' => ProductCategory::class],
                    ['title' => 'ألعاب', 'reference_id' => 5, 'reference_type' => ProductCategory::class],
                ],
            ],
            'vi' => [
                'name' => 'Danh mục',
                'items' => [
                    ['title' => 'Tivi', 'reference_id' => 1, 'reference_type' => ProductCategory::class],
                    ['title' => 'Điện thoại', 'reference_id' => 2, 'reference_type' => ProductCategory::class],
                    ['title' => 'Tai nghe', 'reference_id' => 3, 'reference_type' => ProductCategory::class],
                    ['title' => 'Đồng hồ', 'reference_id' => 4, 'reference_type' => ProductCategory::class],
                    ['title' => 'Trò chơi', 'reference_id' => 5, 'reference_type' => ProductCategory::class],
                ],
            ],
            'fr' => [
                'name' => 'Catégories',
                'items' => [
                    ['title' => 'Télévision', 'reference_id' => 1, 'reference_type' => ProductCategory::class],
                    ['title' => 'Mobile', 'reference_id' => 2, 'reference_type' => ProductCategory::class],
                    ['title' => 'Casque', 'reference_id' => 3, 'reference_type' => ProductCategory::class],
                    ['title' => 'Montres', 'reference_id' => 4, 'reference_type' => ProductCategory::class],
                    ['title' => 'Jeux', 'reference_id' => 5, 'reference_type' => ProductCategory::class],
                ],
            ],
            'id' => [
                'name' => 'Kategori',
                'items' => [
                    ['title' => 'Televisi', 'reference_id' => 1, 'reference_type' => ProductCategory::class],
                    ['title' => 'Ponsel', 'reference_id' => 2, 'reference_type' => ProductCategory::class],
                    ['title' => 'Headphone', 'reference_id' => 3, 'reference_type' => ProductCategory::class],
                    ['title' => 'Jam Tangan', 'reference_id' => 4, 'reference_type' => ProductCategory::class],
                    ['title' => 'Game', 'reference_id' => 5, 'reference_type' => ProductCategory::class],
                ],
            ],
            'tr' => [
                'name' => 'Kategoriler',
                'items' => [
                    ['title' => 'Televizyon', 'reference_id' => 1, 'reference_type' => ProductCategory::class],
                    ['title' => 'Cep Telefonu', 'reference_id' => 2, 'reference_type' => ProductCategory::class],
                    ['title' => 'Kulaklık', 'reference_id' => 3, 'reference_type' => ProductCategory::class],
                    ['title' => 'Saat', 'reference_id' => 4, 'reference_type' => ProductCategory::class],
                    ['title' => 'Oyun', 'reference_id' => 5, 'reference_type' => ProductCategory::class],
                ],
            ],
        ];

        $this->createMenuWithTranslations($enData, null, $translations);
    }

    protected function createMyAccountMenu(): void
    {
        $enData = [
            'name' => 'My Account',
            'slug' => 'my-account',
            'items' => [
                ['title' => 'My profile', 'url' => '/customer/overview'],
                ['title' => 'Wishlist', 'url' => '/wishlist'],
                ['title' => 'Orders', 'url' => 'customer/orders'],
                ['title' => 'Order tracking', 'url' => '/orders/tracking'],
            ],
        ];

        $translations = [
            'ar' => [
                'name' => 'حسابي',
                'items' => [
                    ['title' => 'ملفي الشخصي', 'url' => '/customer/overview'],
                    ['title' => 'قائمة الرغبات', 'url' => '/wishlist'],
                    ['title' => 'الطلبات', 'url' => 'customer/orders'],
                    ['title' => 'تتبع الطلب', 'url' => '/orders/tracking'],
                ],
            ],
            'vi' => [
                'name' => 'Tài khoản',
                'items' => [
                    ['title' => 'Hồ sơ của tôi', 'url' => '/customer/overview'],
                    ['title' => 'Danh sách yêu thích', 'url' => '/wishlist'],
                    ['title' => 'Đơn hàng', 'url' => 'customer/orders'],
                    ['title' => 'Theo dõi đơn hàng', 'url' => '/orders/tracking'],
                ],
            ],
            'fr' => [
                'name' => 'Mon compte',
                'items' => [
                    ['title' => 'Mon profil', 'url' => '/customer/overview'],
                    ['title' => 'Liste de souhaits', 'url' => '/wishlist'],
                    ['title' => 'Commandes', 'url' => 'customer/orders'],
                    ['title' => 'Suivi de commande', 'url' => '/orders/tracking'],
                ],
            ],
            'id' => [
                'name' => 'Akun Saya',
                'items' => [
                    ['title' => 'Profil Saya', 'url' => '/customer/overview'],
                    ['title' => 'Daftar Keinginan', 'url' => '/wishlist'],
                    ['title' => 'Pesanan', 'url' => 'customer/orders'],
                    ['title' => 'Lacak Pesanan', 'url' => '/orders/tracking'],
                ],
            ],
            'tr' => [
                'name' => 'Hesabım',
                'items' => [
                    ['title' => 'Profilim', 'url' => '/customer/overview'],
                    ['title' => 'İstek Listesi', 'url' => '/wishlist'],
                    ['title' => 'Siparişler', 'url' => 'customer/orders'],
                    ['title' => 'Sipariş Takibi', 'url' => '/orders/tracking'],
                ],
            ],
        ];

        $this->createMenuWithTranslations($enData, null, $translations);
    }

    protected function createMenuWithTranslations(array $enData, ?string $location, array $translations): void
    {
        $menuOrigin = md5(Str::random(20) . time());
        $locationOrigin = md5(Str::random(20) . time() . 'loc');

        $enData['location'] = $location;
        $this->createMenu($enData, 'en_US', $menuOrigin, $locationOrigin);

        foreach ($translations as $locale => $translationData) {
            $translationData['slug'] = $enData['slug'] . '-' . $locale;
            $translationData['location'] = $location;
            $this->createMenu($translationData, $locale, $menuOrigin, $locationOrigin);
        }
    }

    protected function createMenu(array $data, string $locale, string $menuOrigin, string $locationOrigin): MenuModel
    {
        $menu = MenuModel::query()->create([
            'name' => $data['name'],
            'slug' => $data['slug'],
        ]);

        if (! empty($data['location'])) {
            $menuLocation = MenuLocation::query()->create([
                'menu_id' => $menu->getKey(),
                'location' => $data['location'],
            ]);

            if (is_plugin_active('language')) {
                LanguageMeta::saveMetaData($menuLocation, $locale, $locationOrigin);
            }
        }

        foreach (($data['items'] ?? []) as $position => $menuNode) {
            $this->createMenuNode($position, $menuNode, $menu->getKey());
        }

        if (is_plugin_active('language')) {
            LanguageMeta::saveMetaData($menu, $locale, $menuOrigin);
        }

        return $menu;
    }

    protected function createMenuNode(int $position, array $menuNode, int|string $menuId, int|string $parentId = 0): void
    {
        $menuNode['menu_id'] = $menuId;
        $menuNode['parent_id'] = $parentId;
        $menuNode['position'] = $position;

        if (isset($menuNode['url'])) {
            $menuNode['url'] = str_replace(url(''), '', $menuNode['url']);
        }

        $children = [];
        if (Arr::has($menuNode, 'children') && ! empty($menuNode['children'])) {
            $children = $menuNode['children'];
            $menuNode['has_child'] = true;
        } else {
            $menuNode['has_child'] = false;
        }

        Arr::forget($menuNode, 'children');

        $createdNode = MenuNode::query()->create($menuNode);

        foreach ($children as $childPosition => $child) {
            $this->createMenuNode($childPosition, $child, $menuId, $createdNode->getKey());
        }
    }
}
