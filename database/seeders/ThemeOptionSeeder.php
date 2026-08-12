<?php

namespace Database\Seeders;

use Botble\Base\Supports\BaseSeeder;
use Botble\Setting\Facades\Setting;
use Botble\Theme\Facades\ThemeOption;

class ThemeOptionSeeder extends BaseSeeder
{
    public function run(): void
    {
        $this->uploadFiles('general');

        Setting::newQuery()->where('key', 'LIKE', ThemeOption::getOptionKey('%'))->delete();

        $enOptions = [
            'site_title' => 'Shopwise - Laravel Ecommerce system',
            'seo_description' => 'Shopwise is designed for the eCommerce site. His design is suitable for small and big projects. It was built for your Shopping store, fashion store, clothing store, digital store, watch store, men store, women store, kids store, accessories store, Shoe store and etc.',
            'copyright' => '© ' . now()->format('Y') . ' Botble Technologies. All Rights Reserved.',
            'favicon' => $this->filePath('general/favicon.png'),
            'logo' => $this->filePath('general/logo.png'),
            'logo_footer' => $this->filePath('general/logo-light.png'),
            'address' => '959 Homestead Street Eastlake, NYC',
            'hotline' => '123-456-7890',
            'email' => 'info@sitename.com',
            'payment_methods' => [
                'general/visa.png',
                'general/paypal.png',
                'general/master-card.png',
                'general/discover.png',
                'general/american-express.png',
            ],
            'newsletter_image' => 'general/newsletter.jpg',
            'homepage_id' => 1,
            'blog_page_id' => 3,
            'cookie_consent_message' => 'Your experience on this site will be improved by allowing cookies ',
            'cookie_consent_learn_more_url' => '/cookie-policy',
            'cookie_consent_learn_more_text' => 'Cookie Policy',
            'about-us' => 'If you are going to use of Lorem Ipsum need to be sure there isn\'t hidden of text',
            'footer_text_color' => '#ffffff',
            'footer_background_color' => '#202325',
            'footer_background_image' => 'general/banner-footer.png',
            'header_menu_text_color' => '#ffffff',
            'header_menu_background_color' => '#1D2224',
            'social_links' => [
                [
                    ['key' => 'social-name', 'value' => 'Facebook'],
                    ['key' => 'social-icon', 'value' => 'ion-social-facebook'],
                    ['key' => 'social-url', 'value' => 'https://facebook.com'],
                    ['key' => 'social-color', 'value' => '#3b5998'],
                ],
                [
                    ['key' => 'social-name', 'value' => 'Twitter'],
                    ['key' => 'social-icon', 'value' => 'ion-social-twitter'],
                    ['key' => 'social-url', 'value' => 'https://twitter.com'],
                    ['key' => 'social-color', 'value' => '#00acee'],
                ],
                [
                    ['key' => 'social-name', 'value' => 'Youtube'],
                    ['key' => 'social-icon', 'value' => 'ion-social-youtube'],
                    ['key' => 'social-url', 'value' => 'https://youtube.com'],
                    ['key' => 'social-color', 'value' => '#c4302b'],
                ],
                [
                    ['key' => 'social-name', 'value' => 'Instagram'],
                    ['key' => 'social-icon', 'value' => 'ion-social-instagram'],
                    ['key' => 'social-url', 'value' => 'https://instagram.com'],
                    ['key' => 'social-color', 'value' => '#3f729b'],
                ],
            ],
        ];

        $arOptions = [
            'site_title' => 'شوب وايز - نظام التجارة الإلكترونية',
            'seo_description' => 'شوب وايز مصمم لمواقع التجارة الإلكترونية. تصميمه مناسب للمشاريع الصغيرة والكبيرة.',
            'copyright' => '© ' . now()->format('Y') . ' بوتبل تكنولوجيز. جميع الحقوق محفوظة.',
            'cookie_consent_message' => 'سيتم تحسين تجربتك على هذا الموقع من خلال السماح بملفات تعريف الارتباط',
            'cookie_consent_learn_more_text' => 'سياسة ملفات تعريف الارتباط',
            'about-us' => 'إذا كنت ستستخدم Lorem Ipsum فيجب التأكد من عدم وجود نص مخفي',
        ];

        $viOptions = [
            'site_title' => 'Shopwise - Hệ thống thương mại điện tử',
            'seo_description' => 'Shopwise được thiết kế cho trang thương mại điện tử. Thiết kế phù hợp cho các dự án nhỏ và lớn.',
            'copyright' => '© ' . now()->format('Y') . ' Botble Technologies. Bảo lưu mọi quyền.',
            'cookie_consent_message' => 'Trải nghiệm của bạn trên trang web này sẽ được cải thiện bằng cách cho phép cookie',
            'cookie_consent_learn_more_text' => 'Chính sách Cookie',
            'about-us' => 'Nếu bạn sử dụng Lorem Ipsum cần đảm bảo không có văn bản ẩn',
        ];

        $frOptions = [
            'site_title' => 'Shopwise - Système e-commerce Laravel',
            'seo_description' => 'Shopwise est conçu pour les sites e-commerce. Son design convient aux petits et grands projets.',
            'copyright' => '© ' . now()->format('Y') . ' Botble Technologies. Tous droits réservés.',
            'cookie_consent_message' => 'Votre expérience sur ce site sera améliorée en autorisant les cookies',
            'cookie_consent_learn_more_text' => 'Politique de cookies',
            'about-us' => 'Si vous utilisez Lorem Ipsum, assurez-vous qu\'il n\'y a pas de texte caché',
        ];

        $idOptions = [
            'site_title' => 'Shopwise - Sistem E-commerce Laravel',
            'seo_description' => 'Shopwise dirancang untuk situs e-commerce. Desainnya cocok untuk proyek kecil dan besar.',
            'copyright' => '© ' . now()->format('Y') . ' Botble Technologies. Hak cipta dilindungi.',
            'cookie_consent_message' => 'Pengalaman Anda di situs ini akan ditingkatkan dengan mengizinkan cookie',
            'cookie_consent_learn_more_text' => 'Kebijakan Cookie',
            'about-us' => 'Jika Anda akan menggunakan Lorem Ipsum, pastikan tidak ada teks tersembunyi',
        ];

        $trOptions = [
            'site_title' => 'Shopwise - Laravel E-ticaret Sistemi',
            'seo_description' => 'Shopwise e-ticaret siteleri için tasarlanmıştır. Tasarımı küçük ve büyük projeler için uygundur.',
            'copyright' => '© ' . now()->format('Y') . ' Botble Technologies. Tüm hakları saklıdır.',
            'cookie_consent_message' => 'Çerezlere izin vererek bu sitedeki deneyiminiz iyileştirilecektir',
            'cookie_consent_learn_more_text' => 'Çerez Politikası',
            'about-us' => 'Lorem Ipsum kullanacaksanız gizli metin olmadığından emin olun',
        ];

        Setting::set(ThemeOption::prepareFromArray($enOptions));
        Setting::set(ThemeOption::prepareFromArray($arOptions, 'ar', 'en'));
        Setting::set(ThemeOption::prepareFromArray($viOptions, 'vi', 'en'));
        Setting::set(ThemeOption::prepareFromArray($frOptions, 'fr', 'en'));
        Setting::set(ThemeOption::prepareFromArray($idOptions, 'id', 'en'));
        Setting::set(ThemeOption::prepareFromArray($trOptions, 'tr', 'en'));

        Setting::save();

        setting()->set([
            'admin_logo' => 'general/logo-light.png',
            'admin_favicon' => 'general/favicon.png',
        ])->save();
    }
}
