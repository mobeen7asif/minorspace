<?php

namespace Database\Seeders;

use Botble\Base\Facades\Html;
use Botble\Base\Supports\BaseSeeder;
use Botble\Page\Database\Traits\HasPageSeeder;

class PageSeeder extends BaseSeeder
{
    use HasPageSeeder;

    public function run(): void
    {
        $this->truncatePages();
        $this->truncatePagesTranslations();

        $pages = [
            [
                'name' => 'Homepage',
                'content' => $this->getHomepageContent('en'),
                'template' => 'homepage',
                'translations' => [
                    'ar' => [
                        'name' => 'الرئيسية',
                        'content' => $this->getHomepageContent('ar'),
                    ],
                    'vi' => [
                        'name' => 'Trang chủ',
                        'content' => $this->getHomepageContent('vi'),
                    ],
                    'fr' => [
                        'name' => 'Accueil',
                        'content' => $this->getHomepageContent('fr'),
                    ],
                    'id' => [
                        'name' => 'Beranda',
                        'content' => $this->getHomepageContent('id'),
                    ],
                    'tr' => [
                        'name' => 'Ana Sayfa',
                        'content' => $this->getHomepageContent('tr'),
                    ],
                ],
            ],
            [
                'name' => 'Contact us',
                'content' => Html::tag('div', '[contact-form][/contact-form]') . Html::tag('div', '[google-map]959 Homestead Street Eastlake, NYC[/google-map]'),
                'translations' => [
                    'ar' => ['name' => 'اتصل بنا'],
                    'vi' => ['name' => 'Liên hệ'],
                    'fr' => ['name' => 'Contactez-nous'],
                    'id' => ['name' => 'Hubungi Kami'],
                    'tr' => ['name' => 'Bize Ulaşın'],
                ],
            ],
            [
                'name' => 'Blog',
                'content' => Html::tag('p', '---'),
                'template' => 'blog-sidebar',
                'translations' => [
                    'ar' => ['name' => 'المدونة'],
                    'vi' => ['name' => 'Tin tức'],
                    'fr' => ['name' => 'Blog'],
                    'id' => ['name' => 'Blog'],
                    'tr' => ['name' => 'Blog'],
                ],
            ],
            [
                'name' => 'About us',
                'content' => Html::tag('p', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
                'translations' => [
                    'ar' => ['name' => 'من نحن'],
                    'vi' => ['name' => 'Giới thiệu'],
                    'fr' => ['name' => 'À propos'],
                    'id' => ['name' => 'Tentang Kami'],
                    'tr' => ['name' => 'Hakkımızda'],
                ],
            ],
            [
                'name' => 'FAQ',
                'content' => Html::tag('div', '[faqs enable_lazy_loading="yes"][/faqs]'),
                'translations' => [
                    'ar' => ['name' => 'الأسئلة الشائعة'],
                    'vi' => ['name' => 'Câu hỏi thường gặp'],
                    'fr' => ['name' => 'FAQ'],
                    'id' => ['name' => 'FAQ'],
                    'tr' => ['name' => 'SSS'],
                ],
            ],
            [
                'name' => 'Location',
                'content' => Html::tag('p', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
                'translations' => [
                    'ar' => ['name' => 'الموقع'],
                    'vi' => ['name' => 'Vị trí'],
                    'fr' => ['name' => 'Emplacement'],
                    'id' => ['name' => 'Lokasi'],
                    'tr' => ['name' => 'Konum'],
                ],
            ],
            [
                'name' => 'Affiliates',
                'content' => Html::tag('p', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
                'translations' => [
                    'ar' => ['name' => 'الشركاء'],
                    'vi' => ['name' => 'Đối tác'],
                    'fr' => ['name' => 'Affiliés'],
                    'id' => ['name' => 'Afiliasi'],
                    'tr' => ['name' => 'İş Ortakları'],
                ],
            ],
            [
                'name' => 'Brands',
                'content' => Html::tag('p', '[all-brands enable_lazy_loading="yes"][/all-brands]'),
                'translations' => [
                    'ar' => ['name' => 'العلامات التجارية'],
                    'vi' => ['name' => 'Thương hiệu'],
                    'fr' => ['name' => 'Marques'],
                    'id' => ['name' => 'Merek'],
                    'tr' => ['name' => 'Markalar'],
                ],
            ],
            [
                'name' => 'Cookie Policy',
                'content' => Html::tag('h3', 'EU Cookie Consent') .
                    Html::tag(
                        'p',
                        'To use this website we are using Cookies and collecting some data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.'
                    ) .
                    Html::tag('h4', 'Essential Data') .
                    Html::tag(
                        'p',
                        'The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.'
                    ) .
                    Html::tag(
                        'p',
                        '- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.'
                    ) .
                    Html::tag(
                        'p',
                        '- XSRF-Token Cookie: Laravel automatically generates a CSRF "token" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.'
                    ),
                'translations' => [
                    'ar' => ['name' => 'سياسة ملفات تعريف الارتباط'],
                    'vi' => ['name' => 'Chính sách Cookie'],
                    'fr' => ['name' => 'Politique de cookies'],
                    'id' => ['name' => 'Kebijakan Cookie'],
                    'tr' => ['name' => 'Çerez Politikası'],
                ],
            ],
            [
                'name' => 'Homepage 2',
                'content' => $this->getHomepage2Content('en'),
                'template' => 'homepage',
                'translations' => [
                    'ar' => [
                        'name' => 'الرئيسية 2',
                        'content' => $this->getHomepage2Content('ar'),
                    ],
                    'vi' => [
                        'name' => 'Trang chủ 2',
                        'content' => $this->getHomepage2Content('vi'),
                    ],
                    'fr' => [
                        'name' => 'Accueil 2',
                        'content' => $this->getHomepage2Content('fr'),
                    ],
                    'id' => [
                        'name' => 'Beranda 2',
                        'content' => $this->getHomepage2Content('id'),
                    ],
                    'tr' => [
                        'name' => 'Ana Sayfa 2',
                        'content' => $this->getHomepage2Content('tr'),
                    ],
                ],
            ],
            [
                'name' => 'Homepage 3',
                'content' => $this->getHomepage3Content('en'),
                'template' => 'homepage',
                'translations' => [
                    'ar' => [
                        'name' => 'الرئيسية 3',
                        'content' => $this->getHomepage3Content('ar'),
                    ],
                    'vi' => [
                        'name' => 'Trang chủ 3',
                        'content' => $this->getHomepage3Content('vi'),
                    ],
                    'fr' => [
                        'name' => 'Accueil 3',
                        'content' => $this->getHomepage3Content('fr'),
                    ],
                    'id' => [
                        'name' => 'Beranda 3',
                        'content' => $this->getHomepage3Content('id'),
                    ],
                    'tr' => [
                        'name' => 'Ana Sayfa 3',
                        'content' => $this->getHomepage3Content('tr'),
                    ],
                ],
            ],
            [
                'name' => 'Homepage 4',
                'content' => $this->getHomepage4Content('en'),
                'template' => 'homepage',
                'translations' => [
                    'ar' => [
                        'name' => 'الرئيسية 4',
                        'content' => $this->getHomepage4Content('ar'),
                    ],
                    'vi' => [
                        'name' => 'Trang chủ 4',
                        'content' => $this->getHomepage4Content('vi'),
                    ],
                    'fr' => [
                        'name' => 'Accueil 4',
                        'content' => $this->getHomepage4Content('fr'),
                    ],
                    'id' => [
                        'name' => 'Beranda 4',
                        'content' => $this->getHomepage4Content('id'),
                    ],
                    'tr' => [
                        'name' => 'Ana Sayfa 4',
                        'content' => $this->getHomepage4Content('tr'),
                    ],
                ],
            ],
            [
                'name' => 'Homepage 5',
                'content' => $this->getHomepage5Content('en'),
                'template' => 'homepage',
                'translations' => [
                    'ar' => [
                        'name' => 'الرئيسية 5',
                        'content' => $this->getHomepage5Content('ar'),
                    ],
                    'vi' => [
                        'name' => 'Trang chủ 5',
                        'content' => $this->getHomepage5Content('vi'),
                    ],
                    'fr' => [
                        'name' => 'Accueil 5',
                        'content' => $this->getHomepage5Content('fr'),
                    ],
                    'id' => [
                        'name' => 'Beranda 5',
                        'content' => $this->getHomepage5Content('id'),
                    ],
                    'tr' => [
                        'name' => 'Ana Sayfa 5',
                        'content' => $this->getHomepage5Content('tr'),
                    ],
                ],
            ],
            [
                'name' => 'Homepage 6',
                'content' => $this->getHomepage6Content('en'),
                'template' => 'homepage',
                'translations' => [
                    'ar' => [
                        'name' => 'الرئيسية 6',
                        'content' => $this->getHomepage6Content('ar'),
                    ],
                    'vi' => [
                        'name' => 'Trang chủ 6',
                        'content' => $this->getHomepage6Content('vi'),
                    ],
                    'fr' => [
                        'name' => 'Accueil 6',
                        'content' => $this->getHomepage6Content('fr'),
                    ],
                    'id' => [
                        'name' => 'Beranda 6',
                        'content' => $this->getHomepage6Content('id'),
                    ],
                    'tr' => [
                        'name' => 'Ana Sayfa 6',
                        'content' => $this->getHomepage6Content('tr'),
                    ],
                ],
            ],
        ];

        $this->createPagesWithTranslations($pages);
    }

    protected function getHomepageContent(string $locale): string
    {
        $translations = match ($locale) {
            'ar' => [
                'top_categories' => 'أفضل الفئات',
                'top_categories_subtitle' => 'تصفح فئات منتجاتنا الأكثر شعبية، مختارة خصيصاً لراحتك.',
                'best_deals' => 'أفضل العروض لك',
                'exclusive_products' => 'منتجات حصرية',
                'trending_products' => 'المنتجات الرائجة',
                'featured_products' => 'منتجات مميزة',
                'top_rated_products' => 'المنتجات الأعلى تقييماً',
                'on_sale_products' => 'منتجات بأسعار مخفضة',
                'our_brands' => 'علاماتنا التجارية',
                'visit_blog' => 'زوروا مدونتنا',
                'blog_subtitle' => 'مدونتنا تحدث بأحدث صيحات العالم بانتظام',
                'client_say' => 'ماذا يقول عملاؤنا!',
                'free_delivery' => 'توصيل مجاني',
                'free_delivery_subtitle' => 'شحن مجاني لجميع الطلبات الأمريكية أو الطلبات التي تزيد عن 200$',
                'returns_guarantee' => 'ضمان إرجاع 30 يوم',
                'returns_subtitle' => 'ببساطة أعده خلال 30 يوماً للاستبدال',
                'online_support' => 'دعم على مدار الساعة',
                'support_subtitle' => 'اتصل بنا 24 ساعة في اليوم، 7 أيام في الأسبوع',
                'newsletter_title' => 'اشترك في نشرتنا الإخبارية الآن',
                'newsletter_subtitle' => 'سجل الآن للحصول على تحديثات حول العروض الترويجية.',
            ],
            'vi' => [
                'top_categories' => 'Danh Mục Hàng Đầu',
                'top_categories_subtitle' => 'Duyệt qua các danh mục sản phẩm phổ biến nhất của chúng tôi, được chọn lọc cho sự tiện lợi của bạn.',
                'best_deals' => 'Ưu đãi tốt nhất cho bạn',
                'exclusive_products' => 'Sản Phẩm Độc Quyền',
                'trending_products' => 'Sản Phẩm Thịnh Hành',
                'featured_products' => 'Sản Phẩm Nổi Bật',
                'top_rated_products' => 'Sản Phẩm Được Đánh Giá Cao',
                'on_sale_products' => 'Sản Phẩm Đang Giảm Giá',
                'our_brands' => 'Thương Hiệu Của Chúng Tôi',
                'visit_blog' => 'Ghé Thăm Blog',
                'blog_subtitle' => 'Blog của chúng tôi cập nhật xu hướng mới nhất thế giới thường xuyên',
                'client_say' => 'Khách Hàng Nói Gì!',
                'free_delivery' => 'Giao Hàng Miễn Phí',
                'free_delivery_subtitle' => 'Miễn phí vận chuyển cho tất cả đơn hàng tại Mỹ hoặc đơn hàng trên 200$',
                'returns_guarantee' => 'Đảm Bảo Trả Hàng 30 Ngày',
                'returns_subtitle' => 'Chỉ cần trả lại trong vòng 30 ngày để đổi hàng',
                'online_support' => 'Hỗ Trợ Trực Tuyến 24/7',
                'support_subtitle' => 'Liên hệ chúng tôi 24 giờ mỗi ngày, 7 ngày mỗi tuần',
                'newsletter_title' => 'Đăng Ký Nhận Bản Tin Ngay',
                'newsletter_subtitle' => 'Đăng ký ngay để nhận thông tin về các chương trình khuyến mãi.',
            ],
            'fr' => [
                'top_categories' => 'Meilleures Catégories',
                'top_categories_subtitle' => 'Parcourez nos catégories de produits les plus populaires, sélectionnées pour votre commodité.',
                'best_deals' => 'Meilleures offres pour vous',
                'exclusive_products' => 'Produits Exclusifs',
                'trending_products' => 'Produits Tendance',
                'featured_products' => 'Produits en Vedette',
                'top_rated_products' => 'Produits Les Mieux Notés',
                'on_sale_products' => 'Produits en Promotion',
                'our_brands' => 'Nos Marques',
                'visit_blog' => 'Visitez Notre Blog',
                'blog_subtitle' => 'Notre blog met à jour les dernières tendances du monde régulièrement',
                'client_say' => 'Nos Clients Disent !',
                'free_delivery' => 'Livraison Gratuite',
                'free_delivery_subtitle' => 'Livraison gratuite pour toutes les commandes américaines ou les commandes de plus de 200$',
                'returns_guarantee' => 'Garantie de Retour 30 Jours',
                'returns_subtitle' => 'Retournez-le simplement dans les 30 jours pour un échange',
                'online_support' => 'Support En Ligne 24/7',
                'support_subtitle' => 'Contactez-nous 24 heures sur 24, 7 jours sur 7',
                'newsletter_title' => 'Inscrivez-vous à Notre Newsletter',
                'newsletter_subtitle' => 'Inscrivez-vous maintenant pour recevoir les mises à jour sur les promotions.',
            ],
            'id' => [
                'top_categories' => 'Kategori Teratas',
                'top_categories_subtitle' => 'Jelajahi kategori produk kami yang paling populer, dipilih khusus untuk kenyamanan Anda.',
                'best_deals' => 'Penawaran terbaik untuk Anda',
                'exclusive_products' => 'Produk Eksklusif',
                'trending_products' => 'Produk Tren',
                'featured_products' => 'Produk Unggulan',
                'top_rated_products' => 'Produk Paling Diminati',
                'on_sale_products' => 'Produk Diskon',
                'our_brands' => 'Merek Kami',
                'visit_blog' => 'Kunjungi Blog Kami',
                'blog_subtitle' => 'Blog kami memperbarui tren terbaru dunia secara berkala',
                'client_say' => 'Kata Pelanggan Kami!',
                'free_delivery' => 'Pengiriman Gratis',
                'free_delivery_subtitle' => 'Gratis ongkir untuk semua pesanan AS atau pesanan di atas $200',
                'returns_guarantee' => 'Garansi Pengembalian 30 Hari',
                'returns_subtitle' => 'Cukup kembalikan dalam 30 hari untuk penukaran',
                'online_support' => 'Dukungan Online 24/7',
                'support_subtitle' => 'Hubungi kami 24 jam sehari, 7 hari seminggu',
                'newsletter_title' => 'Bergabung Newsletter Kami Sekarang',
                'newsletter_subtitle' => 'Daftar sekarang untuk mendapatkan info promosi.',
            ],
            'tr' => [
                'top_categories' => 'En İyi Kategoriler',
                'top_categories_subtitle' => 'En popüler ürün kategorilerimize göz atın, kolaylığınız için özenle seçildi.',
                'best_deals' => 'Sizin için en iyi fırsatlar',
                'exclusive_products' => 'Özel Ürünler',
                'trending_products' => 'Trend Ürünler',
                'featured_products' => 'Öne Çıkan Ürünler',
                'top_rated_products' => 'En Çok Beğenilen Ürünler',
                'on_sale_products' => 'İndirimli Ürünler',
                'our_brands' => 'Markalarımız',
                'visit_blog' => 'Blogumuzu Ziyaret Edin',
                'blog_subtitle' => 'Blogumuz dünyanın en yeni trendlerini düzenli olarak günceller',
                'client_say' => 'Müşterilerimiz Ne Diyor!',
                'free_delivery' => 'Ücretsiz Teslimat',
                'free_delivery_subtitle' => 'Tüm ABD siparişlerinde veya 200$ üzeri siparişlerde ücretsiz kargo',
                'returns_guarantee' => '30 Gün İade Garantisi',
                'returns_subtitle' => 'Değişim için 30 gün içinde iade edin',
                'online_support' => '7/24 Çevrimiçi Destek',
                'support_subtitle' => 'Günde 24 saat, haftada 7 gün bize ulaşın',
                'newsletter_title' => 'Bültenimize Şimdi Katılın',
                'newsletter_subtitle' => 'Promosyonlar hakkında güncellemeler almak için şimdi kaydolun.',
            ],
            default => [
                'top_categories' => 'Top Categories',
                'top_categories_subtitle' => 'Browse our most popular product categories, handpicked for your convenience.',
                'best_deals' => 'Best deals for you',
                'exclusive_products' => 'Exclusive Products',
                'trending_products' => 'Trending Products',
                'featured_products' => 'Featured Products',
                'top_rated_products' => 'Top Rated Products',
                'on_sale_products' => 'On Sale Products',
                'our_brands' => 'Our Brands',
                'visit_blog' => 'Visit Our Blog',
                'blog_subtitle' => 'Our Blog updated the newest trend of the world regularly',
                'client_say' => 'Our Client Say!',
                'free_delivery' => 'Free Delivery',
                'free_delivery_subtitle' => 'Free shipping on all US order or order above $200',
                'returns_guarantee' => '30 Day Returns Guarantee',
                'returns_subtitle' => 'Simply return it within 30 days for an exchange',
                'online_support' => '27/4 Online Support',
                'support_subtitle' => 'Contact us 24 hours a day, 7 days a week',
                'newsletter_title' => 'Join Our Newsletter Now',
                'newsletter_subtitle' => 'Register now to get updates on promotions.',
            ],
        };

        return Html::tag('div', '[simple-slider key="home-slider"][/simple-slider]') .
            Html::tag(
                'div',
                '[featured-product-categories enable_lazy_loading="yes" title="' . $translations['top_categories'] . '" subtitle="' . $translations['top_categories_subtitle'] . '"][/featured-product-categories]'
            ) .
            Html::tag('div', '[flash-sale enable_lazy_loading="yes" title="' . $translations['best_deals'] . '"][/flash-sale]') .
            Html::tag(
                'div',
                '[product-collections enable_lazy_loading="yes" title="' . $translations['exclusive_products'] . '"][/product-collections]'
            ) .
            Html::tag(
                'div',
                '[theme-ads key_1="IZ6WU8KUALYD" key_2="ILSFJVYFGCPZ" key_3="ZDOZUZZIU7FT"][/theme-ads]'
            ) .
            Html::tag(
                'div',
                '[trending-products enable_lazy_loading="yes" title="' . $translations['trending_products'] . '"][/trending-products]'
            ) .
            Html::tag(
                'div',
                '[product-blocks enable_lazy_loading="yes" featured_product_title="' . $translations['featured_products'] . '" top_rated_product_title="' . $translations['top_rated_products'] . '" on_sale_product_title="' . $translations['on_sale_products'] . '"][/product-blocks]'
            ) .
            Html::tag(
                'div',
                '[featured-brands enable_lazy_loading="yes" title="' . $translations['our_brands'] . '"][/featured-brands]'
            ) .
            Html::tag(
                'div',
                '[featured-news enable_lazy_loading="yes" title="' . $translations['visit_blog'] . '" subtitle="' . $translations['blog_subtitle'] . '"][/featured-news]'
            ) .
            Html::tag('div', '[testimonials enable_lazy_loading="yes" title="' . $translations['client_say'] . '"][/testimonials]') .
            Html::tag(
                'div',
                '[our-features icon1="flaticon-shipped" title1="' . $translations['free_delivery'] . '" subtitle1="' . $translations['free_delivery_subtitle'] . '" icon2="flaticon-money-back" title2="' . $translations['returns_guarantee'] . '" subtitle2="' . $translations['returns_subtitle'] . '" icon3="flaticon-support" title3="' . $translations['online_support'] . '" subtitle3="' . $translations['support_subtitle'] . '"][/our-features]'
            ) .
            Html::tag(
                'div',
                '[newsletter-form title="' . $translations['newsletter_title'] . '" subtitle="' . $translations['newsletter_subtitle'] . '"][/newsletter-form]'
            );
    }

    protected function getHomepage2Content(string $locale): string
    {
        $translations = match ($locale) {
            'ar' => [
                'exclusive_products' => 'منتجات حصرية',
                'deal_of_days' => 'صفقة اليوم',
                'featured_products' => 'منتجات مميزة',
                'our_brands' => 'علاماتنا التجارية',
                'subscribe_newsletter' => 'اشترك في نشرتنا الإخبارية',
            ],
            'vi' => [
                'exclusive_products' => 'Sản Phẩm Độc Quyền',
                'deal_of_days' => 'Ưu Đãi Trong Ngày',
                'featured_products' => 'Sản Phẩm Nổi Bật',
                'our_brands' => 'Thương Hiệu Của Chúng Tôi',
                'subscribe_newsletter' => 'Đăng Ký Nhận Bản Tin',
            ],
            'fr' => [
                'exclusive_products' => 'Produits Exclusifs',
                'deal_of_days' => 'Offre du Jour',
                'featured_products' => 'Produits en Vedette',
                'our_brands' => 'Nos Marques',
                'subscribe_newsletter' => 'Abonnez-vous à Notre Newsletter',
            ],
            'id' => [
                'exclusive_products' => 'Produk Eksklusif',
                'deal_of_days' => 'Penawaran Hari Ini',
                'featured_products' => 'Produk Unggulan',
                'our_brands' => 'Merek Kami',
                'subscribe_newsletter' => 'Berlangganan Newsletter Kami',
            ],
            'tr' => [
                'exclusive_products' => 'Özel Ürünler',
                'deal_of_days' => 'Günün Fırsatı',
                'featured_products' => 'Öne Çıkan Ürünler',
                'our_brands' => 'Markalarımız',
                'subscribe_newsletter' => 'Bültenimize Abone Olun',
            ],
            default => [
                'exclusive_products' => 'Exclusive Products',
                'deal_of_days' => 'Deal Of The Days',
                'featured_products' => 'Featured Products',
                'our_brands' => 'Our Brands',
                'subscribe_newsletter' => 'Subscribe Our Newsletter',
            ],
        };

        return Html::tag('div', '[simple-slider collapsing_product_categories="yes" style="style-2" key="home-slider"][/simple-slider]') .
            Html::tag(
                'div',
                '[product-collections enable_lazy_loading="yes" title="' . $translations['exclusive_products'] . '"][/product-collections]'
            ) .
            Html::tag(
                'div',
                '[theme-ads key_1="DHAEBCMWGYJG" key_2="MDEUVQI9QPKM" style="style-2"][/theme-ads]'
            ) .
            Html::tag('div', '[flash-sale enable_lazy_loading="yes" style="style-2" title="' . $translations['deal_of_days'] . '" flash_sale_id="1"][/flash-sale]') .
            Html::tag(
                'div',
                '[theme-ads key_1="IZ6WU8KUALYD" key_2="ILSFJVYFGCPZ" key_3="ZDOZUZZIU7FT"][/theme-ads]'
            ) .
            Html::tag(
                'div',
                '[product-blocks enable_lazy_loading="yes" featured_product_title="' . $translations['featured_products'] . '" style="style-2"][/product-blocks]'
            ) .
            Html::tag(
                'div',
                '[featured-brands enable_lazy_loading="yes" title="' . $translations['our_brands'] . '"][/featured-brands]'
            ) .
            Html::tag(
                'div',
                '[newsletter-form style="style-2" title="' . $translations['subscribe_newsletter'] . '"][/newsletter-form]'
            );
    }

    protected function getHomepage3Content(string $locale): string
    {
        $translations = match ($locale) {
            'ar' => [
                'free_delivery' => 'توصيل مجاني',
                'free_delivery_subtitle' => 'عالمياً',
                'money_returns' => 'استرداد الأموال',
                'money_returns_subtitle' => 'استرداد الأموال خلال 30 يوماً',
                'online_support' => 'دعم على مدار الساعة',
                'online_support_subtitle' => 'دعم العملاء',
                'payment_security' => 'أمان الدفع',
                'payment_security_subtitle' => 'دفع آمن',
                'exclusive_products' => 'منتجات حصرية',
                'trending_items' => 'العناصر الرائجة',
                'our_brands' => 'علاماتنا التجارية',
            ],
            'vi' => [
                'free_delivery' => 'Giao Hàng Miễn Phí',
                'free_delivery_subtitle' => 'Toàn thế giới',
                'money_returns' => 'Hoàn Tiền',
                'money_returns_subtitle' => 'Hoàn tiền trong 30 ngày',
                'online_support' => 'Hỗ Trợ Trực Tuyến 24/7',
                'online_support_subtitle' => 'Hỗ Trợ Khách Hàng',
                'payment_security' => 'Bảo Mật Thanh Toán',
                'payment_security_subtitle' => 'Thanh Toán An Toàn',
                'exclusive_products' => 'Sản Phẩm Độc Quyền',
                'trending_items' => 'Sản Phẩm Xu Hướng',
                'our_brands' => 'Thương Hiệu Của Chúng Tôi',
            ],
            'fr' => [
                'free_delivery' => 'Livraison Gratuite',
                'free_delivery_subtitle' => 'Mondial',
                'money_returns' => 'Remboursement',
                'money_returns_subtitle' => 'Remboursement sous 30 jours',
                'online_support' => 'Support En Ligne 24/7',
                'online_support_subtitle' => 'Service Client',
                'payment_security' => 'Sécurité de Paiement',
                'payment_security_subtitle' => 'Paiement Sécurisé',
                'exclusive_products' => 'Produits Exclusifs',
                'trending_items' => 'Articles Tendance',
                'our_brands' => 'Nos Marques',
            ],
            'id' => [
                'free_delivery' => 'Pengiriman Gratis',
                'free_delivery_subtitle' => 'Seluruh Dunia',
                'money_returns' => 'Pengembalian Dana',
                'money_returns_subtitle' => 'Pengembalian dana 30 hari',
                'online_support' => 'Dukungan Online 24/7',
                'online_support_subtitle' => 'Dukungan Pelanggan',
                'payment_security' => 'Keamanan Pembayaran',
                'payment_security_subtitle' => 'Pembayaran Aman',
                'exclusive_products' => 'Produk Eksklusif',
                'trending_items' => 'Item Tren',
                'our_brands' => 'Merek Kami',
            ],
            'tr' => [
                'free_delivery' => 'Ücretsiz Teslimat',
                'free_delivery_subtitle' => 'Dünya Çapında',
                'money_returns' => 'Para İadesi',
                'money_returns_subtitle' => '30 gün para iadesi',
                'online_support' => '7/24 Çevrimiçi Destek',
                'online_support_subtitle' => 'Müşteri Desteği',
                'payment_security' => 'Ödeme Güvenliği',
                'payment_security_subtitle' => 'Güvenli Ödeme',
                'exclusive_products' => 'Özel Ürünler',
                'trending_items' => 'Trend Ürünler',
                'our_brands' => 'Markalarımız',
            ],
            default => [
                'free_delivery' => 'Free Delivery',
                'free_delivery_subtitle' => 'Worldwide',
                'money_returns' => 'Money Returns',
                'money_returns_subtitle' => '30 Days money return',
                'online_support' => '27/4 Online Support',
                'online_support_subtitle' => 'Customer Support',
                'payment_security' => 'Payment Security',
                'payment_security_subtitle' => 'Safe Payment',
                'exclusive_products' => 'Exclusive Products',
                'trending_items' => 'Trending Items',
                'our_brands' => 'Our Brands',
            ],
        };

        return Html::tag('div', '[simple-slider collapsing_product_categories="yes" style="style-3" key="home-slider"][/simple-slider]') .
            Html::tag(
                'div',
                '[our-features style="style-3" icon1="flaticon-shipped" title1="' . $translations['free_delivery'] . '" subtitle1="' . $translations['free_delivery_subtitle'] . '" icon2="flaticon-money-back" title2="' . $translations['money_returns'] . '" subtitle2="' . $translations['money_returns_subtitle'] . '" icon3="flaticon-support" title3="' . $translations['online_support'] . '" subtitle3="' . $translations['online_support_subtitle'] . '" icon4="flaticon-lock" title4="' . $translations['payment_security'] . '" subtitle4="' . $translations['payment_security_subtitle'] . '"][/our-features]'
            ) .
            Html::tag(
                'div',
                '[product-blocks enable_lazy_loading="yes" featured_product_title="' . $translations['exclusive_products'] . '" style="style-3" number_of_displays="8"][/product-blocks]'
            ) .
            Html::tag(
                'div',
                '[theme-ads style="style-3" key_1="EYMG7NGZTHJL" key_2="NKWBGV6NAC3M"][/theme-ads]'
            ) .
            Html::tag(
                'div',
                '[trending-products enable_lazy_loading="yes" style="style-3" title="' . $translations['trending_items'] . '"][/trending-products]'
            ) .
            Html::tag(
                'div',
                '[instagram enable_lazy_loading="yes" title="instagram" username="@shoppingzone" images="general/insta-1.jpg,general/insta-1.jpg,general/insta-1.jpg,general/insta-1.jpg,general/insta-1.jpg,general/insta-1.jpg,general/insta-1.jpg,general/insta-1.jpg"][/instagram]'
            ) .
            Html::tag(
                'div',
                '[featured-brands enable_lazy_loading="yes" style="style-3" title="' . $translations['our_brands'] . '"][/featured-brands]'
            );
    }

    protected function getHomepage4Content(string $locale): string
    {
        $translations = match ($locale) {
            'ar' => [
                'top_categories' => 'أفضل الفئات',
                'top_products' => 'أفضل منتجاتنا',
                'big_sale_deal' => 'عرض التخفيضات الكبير',
                'sale_description' => 'خصم 40%',
                'special_offers' => 'عروض خاصة',
                'latest_news' => 'آخر الأخبار',
                'newsletter_title' => 'اشترك في نشرتنا الإخبارية الآن',
                'newsletter_subtitle' => 'سجل الآن للحصول على تحديثات حول العروض الترويجية.',
            ],
            'vi' => [
                'top_categories' => 'Danh Mục Hàng Đầu',
                'top_products' => 'Sản Phẩm Hàng Đầu',
                'big_sale_deal' => 'Đại Giảm Giá',
                'sale_description' => 'Giảm 40%',
                'special_offers' => 'Ưu Đãi Đặc Biệt',
                'latest_news' => 'Tin Tức Mới Nhất',
                'newsletter_title' => 'Đăng Ký Nhận Bản Tin Ngay',
                'newsletter_subtitle' => 'Đăng ký ngay để nhận thông tin về các chương trình khuyến mãi.',
            ],
            'fr' => [
                'top_categories' => 'Meilleures Catégories',
                'top_products' => 'Nos Meilleurs Produits',
                'big_sale_deal' => 'Grande Promotion',
                'sale_description' => 'Remise de 40%',
                'special_offers' => 'Offres Spéciales',
                'latest_news' => 'Dernières Nouvelles',
                'newsletter_title' => 'Inscrivez-vous à Notre Newsletter',
                'newsletter_subtitle' => 'Inscrivez-vous maintenant pour recevoir les mises à jour sur les promotions.',
            ],
            'id' => [
                'top_categories' => 'Kategori Teratas',
                'top_products' => 'Produk Teratas Kami',
                'big_sale_deal' => 'Penawaran Diskon Besar',
                'sale_description' => 'Diskon 40%',
                'special_offers' => 'Penawaran Spesial',
                'latest_news' => 'Berita Terbaru',
                'newsletter_title' => 'Bergabung Newsletter Kami Sekarang',
                'newsletter_subtitle' => 'Daftar sekarang untuk mendapatkan info promosi.',
            ],
            'tr' => [
                'top_categories' => 'En İyi Kategoriler',
                'top_products' => 'En İyi Ürünlerimiz',
                'big_sale_deal' => 'Büyük İndirim Fırsatı',
                'sale_description' => '%40 İndirim',
                'special_offers' => 'Özel Teklifler',
                'latest_news' => 'Son Haberler',
                'newsletter_title' => 'Bültenimize Şimdi Katılın',
                'newsletter_subtitle' => 'Promosyonlar hakkında güncellemeler almak için şimdi kaydolun.',
            ],
            default => [
                'top_categories' => 'Top Categories',
                'top_products' => 'Our Top Products',
                'big_sale_deal' => 'Big Sale Deal',
                'sale_description' => 'Sale 40% Off',
                'special_offers' => 'Special Offers',
                'latest_news' => 'Latest News',
                'newsletter_title' => 'Join Our Newsletter Now',
                'newsletter_subtitle' => 'Register now to get updates on promotions.',
            ],
        };

        return Html::tag('div', '[simple-slider collapsing_product_categories="yes" style="style-4" key="home-slider"][/simple-slider]') .
            Html::tag(
                'div',
                '[featured-product-categories enable_lazy_loading="yes" style="style-4" link="products" title="' . $translations['top_categories'] . '" subtitle="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus blandit massa enim Nullam nunc varius."][/featured-product-categories]'
            ) .
            Html::tag(
                'div',
                '[trending-products enable_lazy_loading="yes" style="style-4" number_of_displays="8" title="' . $translations['top_products'] . '" description="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus blandit massa enim Nullam nunc varius."][/trending-products]'
            ) .
            Html::tag('div', '[flash-sale enable_lazy_loading="yes" style="style-4" flash_sale_id="1" background_image="general/furniture-banner3.jpg" show_newsletter="yes" title="' . $translations['big_sale_deal'] . '" description="' . $translations['sale_description'] . '" button_url="/products"][/flash-sale]') .
            Html::tag(
                'div',
                '[product-blocks enable_lazy_loading="yes" style="style-4" on_sale_product_title="' . $translations['special_offers'] . '" on_sale_product_description="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus blandit massa enim Nullam nunc varius."][/product-blocks]'
            ) .
            Html::tag(
                'div',
                '[featured-news enable_lazy_loading="yes" title="' . $translations['latest_news'] . '" subtitle="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore."][/featured-news]'
            ) .
            Html::tag(
                'div',
                '[newsletter-form title="' . $translations['newsletter_title'] . '" subtitle="' . $translations['newsletter_subtitle'] . '"][/newsletter-form]'
            );
    }

    protected function getHomepage5Content(string $locale): string
    {
        $translations = match ($locale) {
            'ar' => [
                'exclusive_products' => 'منتجات حصرية',
                'best_deals' => 'أفضل العروض لك',
                'trending_products' => 'المنتجات الرائجة',
                'our_brands' => 'علاماتنا التجارية',
                'featured_products' => 'منتجات مميزة',
                'top_rated_products' => 'المنتجات الأعلى تقييماً',
                'on_sale_products' => 'منتجات بأسعار مخفضة',
                'newsletter_title' => 'اشترك في نشرتنا الإخبارية الآن',
                'newsletter_subtitle' => 'سجل الآن للحصول على تحديثات حول العروض الترويجية.',
            ],
            'vi' => [
                'exclusive_products' => 'Sản Phẩm Độc Quyền',
                'best_deals' => 'Ưu đãi tốt nhất cho bạn',
                'trending_products' => 'Sản Phẩm Thịnh Hành',
                'our_brands' => 'Thương Hiệu Của Chúng Tôi',
                'featured_products' => 'Sản Phẩm Nổi Bật',
                'top_rated_products' => 'Sản Phẩm Được Đánh Giá Cao',
                'on_sale_products' => 'Sản Phẩm Đang Giảm Giá',
                'newsletter_title' => 'Đăng Ký Nhận Bản Tin Ngay',
                'newsletter_subtitle' => 'Đăng ký ngay để nhận thông tin về các chương trình khuyến mãi.',
            ],
            'fr' => [
                'exclusive_products' => 'Produits Exclusifs',
                'best_deals' => 'Meilleures offres pour vous',
                'trending_products' => 'Produits Tendance',
                'our_brands' => 'Nos Marques',
                'featured_products' => 'Produits en Vedette',
                'top_rated_products' => 'Produits Les Mieux Notés',
                'on_sale_products' => 'Produits en Promotion',
                'newsletter_title' => 'Inscrivez-vous à Notre Newsletter',
                'newsletter_subtitle' => 'Inscrivez-vous maintenant pour recevoir les mises à jour sur les promotions.',
            ],
            'id' => [
                'exclusive_products' => 'Produk Eksklusif',
                'best_deals' => 'Penawaran terbaik untuk Anda',
                'trending_products' => 'Produk Tren',
                'our_brands' => 'Merek Kami',
                'featured_products' => 'Produk Unggulan',
                'top_rated_products' => 'Produk Paling Diminati',
                'on_sale_products' => 'Produk Diskon',
                'newsletter_title' => 'Bergabung Newsletter Kami Sekarang',
                'newsletter_subtitle' => 'Daftar sekarang untuk mendapatkan info promosi.',
            ],
            'tr' => [
                'exclusive_products' => 'Özel Ürünler',
                'best_deals' => 'Sizin için en iyi fırsatlar',
                'trending_products' => 'Trend Ürünler',
                'our_brands' => 'Markalarımız',
                'featured_products' => 'Öne Çıkan Ürünler',
                'top_rated_products' => 'En Çok Beğenilen Ürünler',
                'on_sale_products' => 'İndirimli Ürünler',
                'newsletter_title' => 'Bültenimize Şimdi Katılın',
                'newsletter_subtitle' => 'Promosyonlar hakkında güncellemeler almak için şimdi kaydolun.',
            ],
            default => [
                'exclusive_products' => 'Exclusive Products',
                'best_deals' => 'Best deals for you',
                'trending_products' => 'Trending Products',
                'our_brands' => 'Our Brands',
                'featured_products' => 'Featured Products',
                'top_rated_products' => 'Top Rated Products',
                'on_sale_products' => 'On Sale Products',
                'newsletter_title' => 'Join Our Newsletter Now',
                'newsletter_subtitle' => 'Register now to get updates on promotions.',
            ],
        };

        return Html::tag('div', '[simple-slider collapsing_product_categories="no" style="style-5" key="home-slider" ads_1="WF2VEBKBGUFA" ads_2="YKE9S2TUEEJB"][/simple-slider]') .
            Html::tag(
                'div',
                '[product-collections enable_lazy_loading="yes" style="style-5" ads_key="WF2VEBKBGUFA" title="' . $translations['exclusive_products'] . '"][/product-collections]'
            ) .
            Html::tag(
                'div',
                '[theme-ads key_1="IZ6WU8KUALYD" key_2="ILSFJVYFGCPZ" key_3="ZDOZUZZIU7FT"][/theme-ads]'
            ) .
            Html::tag('div', '[flash-sale enable_lazy_loading="yes" title="' . $translations['best_deals'] . '"][/flash-sale]') .
            Html::tag(
                'div',
                '[trending-products enable_lazy_loading="yes" ads_key="YKE9S2TUEEJB" title="' . $translations['trending_products'] . '"][/trending-products]'
            ) .
            Html::tag(
                'div',
                '[featured-brands enable_lazy_loading="yes" title="' . $translations['our_brands'] . '"][/featured-brands]'
            ) .
            Html::tag(
                'div',
                '[product-blocks enable_lazy_loading="yes" featured_product_title="' . $translations['featured_products'] . '" top_rated_product_title="' . $translations['top_rated_products'] . '" on_sale_product_title="' . $translations['on_sale_products'] . '"][/product-blocks]'
            ) .
            Html::tag(
                'div',
                '[newsletter-form title="' . $translations['newsletter_title'] . '" subtitle="' . $translations['newsletter_subtitle'] . '"][/newsletter-form]'
            );
    }

    protected function getHomepage6Content(string $locale): string
    {
        $translations = match ($locale) {
            'ar' => [
                'top_categories' => 'أفضل الفئات',
                'exclusive_products' => 'منتجات حصرية',
                'trending_products' => 'المنتجات الرائجة',
                'client_say' => 'ماذا يقول عملاؤنا!',
                'visit_blog' => 'زوروا مدونتنا',
                'blog_subtitle' => 'مدونتنا تحدث بأحدث صيحات العالم بانتظام',
                'our_brands' => 'علاماتنا التجارية',
                'newsletter_title' => 'اشترك في نشرتنا الإخبارية الآن',
                'newsletter_subtitle' => 'سجل الآن للحصول على تحديثات حول العروض الترويجية.',
            ],
            'vi' => [
                'top_categories' => 'Danh Mục Hàng Đầu',
                'exclusive_products' => 'Sản Phẩm Độc Quyền',
                'trending_products' => 'Sản Phẩm Thịnh Hành',
                'client_say' => 'Khách Hàng Nói Gì!',
                'visit_blog' => 'Ghé Thăm Blog',
                'blog_subtitle' => 'Blog của chúng tôi cập nhật xu hướng mới nhất thế giới thường xuyên',
                'our_brands' => 'Thương Hiệu Của Chúng Tôi',
                'newsletter_title' => 'Đăng Ký Nhận Bản Tin Ngay',
                'newsletter_subtitle' => 'Đăng ký ngay để nhận thông tin về các chương trình khuyến mãi.',
            ],
            'fr' => [
                'top_categories' => 'Meilleures Catégories',
                'exclusive_products' => 'Produits Exclusifs',
                'trending_products' => 'Produits Tendance',
                'client_say' => 'Nos Clients Disent !',
                'visit_blog' => 'Visitez Notre Blog',
                'blog_subtitle' => 'Notre blog met à jour les dernières tendances du monde régulièrement',
                'our_brands' => 'Nos Marques',
                'newsletter_title' => 'Inscrivez-vous à Notre Newsletter',
                'newsletter_subtitle' => 'Inscrivez-vous maintenant pour recevoir les mises à jour sur les promotions.',
            ],
            'id' => [
                'top_categories' => 'Kategori Teratas',
                'exclusive_products' => 'Produk Eksklusif',
                'trending_products' => 'Produk Tren',
                'client_say' => 'Kata Pelanggan Kami!',
                'visit_blog' => 'Kunjungi Blog Kami',
                'blog_subtitle' => 'Blog kami memperbarui tren terbaru dunia secara berkala',
                'our_brands' => 'Merek Kami',
                'newsletter_title' => 'Bergabung Newsletter Kami Sekarang',
                'newsletter_subtitle' => 'Daftar sekarang untuk mendapatkan info promosi.',
            ],
            'tr' => [
                'top_categories' => 'En İyi Kategoriler',
                'exclusive_products' => 'Özel Ürünler',
                'trending_products' => 'Trend Ürünler',
                'client_say' => 'Müşterilerimiz Ne Diyor!',
                'visit_blog' => 'Blogumuzu Ziyaret Edin',
                'blog_subtitle' => 'Blogumuz dünyanın en yeni trendlerini düzenli olarak günceller',
                'our_brands' => 'Markalarımız',
                'newsletter_title' => 'Bültenimize Şimdi Katılın',
                'newsletter_subtitle' => 'Promosyonlar hakkında güncellemeler almak için şimdi kaydolun.',
            ],
            default => [
                'top_categories' => 'Top Categories',
                'exclusive_products' => 'Exclusive Products',
                'trending_products' => 'Trending Products',
                'client_say' => 'Our Client Say!',
                'visit_blog' => 'Visit Our Blog',
                'blog_subtitle' => 'Our Blog updated the newest trend of the world regularly',
                'our_brands' => 'Our Brands',
                'newsletter_title' => 'Join Our Newsletter Now',
                'newsletter_subtitle' => 'Register now to get updates on promotions.',
            ],
        };

        return Html::tag('div', '[simple-slider collapsing_product_categories="yes" style="style-6" key="home-slider"][/simple-slider]') .
            Html::tag(
                'div',
                '[theme-ads key_1="IZ6WU8KUALYD" key_2="ILSFJVYFGCPZ" key_3="ZDOZUZZIU7FT"][/theme-ads]'
            ) .
            Html::tag(
                'div',
                '[featured-product-categories enable_lazy_loading="yes" title="' . $translations['top_categories'] . '" subtitle="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus blandit massa enim Nullam nunc varius."][/featured-product-categories]'
            ) .
            Html::tag(
                'div',
                '[product-collections enable_lazy_loading="yes" style="style-6" title="' . $translations['exclusive_products'] . '"][/product-collections]'
            ) .
            Html::tag(
                'div',
                '[theme-ads key_1="7W3YFO7XE422"][/theme-ads]'
            ) .
            Html::tag(
                'div',
                '[trending-products enable_lazy_loading="yes" title="' . $translations['trending_products'] . '"][/trending-products]'
            ) .
            Html::tag('div', '[testimonials enable_lazy_loading="yes" title="' . $translations['client_say'] . '"][/testimonials]') .
            Html::tag(
                'div',
                '[featured-news enable_lazy_loading="yes" title="' . $translations['visit_blog'] . '" subtitle="' . $translations['blog_subtitle'] . '"][/featured-news]'
            ) .
            Html::tag(
                'div',
                '[featured-brands title="' . $translations['our_brands'] . '" style="style-3"][/featured-brands]'
            ) .
            Html::tag(
                'div',
                '[newsletter-form title="' . $translations['newsletter_title'] . '" subtitle="' . $translations['newsletter_subtitle'] . '"][/newsletter-form]'
            );
    }
}
