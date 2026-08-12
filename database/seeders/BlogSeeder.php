<?php

namespace Database\Seeders;

use Botble\Base\Supports\BaseSeeder;
use Botble\Blog\Database\Traits\HasBlogSeeder;

class BlogSeeder extends BaseSeeder
{
    use HasBlogSeeder;

    public function run(): void
    {
        $this->uploadFiles('news');

        $this->truncateBlogTranslations();

        $categories = [
            [
                'name' => 'Ecommerce',
                'is_default' => true,
                'translations' => [
                    'ar' => ['name' => 'التجارة الإلكترونية'],
                    'vi' => ['name' => 'Thương mại điện tử'],
                    'fr' => ['name' => 'E-commerce'],
                    'id' => ['name' => 'E-commerce'],
                    'tr' => ['name' => 'E-ticaret'],
                ],
            ],
            [
                'name' => 'Fashion',
                'translations' => [
                    'ar' => ['name' => 'أزياء'],
                    'vi' => ['name' => 'Thời trang'],
                    'fr' => ['name' => 'Mode'],
                    'id' => ['name' => 'Fashion'],
                    'tr' => ['name' => 'Moda'],
                ],
            ],
            [
                'name' => 'Electronic',
                'translations' => [
                    'ar' => ['name' => 'إلكترونيات'],
                    'vi' => ['name' => 'Điện tử'],
                    'fr' => ['name' => 'Électronique'],
                    'id' => ['name' => 'Elektronik'],
                    'tr' => ['name' => 'Elektronik'],
                ],
            ],
            [
                'name' => 'Commercial',
                'translations' => [
                    'ar' => ['name' => 'تجاري'],
                    'vi' => ['name' => 'Thương mại'],
                    'fr' => ['name' => 'Commercial'],
                    'id' => ['name' => 'Komersial'],
                    'tr' => ['name' => 'Ticari'],
                ],
            ],
        ];

        $this->createBlogCategoriesWithTranslations($categories);

        $tags = [
            [
                'name' => 'General',
                'translations' => [
                    'ar' => ['name' => 'عام'],
                    'vi' => ['name' => 'Chung'],
                    'fr' => ['name' => 'Général'],
                    'id' => ['name' => 'Umum'],
                    'tr' => ['name' => 'Genel'],
                ],
            ],
            [
                'name' => 'Design',
                'translations' => [
                    'ar' => ['name' => 'تصميم'],
                    'vi' => ['name' => 'Thiết kế'],
                    'fr' => ['name' => 'Design'],
                    'id' => ['name' => 'Desain'],
                    'tr' => ['name' => 'Tasarım'],
                ],
            ],
            [
                'name' => 'Fashion',
                'translations' => [
                    'ar' => ['name' => 'أزياء'],
                    'vi' => ['name' => 'Thời trang'],
                    'fr' => ['name' => 'Mode'],
                    'id' => ['name' => 'Fashion'],
                    'tr' => ['name' => 'Moda'],
                ],
            ],
            [
                'name' => 'Branding',
                'translations' => [
                    'ar' => ['name' => 'العلامة التجارية'],
                    'vi' => ['name' => 'Thương hiệu'],
                    'fr' => ['name' => 'Image de marque'],
                    'id' => ['name' => 'Branding'],
                    'tr' => ['name' => 'Markalaşma'],
                ],
            ],
            [
                'name' => 'Modern',
                'translations' => [
                    'ar' => ['name' => 'حديث'],
                    'vi' => ['name' => 'Hiện đại'],
                    'fr' => ['name' => 'Moderne'],
                    'id' => ['name' => 'Modern'],
                    'tr' => ['name' => 'Modern'],
                ],
            ],
        ];

        $this->createBlogTagsWithTranslations($tags);

        $posts = [
            [
                'name' => '4 Expert Tips On How To Choose The Right Men\'s Wallet',
                'translations' => [
                    'ar' => ['name' => '4 نصائح خبراء لاختيار محفظة الرجال المناسبة'],
                    'vi' => ['name' => '4 mẹo chuyên gia để chọn ví nam phù hợp'],
                    'fr' => ['name' => '4 conseils d\'experts pour choisir le bon portefeuille pour homme'],
                    'id' => ['name' => '4 tips ahli untuk memilih dompet pria yang tepat'],
                    'tr' => ['name' => 'Doğru erkek cüzdanını seçmek için 4 uzman ipucu'],
                ],
            ],
            [
                'name' => 'Sexy Clutches: How to Buy & Wear a Designer Clutch Bag',
                'translations' => [
                    'ar' => ['name' => 'حقائب كلاتش أنيقة: كيفية شراء وارتداء حقيبة كلاتش مصممة'],
                    'vi' => ['name' => 'Clutch thời thượng: Cách mua và sử dụng túi clutch hàng hiệu'],
                    'fr' => ['name' => 'Pochettes élégantes : comment acheter et porter une pochette de créateur'],
                    'id' => ['name' => 'Clutch mewah: Cara membeli dan memakai tas clutch desainer'],
                    'tr' => ['name' => 'Şık el çantaları: Tasarımcı el çantası nasıl alınır ve kullanılır'],
                ],
            ],
            [
                'name' => 'The Top 2020 Handbag Trends to Know',
                'translations' => [
                    'ar' => ['name' => 'أهم صيحات حقائب اليد لعام 2020'],
                    'vi' => ['name' => 'Xu hướng túi xách hàng đầu năm 2020'],
                    'fr' => ['name' => 'Les tendances sacs à main 2020 à connaître'],
                    'id' => ['name' => 'Tren tas tangan teratas tahun 2020 yang perlu diketahui'],
                    'tr' => ['name' => '2020 yılının en önemli çanta trendleri'],
                ],
            ],
            [
                'name' => 'How to Match the Color of Your Handbag With an Outfit',
                'translations' => [
                    'ar' => ['name' => 'كيفية مطابقة لون حقيبة اليد مع الملابس'],
                    'vi' => ['name' => 'Cách phối màu túi xách với trang phục'],
                    'fr' => ['name' => 'Comment assortir la couleur de votre sac à main avec une tenue'],
                    'id' => ['name' => 'Cara mencocokkan warna tas tangan dengan pakaian'],
                    'tr' => ['name' => 'El çantanızın rengini kıyafetinizle nasıl uyumlu hale getirirsiniz'],
                ],
            ],
            [
                'name' => 'How to Care for Leather Bags',
                'translations' => [
                    'ar' => ['name' => 'كيفية العناية بالحقائب الجلدية'],
                    'vi' => ['name' => 'Cách chăm sóc túi da'],
                    'fr' => ['name' => 'Comment entretenir les sacs en cuir'],
                    'id' => ['name' => 'Cara merawat tas kulit'],
                    'tr' => ['name' => 'Deri çantalar nasıl bakılır'],
                ],
            ],
            [
                'name' => "We're Crushing Hard on Summer's 10 Biggest Bag Trends",
                'translations' => [
                    'ar' => ['name' => 'نحن مغرمون بأكبر 10 صيحات حقائب الصيف'],
                    'vi' => ['name' => '10 xu hướng túi xách lớn nhất mùa hè'],
                    'fr' => ['name' => 'Les 10 plus grandes tendances sacs de l\'été'],
                    'id' => ['name' => '10 tren tas terbesar musim panas'],
                    'tr' => ['name' => 'Yazın en büyük 10 çanta trendi'],
                ],
            ],
            [
                'name' => 'Essential Qualities of Highly Successful Music',
                'translations' => [
                    'ar' => ['name' => 'الصفات الأساسية للموسيقى الناجحة'],
                    'vi' => ['name' => 'Những phẩm chất cần thiết của âm nhạc thành công'],
                    'fr' => ['name' => 'Les qualités essentielles d\'une musique réussie'],
                    'id' => ['name' => 'Kualitas penting dari musik yang sangat sukses'],
                    'tr' => ['name' => 'Başarılı müziğin temel nitelikleri'],
                ],
            ],
            [
                'name' => '9 Things I Love About Shaving My Head',
                'translations' => [
                    'ar' => ['name' => '9 أشياء أحبها في حلاقة رأسي'],
                    'vi' => ['name' => '9 điều tôi thích khi cạo đầu'],
                    'fr' => ['name' => '9 choses que j\'aime dans le fait de me raser la tête'],
                    'id' => ['name' => '9 hal yang saya sukai dari mencukur kepala'],
                    'tr' => ['name' => 'Başımı kazıma konusunda sevdiğim 9 şey'],
                ],
            ],
            [
                'name' => 'Why Teamwork Really Makes The Dream Work',
                'translations' => [
                    'ar' => ['name' => 'لماذا العمل الجماعي يحقق الأحلام حقًا'],
                    'vi' => ['name' => 'Tại sao làm việc nhóm thực sự biến giấc mơ thành hiện thực'],
                    'fr' => ['name' => 'Pourquoi le travail d\'équipe fait vraiment fonctionner les rêves'],
                    'id' => ['name' => 'Mengapa kerja tim benar-benar mewujudkan impian'],
                    'tr' => ['name' => 'Takım çalışması neden gerçekten hayalleri gerçekleştirir'],
                ],
            ],
            [
                'name' => 'The World Caters to Average People',
                'translations' => [
                    'ar' => ['name' => 'العالم يلبي احتياجات الأشخاص العاديين'],
                    'vi' => ['name' => 'Thế giới phục vụ cho những người bình thường'],
                    'fr' => ['name' => 'Le monde est fait pour les gens ordinaires'],
                    'id' => ['name' => 'Dunia melayani orang-orang biasa'],
                    'tr' => ['name' => 'Dünya sıradan insanlara hitap ediyor'],
                ],
            ],
            [
                'name' => 'The litigants on the screen are not actors',
                'translations' => [
                    'ar' => ['name' => 'المتقاضون على الشاشة ليسوا ممثلين'],
                    'vi' => ['name' => 'Những người kiện tụng trên màn hình không phải diễn viên'],
                    'fr' => ['name' => 'Les plaignants à l\'écran ne sont pas des acteurs'],
                    'id' => ['name' => 'Para pihak berperkara di layar bukan aktor'],
                    'tr' => ['name' => 'Ekrandaki davacılar aktör değil'],
                ],
            ],
        ];

        $content = '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>

<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>

<p style="text-align:center"><img alt="f4" src="/storage/news/1.jpg" /></p>

<p><br />
&nbsp;</p>

<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>

<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>

<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>

<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>

<p style="text-align:center"><img alt="f5" src="/storage/news/2.jpg" /></p>

<p><br />
&nbsp;</p>
<hr />
<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>

<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>

<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>

<p style="text-align:center"><img alt="f1" src="/storage/news/3.jpg" /></p>

<p><br />
&nbsp;</p>

<hr />
<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>

<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>

<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>

<p style="text-align:center"><img alt="f6" height="375" src="/storage/news/4.jpg" /></p>

<p><br />
&nbsp;</p>

<hr />
<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>

<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>

<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>

<p style="text-align:center"><img alt="f2" height="400" src="/storage/news/5.jpg" /></p>

<p>&nbsp;</p>
';

        $description = 'You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.';

        foreach ($posts as $index => &$item) {
            $item['content'] = $content;
            $item['is_featured'] = $index < 10;
            $item['image'] = 'news/' . ($index + 1) . '.jpg';
            $item['description'] = $description;
        }

        $this->createBlogPostsWithTranslations($posts);
    }
}
