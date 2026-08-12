<?php

namespace Database\Seeders;

use Botble\Base\Supports\BaseSeeder;
use Botble\Faq\Models\Faq;
use Botble\Faq\Models\FaqCategory;
use Illuminate\Support\Facades\DB;

class FaqSeeder extends BaseSeeder
{
    public function run(): void
    {
        Faq::query()->truncate();
        FaqCategory::query()->truncate();
        DB::table('faq_categories_translations')->truncate();
        DB::table('faqs_translations')->truncate();

        $categories = [
            [
                'name' => 'Shipping',
                'translations' => [
                    'ar' => 'الشحن',
                    'vi' => 'Vận chuyển',
                    'fr' => 'Livraison',
                    'id' => 'Pengiriman',
                    'tr' => 'Kargo',
                ],
            ],
            [
                'name' => 'Payment',
                'translations' => [
                    'ar' => 'الدفع',
                    'vi' => 'Thanh toán',
                    'fr' => 'Paiement',
                    'id' => 'Pembayaran',
                    'tr' => 'Ödeme',
                ],
            ],
            [
                'name' => 'Order & Returns',
                'translations' => [
                    'ar' => 'الطلبات والمرتجعات',
                    'vi' => 'Đơn hàng & Đổi trả',
                    'fr' => 'Commandes et retours',
                    'id' => 'Pesanan & Pengembalian',
                    'tr' => 'Sipariş ve İadeler',
                ],
            ],
        ];

        foreach ($categories as $index => $value) {
            $translations = $value['translations'];
            unset($value['translations']);

            $value['order'] = $index;
            $category = FaqCategory::query()->create($value);

            foreach ($translations as $locale => $name) {
                DB::table('faq_categories_translations')->insert([
                    'lang_code' => $locale,
                    'faq_categories_id' => $category->id,
                    'name' => $name,
                ]);
            }
        }

        $faqItems = $this->getFaqItems();

        foreach ($faqItems as $faqData) {
            $translations = $faqData['translations'] ?? [];
            unset($faqData['translations']);

            $faq = Faq::query()->create($faqData);

            foreach ($translations as $locale => $translation) {
                DB::table('faqs_translations')->insert([
                    'lang_code' => $locale,
                    'faqs_id' => $faq->id,
                    'question' => $translation['question'],
                    'answer' => $translation['answer'],
                ]);
            }
        }
    }

    protected function getFaqItems(): array
    {
        return [
            [
                'question' => 'What Shipping Methods Are Available?',
                'answer' => 'Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.',
                'category_id' => 1,
                'translations' => [
                    'ar' => [
                        'question' => 'ما هي طرق الشحن المتاحة؟',
                        'answer' => 'نحن نقدم عدة طرق شحن بما في ذلك الشحن القياسي والسريع والتوصيل في نفس اليوم حسب موقعك.',
                    ],
                    'vi' => [
                        'question' => 'Có những phương thức vận chuyển nào?',
                        'answer' => 'Chúng tôi cung cấp nhiều phương thức vận chuyển bao gồm vận chuyển tiêu chuẩn, nhanh và giao hàng trong ngày tùy thuộc vào vị trí của bạn.',
                    ],
                    'fr' => [
                        'question' => 'Quelles sont les méthodes de livraison disponibles ?',
                        'answer' => 'Nous proposons plusieurs méthodes de livraison, notamment la livraison standard, express et le jour même selon votre emplacement.',
                    ],
                    'id' => [
                        'question' => 'Metode pengiriman apa saja yang tersedia?',
                        'answer' => 'Kami menawarkan beberapa metode pengiriman termasuk pengiriman standar, ekspres, dan pengiriman di hari yang sama tergantung lokasi Anda.',
                    ],
                    'tr' => [
                        'question' => 'Hangi kargo yöntemleri mevcut?',
                        'answer' => 'Konumunuza bağlı olarak standart, hızlı ve aynı gün teslimat dahil olmak üzere çeşitli kargo yöntemleri sunuyoruz.',
                    ],
                ],
            ],
            [
                'question' => 'Do You Ship Internationally?',
                'answer' => 'Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.',
                'category_id' => 1,
                'translations' => [
                    'ar' => [
                        'question' => 'هل تقومون بالشحن دوليًا؟',
                        'answer' => 'نعم، نحن نشحن إلى العديد من الدول حول العالم. تختلف رسوم الشحن ومدة التوصيل حسب الوجهة.',
                    ],
                    'vi' => [
                        'question' => 'Bạn có giao hàng quốc tế không?',
                        'answer' => 'Có, chúng tôi giao hàng đến nhiều quốc gia trên thế giới. Phí vận chuyển và thời gian giao hàng khác nhau tùy theo điểm đến.',
                    ],
                    'fr' => [
                        'question' => 'Livrez-vous à l\'international ?',
                        'answer' => 'Oui, nous livrons dans de nombreux pays à travers le monde. Les frais de livraison et les délais varient selon la destination.',
                    ],
                    'id' => [
                        'question' => 'Apakah Anda mengirim ke luar negeri?',
                        'answer' => 'Ya, kami mengirim ke banyak negara di seluruh dunia. Biaya pengiriman dan waktu pengiriman bervariasi tergantung tujuan.',
                    ],
                    'tr' => [
                        'question' => 'Uluslararası kargo yapıyor musunuz?',
                        'answer' => 'Evet, dünya genelinde birçok ülkeye kargo gönderiyoruz. Kargo ücretleri ve teslimat süreleri varış noktasına göre değişir.',
                    ],
                ],
            ],
            [
                'question' => 'How Long Will It Take To Get My Package?',
                'answer' => 'Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.',
                'category_id' => 1,
                'translations' => [
                    'ar' => [
                        'question' => 'كم من الوقت سيستغرق وصول طردي؟',
                        'answer' => 'عادة ما يستغرق الشحن القياسي من 5 إلى 7 أيام عمل، بينما يستغرق الشحن السريع من 2 إلى 3 أيام عمل.',
                    ],
                    'vi' => [
                        'question' => 'Mất bao lâu để nhận được gói hàng?',
                        'answer' => 'Vận chuyển tiêu chuẩn thường mất 5-7 ngày làm việc, trong khi vận chuyển nhanh mất 2-3 ngày làm việc.',
                    ],
                    'fr' => [
                        'question' => 'Combien de temps faudra-t-il pour recevoir mon colis ?',
                        'answer' => 'La livraison standard prend généralement 5 à 7 jours ouvrables, tandis que la livraison express prend 2 à 3 jours ouvrables.',
                    ],
                    'id' => [
                        'question' => 'Berapa lama paket saya akan sampai?',
                        'answer' => 'Pengiriman standar biasanya memakan waktu 5-7 hari kerja, sedangkan pengiriman ekspres memakan waktu 2-3 hari kerja.',
                    ],
                    'tr' => [
                        'question' => 'Paketimin gelmesi ne kadar sürer?',
                        'answer' => 'Standart kargo genellikle 5-7 iş günü, hızlı kargo ise 2-3 iş günü sürer.',
                    ],
                ],
            ],
            [
                'question' => 'What Payment Methods Are Accepted?',
                'answer' => 'Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.',
                'category_id' => 2,
                'translations' => [
                    'ar' => [
                        'question' => 'ما هي طرق الدفع المقبولة؟',
                        'answer' => 'نحن نقبل جميع بطاقات الائتمان الرئيسية وPayPal والتحويل البنكي والدفع عند الاستلام.',
                    ],
                    'vi' => [
                        'question' => 'Những phương thức thanh toán nào được chấp nhận?',
                        'answer' => 'Chúng tôi chấp nhận tất cả các thẻ tín dụng chính, PayPal, chuyển khoản ngân hàng và thanh toán khi nhận hàng.',
                    ],
                    'fr' => [
                        'question' => 'Quels modes de paiement sont acceptés ?',
                        'answer' => 'Nous acceptons toutes les principales cartes de crédit, PayPal, le virement bancaire et le paiement à la livraison.',
                    ],
                    'id' => [
                        'question' => 'Metode pembayaran apa saja yang diterima?',
                        'answer' => 'Kami menerima semua kartu kredit utama, PayPal, transfer bank, dan bayar di tempat.',
                    ],
                    'tr' => [
                        'question' => 'Hangi ödeme yöntemleri kabul ediliyor?',
                        'answer' => 'Tüm büyük kredi kartlarını, PayPal, banka havalesi ve kapıda ödemeyi kabul ediyoruz.',
                    ],
                ],
            ],
            [
                'question' => 'Is Buying On-Line Safe?',
                'answer' => 'Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.',
                'category_id' => 2,
                'translations' => [
                    'ar' => [
                        'question' => 'هل الشراء عبر الإنترنت آمن؟',
                        'answer' => 'نعم، نحن نستخدم تشفير SSL ومعالجة دفع آمنة لحماية معلوماتك الشخصية والمالية.',
                    ],
                    'vi' => [
                        'question' => 'Mua hàng trực tuyến có an toàn không?',
                        'answer' => 'Có, chúng tôi sử dụng mã hóa SSL và xử lý thanh toán an toàn để bảo vệ thông tin cá nhân và tài chính của bạn.',
                    ],
                    'fr' => [
                        'question' => 'Est-ce que l\'achat en ligne est sûr ?',
                        'answer' => 'Oui, nous utilisons le cryptage SSL et un traitement de paiement sécurisé pour protéger vos informations personnelles et financières.',
                    ],
                    'id' => [
                        'question' => 'Apakah belanja online aman?',
                        'answer' => 'Ya, kami menggunakan enkripsi SSL dan pemrosesan pembayaran yang aman untuk melindungi informasi pribadi dan keuangan Anda.',
                    ],
                    'tr' => [
                        'question' => 'Online alışveriş güvenli mi?',
                        'answer' => 'Evet, kişisel ve finansal bilgilerinizi korumak için SSL şifreleme ve güvenli ödeme işleme kullanıyoruz.',
                    ],
                ],
            ],
            [
                'question' => 'How do I place an Order?',
                'answer' => 'Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level. Raw denim polaroid paleo farm-to-table, put a bird on it lo-fi tattooed Wes Anderson Pinterest letterpress. Fingerstache McSweeney\'s pour-over, letterpress Schlitz photo booth master cleanse bespoke hashtag chillwave gentrify.',
                'category_id' => 3,
                'translations' => [
                    'ar' => [
                        'question' => 'كيف أقوم بتقديم طلب؟',
                        'answer' => 'ببساطة تصفح منتجاتنا، أضف العناصر إلى سلة التسوق، وانتقل إلى صفحة الدفع لإكمال طلبك.',
                    ],
                    'vi' => [
                        'question' => 'Làm thế nào để đặt hàng?',
                        'answer' => 'Chỉ cần duyệt qua các sản phẩm, thêm vào giỏ hàng và tiến hành thanh toán để hoàn tất đơn hàng.',
                    ],
                    'fr' => [
                        'question' => 'Comment passer une commande ?',
                        'answer' => 'Parcourez simplement nos produits, ajoutez des articles à votre panier et passez à la caisse pour finaliser votre commande.',
                    ],
                    'id' => [
                        'question' => 'Bagaimana cara melakukan pemesanan?',
                        'answer' => 'Cukup telusuri produk kami, tambahkan item ke keranjang, dan lanjutkan ke checkout untuk menyelesaikan pesanan Anda.',
                    ],
                    'tr' => [
                        'question' => 'Nasıl sipariş verebilirim?',
                        'answer' => 'Ürünlerimize göz atın, sepetinize ekleyin ve siparişinizi tamamlamak için ödeme sayfasına geçin.',
                    ],
                ],
            ],
            [
                'question' => 'How Can I Cancel Or Change My Order?',
                'answer' => 'Plaid letterpress leggings craft beer meh ethical Pinterest. Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth.',
                'category_id' => 3,
                'translations' => [
                    'ar' => [
                        'question' => 'كيف يمكنني إلغاء أو تغيير طلبي؟',
                        'answer' => 'يمكنك إلغاء أو تعديل طلبك قبل شحنه عن طريق الاتصال بفريق خدمة العملاء لدينا.',
                    ],
                    'vi' => [
                        'question' => 'Làm thế nào để hủy hoặc thay đổi đơn hàng?',
                        'answer' => 'Bạn có thể hủy hoặc thay đổi đơn hàng trước khi giao bằng cách liên hệ đội ngũ hỗ trợ khách hàng.',
                    ],
                    'fr' => [
                        'question' => 'Comment annuler ou modifier ma commande ?',
                        'answer' => 'Vous pouvez annuler ou modifier votre commande avant son expédition en contactant notre service client.',
                    ],
                    'id' => [
                        'question' => 'Bagaimana cara membatalkan atau mengubah pesanan saya?',
                        'answer' => 'Anda dapat membatalkan atau mengubah pesanan sebelum dikirim dengan menghubungi tim layanan pelanggan kami.',
                    ],
                    'tr' => [
                        'question' => 'Siparişimi nasıl iptal edebilir veya değiştirebilirim?',
                        'answer' => 'Siparişiniz gönderilmeden önce müşteri hizmetleri ekibimizle iletişime geçerek iptal edebilir veya değiştirebilirsiniz.',
                    ],
                ],
            ],
            [
                'question' => 'Do I need an account to place an order?',
                'answer' => 'Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY. Cray ugh 3 wolf moon fap, fashion axe irony butcher cornhole typewriter chambray VHS banjo street art.',
                'category_id' => 3,
                'translations' => [
                    'ar' => [
                        'question' => 'هل أحتاج إلى حساب لتقديم طلب؟',
                        'answer' => 'لا، يمكنك الطلب كضيف. ومع ذلك، إنشاء حساب يتيح لك تتبع طلباتك وحفظ معلوماتك للمرات القادمة.',
                    ],
                    'vi' => [
                        'question' => 'Tôi có cần tài khoản để đặt hàng không?',
                        'answer' => 'Không, bạn có thể đặt hàng với tư cách khách. Tuy nhiên, tạo tài khoản giúp bạn theo dõi đơn hàng và lưu thông tin cho lần sau.',
                    ],
                    'fr' => [
                        'question' => 'Ai-je besoin d\'un compte pour passer une commande ?',
                        'answer' => 'Non, vous pouvez commander en tant qu\'invité. Cependant, créer un compte vous permet de suivre vos commandes et de sauvegarder vos informations.',
                    ],
                    'id' => [
                        'question' => 'Apakah saya perlu akun untuk melakukan pemesanan?',
                        'answer' => 'Tidak, Anda bisa memesan sebagai tamu. Namun, membuat akun memungkinkan Anda melacak pesanan dan menyimpan informasi untuk pemesanan berikutnya.',
                    ],
                    'tr' => [
                        'question' => 'Sipariş vermek için hesap oluşturmam gerekiyor mu?',
                        'answer' => 'Hayır, misafir olarak sipariş verebilirsiniz. Ancak hesap oluşturmak siparişlerinizi takip etmenizi ve bilgilerinizi kaydetmenizi sağlar.',
                    ],
                ],
            ],
            [
                'question' => 'How Do I Track My Order?',
                'answer' => 'Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb @Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level.',
                'category_id' => 3,
                'translations' => [
                    'ar' => [
                        'question' => 'كيف أتتبع طلبي؟',
                        'answer' => 'بمجرد شحن طلبك، ستتلقى بريدًا إلكترونيًا يحتوي على رقم التتبع. يمكنك أيضًا تتبع طلبك من حسابك.',
                    ],
                    'vi' => [
                        'question' => 'Làm thế nào để theo dõi đơn hàng?',
                        'answer' => 'Sau khi đơn hàng được gửi đi, bạn sẽ nhận được email có mã theo dõi. Bạn cũng có thể theo dõi đơn hàng từ tài khoản của mình.',
                    ],
                    'fr' => [
                        'question' => 'Comment suivre ma commande ?',
                        'answer' => 'Une fois votre commande expédiée, vous recevrez un e-mail avec un numéro de suivi. Vous pouvez également suivre votre commande depuis votre compte.',
                    ],
                    'id' => [
                        'question' => 'Bagaimana cara melacak pesanan saya?',
                        'answer' => 'Setelah pesanan Anda dikirim, Anda akan menerima email dengan nomor pelacakan. Anda juga dapat melacak pesanan dari akun Anda.',
                    ],
                    'tr' => [
                        'question' => 'Siparişimi nasıl takip ederim?',
                        'answer' => 'Siparişiniz gönderildikten sonra takip numarası içeren bir e-posta alacaksınız. Ayrıca hesabınızdan da takip edebilirsiniz.',
                    ],
                ],
            ],
            [
                'question' => 'How Can I Return a Product?',
                'answer' => 'Kale chips Truffaut Williamsburg, hashtag fixie Pinterest raw denim c hambray drinking vinegar Carles street art Bushwick gastropub. Wolf Tumblr paleo church-key. Plaid food truck Echo Park YOLO bitters hella, direct trade Thundercats leggings quinoa before they sold out. You probably haven\'t heard of them wayfarers authentic umami drinking vinegar Pinterest Cosby sweater, fingerstache fap High Life.',
                'category_id' => 3,
                'translations' => [
                    'ar' => [
                        'question' => 'كيف يمكنني إرجاع منتج؟',
                        'answer' => 'يمكنك إرجاع أي منتج خلال 30 يومًا من الشراء. يرجى التأكد من أن المنتج في حالته الأصلية مع جميع العلامات.',
                    ],
                    'vi' => [
                        'question' => 'Làm thế nào để trả lại sản phẩm?',
                        'answer' => 'Bạn có thể trả lại bất kỳ sản phẩm nào trong vòng 30 ngày kể từ ngày mua. Vui lòng đảm bảo sản phẩm còn nguyên trạng với đầy đủ nhãn mác.',
                    ],
                    'fr' => [
                        'question' => 'Comment retourner un produit ?',
                        'answer' => 'Vous pouvez retourner tout produit dans les 30 jours suivant l\'achat. Veuillez vous assurer que le produit est dans son état d\'origine avec toutes les étiquettes.',
                    ],
                    'id' => [
                        'question' => 'Bagaimana cara mengembalikan produk?',
                        'answer' => 'Anda dapat mengembalikan produk apa pun dalam waktu 30 hari sejak pembelian. Pastikan produk dalam kondisi asli dengan semua label.',
                    ],
                    'tr' => [
                        'question' => 'Bir ürünü nasıl iade edebilirim?',
                        'answer' => 'Satın alma tarihinden itibaren 30 gün içinde herhangi bir ürünü iade edebilirsiniz. Ürünün orijinal durumunda ve tüm etiketleriyle birlikte olduğundan emin olun.',
                    ],
                ],
            ],
        ];
    }
}
