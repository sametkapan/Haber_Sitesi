-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 07 Oca 2025, 13:04:34
-- Sunucu sürümü: 10.4.32-MariaDB
-- PHP Sürümü: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `samet`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Tablo döküm verisi `admins`
--

INSERT INTO `admins` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin123');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Tablo döküm verisi `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Yapay Zeka'),
(2, 'Yazılım'),
(3, 'Mobil'),
(4, 'Donanım');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Tablo döküm verisi `news`
--

INSERT INTO `news` (`id`, `title`, `content`, `image`, `created_at`) VALUES
(4, 'Redmi, oyunculara özel tablet geliştiriyor: İşte özellikleri!', '<p>Xiaomi, alt markası Redmi ile oyunculara özel bir tablet üzerinde çalışıyor. İşte son gelen sızıntılar ve bilmeniz gerekenler...</p><p>Geçtiğimiz yıl Redmi, Çin pazarına özgü birkaç farklı tablet modeli sunmuştu. Redmi Pad Pro, Pad Pro 5G ve Redmi Pad SE 8.7 modelleri, markanın geniş ürün yelpazesinde eklenmişken bu yıl Redmi’nin yeni bir oyun odaklı tablet üzerinde çalıştığı ortaya çıktı. Sızıntı kaynağı Digital Chat Station’a göre, bu yeni model kompakt bir tasarıma ve etkileyici oyun özelliklerine sahip olacak.</p><h2>8.8 inç yüksek yenileme hızına sahip LCD ekran</h2><p>Yeni Redmi tabletin, 8.8 inç büyüklüğünde özel bir LCD ekranla geleceği bildiriliyor. Bu ekran, özelleştirilmiş bir yüksek yenileme hızını destekleyecek şekilde tasarlanmış. Bu da özellikle oyunseverler için akıcı bir görsel deneyim sunma hedefinde olduğunu gösteriyor.</p><p>Tablet, MediaTek’in <a href=\"http://mediatek.com/\">Dimensity 9400+</a> işlemcisiyle donatılacak. Bu işlemci, açık arabirim desteği sunarak daha agresif bir oyun performansı vadediyor. Aynı zamanda, bu yonga setinin özellikle uzun süreli oyun oturumlarında cihazın soğuk ve hızlı çalışmasını sağlayacağı belirtiliyor.</p><p>Sızıntılara göre, tablet ultra hafif ve ince bir metal gövdeye sahip olacak. Bu tasarım, uzun süreli kullanımlarda bile rahat bir deneyim sunmayı hedefliyor. Oyun odaklı bir cihaz olmasına rağmen şık ve taşınabilir bir forma sahip olması bekleniyor.</p><p>Redmi’nin bu yeni oyun odaklı tableti, Dimensity 9400+ işlemcisine sahip diğer cihazlarla birlikte 2025’in üçüncü çeyreğinde tanıtılacak. İlk etapta yalnızca Çin pazarına sunulması bekleniyor, ancak küresel pazara yönelik detaylar henüz netleşmiş değil.</p><p>Redmi’nin bu hamlesi, markanın oyun dünyasına yönelik güçlü bir giriş yapma amacını ortaya koyuyor gibi… Peki, siz bu yeni oyun odaklı tabletten neler bekliyorsunuz? Yorumlarınızı paylaşmayı unutmayın!<br>&nbsp;</p>', 'redmi-amiral-gemisi-tablet-ortaya-cikti-2.jpg', '2025-01-07 01:04:59'),
(5, 'iPhone’un bu özelliği sizden habersiz verilerinizi kullanıyor', '<p>iPhone ve Mac için sunulan Gelişmiş Görsel Arama nedir? Apple, ikonik yapıları analiz etmek için fotoğraflarınızı inceliyor.</p><p>Apple, Fotoğraflar uygulamasında kullanıcıların fotoğraflarındaki çeşitli yapıları ve ilgi çekici yerleri belirleyen yeni bir özelliği sessizce kullanıma sundu. Gelişmiş Görsel Arama olarak adlandırılan bu özellik, iOS 18.1 ve macOS 15.1 güncellemelerinde kullanıcılardan izin alınmadan etkinleştirildi.</p><h2>iPhone için Gelişmiş Görsel Arama nedir?</h2><p>Apple, Gelişmiş Görsel Arama özelliğinin nasıl çalıştığına dair çeşitli ayrıntılar sağladı. Şirketin paylaşımına göre Gelişmiş Görsel Arama, “simge yapılar veya ilgi noktalarını kullanarak” fotoğraf aramanızı sağlıyor.</p><p>iPhone veya Mac, simge yapıları belirlemek için fotoğrafların analizini yapıyor ve görüntü bölgesinin şifreli halini Apple’ın sunucularına gönderiyor. Çeşitli gizlilik teknikleri kullanan Apple, fotoğrafların içeriğine erişmeden şifreli verileri küresel simge yapılarıyla eşleştiriyor.</p><p>Apple, bu sürecin şirketin kullanıcıların fotoğraflarındaki bilgiler hakkında bilgi edinmesini engellediğini söyledi. Ancak özelliğin kullanıcılardan kabul onayı alınmadan uygulanması soru işaretleri yarattı. Buna göre şifreleme önlemleri olsa bile, Apple’ın kişisel fotoğrafları analiz etmesi tartışma konusu haline geldi.</p><p>Şirket ayrıca hem cihazlardaki hem de sunuculardaki hesaplama yükünü en aza indirmek için tasarlandığını iddia ettiği teknolojiyi detaylandıran bir makale yayınladı. Ancak uzmanlar, Apple’ın kullanıcı onayı ve şeffaflık konusundaki temel sorunu ele almadığını savunuyor.</p><p>iOS 18.1 güncellemesiyle birlikte Kontrol Merkezi’nde yapılan değişiklikler, Mac ve iPhone arasında yansıtma desteği, arama kaydetme ve arama özeti oluşturma gibi yenilikler de yer almıştı.</p><p><br><br>&nbsp;</p>', 'ios-18-2-apple-intelligence-yapay-zeka-iphone-asiri-isinma-3.jpg', '2025-01-07 01:06:32'),
(6, 'En iyi 5 ücretsiz fotoğraf düzenleme uygulaması', '<p>Telefonunuzda profesyonel kalitede fotoğraflar oluşturmanızı sağlayacak en iyi 5 ücretsiz fotoğraf düzenleme uygulaması listesi oluşturduk.</p><p>Telefonunuzdaki fotoğraflarınızı düzenlemek için kapsamlı ve ücretsiz bir fotoğraf düzenleme uygulaması arıyorsanız, doğru yerdesiniz. İster, bir Instagram hikayesi paylaşmak için ister arkadaşlarınıza göndermek için olsun, doğru uygulamalar sayesinde hiçbir ücret ödemeden dakikalar içinde etkileyici görseller oluşturabilirsiniz. Şimdi gelin, sizin için seçtiğimiz en iyi 5 ücretsiz fotoğraf düzenleme uygulamasına bir göz atalım.</p><h2>En iyi 5 ücretsiz fotoğraf düzenleme uygulaması</h2><p>Ücretsiz otoğraf düzenleme uygulaması seçerken kullanıcı dostu bir arayüze, güçlü araçlara ve eğlenceli özelliklere sahip olmasına dikkat etmek gerekir. Hangi uygulama sizin için uygun, gelin birlikte keşfedelim.</p><h3>Adobe Lightroom Mobile</h3><p>Adobe Lightroom, özellikle profesyonel düzeyde düzenleme yapmak isteyenlerin gözdesi. Ama sakın gözünüz korkmasın, çünkü bu uygulama başlangıç seviyesindeki kullanıcılar için de oldukça kolay.</p><ul><li><strong>Hazır ayarlar (preset):</strong> Tek bir dokunuşla fotoğraflarınıza sinematik ya da vintage bir görünüm kazandırabilirsiniz.</li><li><strong>Detaylı düzenleme araçları:</strong> Renk, ışık, kontrast gibi özelliklerde ince ayarlar yapabilirsiniz.</li><li><strong>RAW formatı desteği:</strong> Eğer DSLR ya da aynasız bir kamerayla çekim yapıyorsanız, fotoğraflarınızı düzenlemek için Lightroom birebir.</li></ul><p>Lightroom, basit düzenlemelerden profesyonel rötuşlara kadar her seviyede kullanıcıya hitap eden bir edit yelpazesine sahip. Hem Android hem de iOS için ücretsiz bir sürümü mevcut olan uygulamada, bazı özelliklerin kilidini açmak için ücretli premium abonelik satın almanız gerekiyor.</p><h3>Snapseed</h3><p>Google’ın geliştirdiği Snapseed, basit bir edit deneyiminden daha fazlasını sunan bir ücretsiz fotoğraf düzenleme uygulaması. Snapseed, hem amatör hem de profesyonel kullanıcılar için oldukça güçlü. Üstelik tamamen ücretsiz ve herhangi bir premium abonelik gerektirmiyor. Kolay bir arayüzle yaratıcı işler yapmak istiyorsanız, bu uygulama tam size göre olabilir.</p><ul><li><strong>29 farklı araç ve filtre:</strong> Keskinleştirme, parlaklık ayarlama, çift pozlama gibi özelliklerle fotoğraflarınıza bambaşka bir hava katabilirsiniz.</li><li><strong>Seçici ayarlamalar:</strong> Fotoğrafın sadece belirli bir kısmını düzenlemek mi istiyorsunuz? Snapseed bunu yapmanıza izin veren nadir uygulamalardan.</li><li><strong>Fırça özelliği:</strong> Hassas düzenlemeler için çok uygun.</li></ul><h3>InShot</h3><p>Eğer hem fotoğraflarınızı hem de videolarınızı düzenlemek istiyorsanız, InShot mükemmel bir seçenek. Bu ücretsiz fotoğraf düzenleme uygulaması, özellikle Instagram hikayeleri ve reels gibi sosyal medya paylaşımları için tasarlanan özellikleriyle dikkat çekiyor. Kullanımı da oldukça kolay ve eğlenceli.</p><ul><li><strong>Kolaj oluşturma: </strong>Birden fazla fotoğrafı bir araya getirip eğlenceli kolajlar yapabilirsiniz.</li><li><strong>Metin ve çıkartmalar: </strong>Fotoğraflarınıza yazı ekleyebilir ya da yaratıcı çıkartmalarla kişiselleştirebilirsiniz.</li><li><strong>Video düzenleme: </strong>Videolarınıza kesme, hızlandırma ve filtre ekleme gibi işlemleri kolayca yapabilirsiniz.</li></ul><h3>PicsArt</h3><p>Belki akıllı telefonların tarihinin başından beri aramızda olan fotoğraf düzenleme uygulaması PicsArt, popülerliğini yıllardır korumayı başaran çok yönlü bir uygulama. Özellikle eğlenceli efektleri ve yaratıcı araçlarıyla öne çıkıyor. Bu nedenle, fotoğraf düzenlemenin yanı sıra tasarım yapmayı sevenler için de ideal bir seçenek.</p><ul><li><strong>Eğlenceli efektler:</strong> Sanatsal filtrelerden modern dokulara kadar pek çok farklı efekt sunuyor.</li><li><strong>Kolaj oluşturma:</strong> Sadece birkaç dakika içinde profesyonel görünümlü kolajlar yapabilirsiniz.</li><li><strong>Çizim araçları:</strong> Fotoğraflarınızın üzerine çizim yaparak tamamen benzersiz işler çıkarabilirsiniz.</li><li>Topluluk paylaşımı: PicsArt’ın bir bakıma Pinterest’e benzediğini de söyleyebiliriz. Diğer kullanıcıların çalışmalarını keşfedip, onlardan ilham alabiliyorsunuz.</li></ul><h3>FaceApp</h3><p>FaceApp, listemizdeki diğer 4 ücretsiz fotoğraf düzenleme uygulaması gibi değil, aslında biraz daha eğlenceli bir deneyimle öne çıkıyor. Yapay zeka destekli filtreleriyle dünya çapında bir ün sahibi. Eğlenceli dönüşümler yapmak ya da portre fotoğraflarınızı geliştirmek istiyorsanız, FaceApp’ı mutlaka denemelisiniz. Uygulama ile yüzünüzü baştan yönetebilir, farklı bir cinsiyette doğsaydınız nasıl görüneceğinize bakabilir ya da saçını uzattığınızda nasıl görüneceğini test edebilirsiniz.</p><ul><li><strong>Portre geliştirme:</strong> Cilt düzeltme, ışık düzenleme gibi özelliklerle portre fotoğraflarınızı daha çarpıcı hale getirebilirsiniz.</li><li><strong>Yaşlandırma ve gençleştirme:</strong> Fotoğraflarınızda yılları geri alabilir ya da ileri sarabilirsiniz.</li><li><strong>Saç ve sakal gibi detayları ayarlama: </strong>Fotoğraflarınızı düzenlerken, saçınızı uzatma, kaşınızı inceltme gibi fiziksel özelliklerinizle ilgili birçok detayı ayarlayabilirsiniz.<br><br>Her ne kadar özellikleriyle milyonlarca kişinin gönlünü fethetse de, FaceApp’i sorunlu olarak görenler de az değil. Uygulamalar, bazı kullanıcılar tarafından gizlilik politikaları nedeniyle eleştiriliyor. Dolayısıyla, uygulamayı kullanmadan önce vereceğiniz izinlere dikkat etmenizi öneririz. Peki sizin kullandığınız fotoğraf düzenleme uygulamaları hangileri?<br><br><br>&nbsp;</li></ul>', 'en-iyi-5-ucretsiz-fotograf-duzenleme-uygulamasi.jpeg', '2025-01-07 01:10:19'),
(7, 'Kullanıcılar tepkili: Apple, yapay zekayı eline yüzüne bulaştırdı!', '<p>Apple, birçok yeni yapay zeka özelliğini kullanıcılara sundu. Ancak bu güncellemenin iPhone cihazlarda aşırı ısınmaya yol açtığı bildirildi.<br>Son yıllarda yapay zeka alanındaki büyük atılımlarla birlikte Apple da bu alandaki yerini güçlendirdi. Apple Intelligence çatısı altında sunduğu yenilikçi özelliklerle kullanıcı deneyimini bir adım öteye taşıyarak hayatı kolaylaştırmayı hedefledi. Bu hedef kapsamında şirket, iOS 18.2 ile birlikte birçok yeni yapay zeka özelliğini kullanıcılara sundu. Ancak gelen bilgilere göre bu güncelleme, iPhone için aşırı ısınmaya yol açıyor.</p><h2>iOS 18.2 ile gelen yapay zeka özellikleri, iPhone için aşırı ısınmaya yol açıyor</h2><p>iOS 18.2 güncellemesiyle birlikte Image Playground, Genmoji ve baştan sona yenilenen Mail uygulaması gibi dikkat çekici özellikler kullanıcılara sunuldu. Ancak gelen kullanıcı geri bildirimlerine göre bu yenilikler bazı sorunları da beraberinde getirdi.<br>Güncelleme sonrası kullanıcılar, cihazlarının aşırı ısınmasından şikayet etmeye başladı. Bu durumun özellikle Image Playground, Fotoğraflar ve FaceTime uygulamaları kullanılırken ortaya çıktığı ifade ediliyor. Tabii ısınmayla birlikte cihazın şarjının da hızlı bittiği söyleniyor.</p><p>Aslında benzer şikayetler beta sürümü sırasında da dile getirilmişti. Ancak Apple’ın bu sorunları çözmeden güncellemeyi genel kullanıma sunduğu anlaşılıyor.<br>iOS 18.2 sonrası herhangi bir sorunla karşılaşmadığını belirten kullanıcılar da bulunuyor. Ancak problem yaşayan kullanıcı sayısı da oldukça fazla. Bu nedenle Apple’ın önümüzdeki ay içinde yeni bir güncelleme yayınlaması bekleniyor.</p><p>Peki siz bu konu hakkında neler düşünüyorsunuz? iPhone’unuzda aşırı ısınma yaşıyor musunuz? Görüşlerinizi aşağıdaki Yorumlar kısmından bizimle paylaşabilirsiniz.</p>', 'ios-18-2-apple-intelligence-yapay-zeka-iphone-asiri-isinma-kapak-1068x601.jpg', '2025-01-07 01:12:21'),
(8, ' WhatsApp Web için klavye kısayolları', '<p>WhatsApp\'ta yapacağınız herhangi bir işlevi çok daha hızlı bir şekilde gerçekleştirmenize yardım edecek kısayolları derledik.<br>Dünya genelinde 40 milyona yakın kullanıcı sayısına sahip <strong>WhatsApp</strong> platformu hem mobil hem de Web arayüzüyle hizmet veriyor. Uygulamanın masaüstü versiyonu daha çok çalışırken ya da başka bir görevi yerine getirirken kullanıcıların imdadına yetişiyor. Bilgisayardan WhatsApp’a girmek isteyen kişiler bu sayede telefonu kaldırmadan aile, arkadaş ve sevdikleriyle iletişim halinde kalabiliyor.</p><p>WhatsApp platformu mobil kullanıcılar için çok fazla <strong>kısayol seçeneği</strong> barındırmıyor. Fakat masaüstü kullanıcıları Web arayüzünü oldukça işlevsel kısayollar ile kullanabiliyor. Zamandan tasarruf edip platformu çok daha hızlı ve verimli kullanabileceğiniz o klavye kombinasyonlarını sizler için bir araya getirdik.</p><h2>WhatsApp Web için hayatınızı kolaylaştıracak klavye kısayolları</h2><p>WhatsApp’ta yapacağınız herhangi bir işlevi çok daha hızlı bir şekilde gerçekleştirmenize yardım edecek kısayolları derledik. Aşağıdaki listede yer alan tüm kısayollar hem PC hem de Mac cihazlarında rahatlıkla çalışıyor. Fakat iki işletim sistemi arasındaki tek fark, PC’de CTRL tuşuna basarken; Mac’de ise CMD tuşuna basmanız olacak.<br><strong>– Bir mesajı okunmamış olarak işaretleyin:</strong>&nbsp;Ctrl + Shift + U<br><strong>– Arama:</strong>&nbsp;&nbsp;Ctrl + F<br><strong>– Yeni bir sohbet oluşturun:</strong>&nbsp;Yeni sohbet: Ctrl + N<br><strong>– Bir sohbeti arşivleyin:</strong>&nbsp;Ctrl + E<br><strong>– Bir sohbeti sabitleyin:</strong>&nbsp;Ctrl + Shift + P<br><strong>– Sohbette ara:</strong>&nbsp;&nbsp;Ctrl + Shift + F<br><strong>– Sohbeti sil:</strong>&nbsp;&nbsp;Ctrl + Shift + D<br><strong>– Yeni bir grup oluşturun:</strong>&nbsp;&nbsp;Ctrl + Shift + N<br><strong>– Yapılandırma menüsüne erişin:</strong>&nbsp;&nbsp;Ctrl +.&nbsp;(nokta)<br><strong>– Sessiz:</strong>&nbsp;&nbsp;Ctrl + Shift + M<br><strong>– Profil bilgilerine erişim:</strong>&nbsp;&nbsp;Ctrl.&nbsp;+ P</p><p>Hayatınızı kolaylaştıracak WhatsApp Web kısayolları bunlar. Artık daha pratik bir WhatsApp deneyimine ulaşmanız için önünüzde hiçbir engel kalmadı!</p>', 'whatsapp-web-klavye-kisayollari.jpg', '2025-01-07 01:14:52'),
(9, 'Yeni AMD RX 9070 XT GPU tanıtımdan önce ortaya çıktı!', '<p>AMD Radeon RX 9070 XT grafik kartı, yeni nesil RDNA 4 mimarisi ve benzersiz tasarımıyla ortaya çıktı. İşte detayları...</p><p>AMD’nin CES 2025’te tanıtmayı planladığı AMD Radeon RX 9070 XT grafik kartı, PowerColor tarafından paylaşılan görüntülerle gün yüzüne çıktı. Yeni nesil RDNA 4 mimarisi ile gelecek olan kart, enteresan tasarımı ve teknik yenilikleriyle grafik işlemciler arasında epey konuşulacak. Peki hangi özelliklere sahip? Ayrıntılar haberimizde…</p><h2>AMD RX 9070 XT tasarımı CES 2025 öncesi gün yüzüne çıktı</h2><p>PowerColor’ın paylaştığı teaser görüntülere bakacak olursak, RX 9070 XT’nin benzersiz bir metal kaplama tasarımı ve üçlü fanlı soğutma sistemine sahip olduğunu söyleyebiliriz. Ayrıca, cihazın arka plakasında yer alan ve hava akışını optimize etmeyi amaçlayan bir pencere de dikkat çekiyor.</p><p><br>Ki bu tasarım, NVIDIA’nın Founders Edition kartlarına benzer bir hava akışı sağlayabilir. Ancak PowerColor’un mevcut Red Devil RX 7900 XTX Limited Edition tasarımıyla bazı benzerlikler de gösteriyor. Soğutma sistemindeki ısı dağıtıcı yapraklarının düzeni, tam anlamıyla bir hava akışı tasarımı olmadığını işaret etse de, bu kartın performansını artırmak için önemli yenilikler içerdiğini düşünüyoruz.</p><p>Bunlarla birlikte, AMD’nin yeni RDNA 4 mimarisi, önceki nesillere kıyasla daha yüksek performans ve enerji verimliliği sunacak. RX 9070 XT modelinin, bu mimarinin sunduğu yenilikleri en iyi şekilde temsil edecek bir model olduğu söyleniyor. Kartın teknik detayları ve tam performans değerleri CES 2025’te resmi olarak açıklanacak.</p><p><br>&nbsp;</p>', 'yeni-amd-rx-9070-xt-gpu-tanitimdan-once-ortaya-cikti-1920x1080.jpg', '2025-01-07 01:16:13'),
(10, 'Snapdragon 8 Elite Gen 2, Apple M4’ü tahtından edebilir!', '<p>Qualcomm\'un yeni nesil Snapdragon 8 Elite Gen 2 işlemcisi Apple\'ın M4 işlemcisini geride bırakacak performansa sahip olabilir.<br>Güvenilir kaynaklardan gelen bilgilere göre, Qualcomm’un yeni nesil Snapdragon 8 Elite Gen 2 işlemcisi, Apple’ın M4 SoC yongasına karşı performans yarışında önemli bir avantaj elde edebilir. Özellikle Armv9-A mimarisi ve SME (Scalable Matrix Extension) desteği sayesinde, yeni işlemcinin tek çekirdek performansında Apple’ın masaüstü sınıfı işlemcisini geride bırakacağı söyleniyor. Peki bu nasıl mümkün olacak? Ayrıntılar haberimizde…</p><h2>Snapdragon 8 Elite Gen 2, Apple M4 işlemcisini geride bırakabilir</h2><p>Aslında Apple, uzun süredir mobil işlemci performansında lider konumda olsa da, Qualcomm ve MediaTek’in son yıllardaki atılımları bu durumu iyice zorlamaya başladı. 8 Elite Gen 2 ve MediaTek Dimensity 9500, TSMC’nin N3P üretim süreci ile üretilecek ve daha yüksek saat hızlarına ulaşabilecek. Bu sayede de, işlemcilerin Geekbench 6 tek çekirdek testlerinde 4000 puan barajına yaklaşmasını sağlayabilir.<br>SME desteği, bu işlemcilerin yapay zeka ve yoğun hesaplama gerektiren görevlerde büyük bir sıçrama yapacağını gösteriyor. Bununla birlikte Snapdragon 8 Elite Gen 2’nin, Samsung’un 2nm SF2 ve TSMC’nin 3nm N3P düğümlerinin bir karışımını kullanarak daha verimli bir performans sunacağı konuşuluyor.</p><p>Tabi bu arada, Apple’ın boş durmayacağı ve Snapdragon 8 Elite Gen 2 piyasaya sürüldüğünde, M4’ün halefi olan <strong>M5</strong> SoC’nin yeni bir iPad Pro ile tanıtılacağı söyleniyor. Ancak yine de Qualcomm ve MediaTek’in mevcut çok çekirdekli performans üstünlüğü, Apple’ın A19 SoC ile mobil cihazlar segmentinde daha fazla baskı altında kalmasına neden olabilir.</p><p>Kısacası Snapdragon 8 Elite Gen 2, akıllı telefon işlemci pazarında rekabeti bir hayli kızıştıracak. Apple, yeni nesil işlemcileriyle bu yarışta üstünlük sağlamak için yeniliklerini hızlandırmak zorunda kalabilir. Bu konuda siz ne düşünüyorsunuz?</p>', 'snapdragon-8-elite-gen-2-apple-m4-tahtindan-edebilir-1920x1080.jpg', '2025-01-07 01:17:49'),
(11, 'Windows 11’in 2024 karnesi belli oldu! Hala birinci değil', '<p>Windows 11 pazar payı bir kez daha düştü. Buna göre birkaç ay önce yakaladığı ivmeyi sürdürmekte zorlanıyor.</p><p>Windows 11 piyasa payında bir kez daha düşüş yaşadı. Bu kapsamda işletim sistemi birkaç ay önce yakaladığı ivmeyi sürdürmekte zorlanıyor. Statcounter’ın son verilerine göre, Windows 11’in pazar payı 2024’ün son iki ayında yüzde 1,5’tan fazla azaldı.</p><h2>Windows 11 pazar payı Aralık’ta düştü</h2><p>Windows 11 pazar payı Aralık ayında yüzde 34,94’ten yüzde 34,1’e gerileyerek yüzde 0,84’lük bir düşüş gösterdi. Son düşüş, Windows 11’in Ekim ayında artışın ardından tüm zamanların en yüksek pazar payına, yüzde 35,5’in üzerine çıkmasının ardından geldi.</p><p>Windows 10 ise resmi desteğin bitmesine 11 aydan az bir süre kalmasına rağmen, kaybettiği kullanıcıların bir kısmını geri kazanmayı başardı. Statcounter verileri, Windows 10’un şu anda yüzde 62,73’lük pazar payına sahip olduğunu ve bu oranın yüzde 0,9 arttığını gösteriyor.</p><p>Windows 11’in mücadelesinin ardındaki nedenler aslında çok yönlü. Birçok kullanıcı, donanım gereksinimleri nedeniyle yeni işletim sistemine yükseltme yapamıyor. Microsoft bu gereksinimler konusunda herhangi bir taviz vermedi ve bu da birçok kullanıcının eski Windows’larda kalmasına yol açtı.</p><ol><li>Windows 10: Yüzde 62,73 (+0,9 puan)</li><li>Windows 11: Yüzde 34,1 (-0,84 puan)</li><li>Windows 7: Yüzde 2,4 (-0,07 puan)</li><li>Windows 8.1: Yüzde 0,29 (-0,02 puan)</li><li>Windows XP: Yüzde 0,23 (-0,02 puan)</li></ol><p>Resmi olarak yeni işletim sistemine geçiş yapamayanlar için alternatif çözümler mevcut. Microsoft, 30 dolar karşılığında 12 aylık güncelleme sağlayan Genişletilmiş Güvenlik Programı sunarken, 0patch gibi üçüncü taraf araçlar 5 yıla kadar ekstra destek veriyor.</p><p>&nbsp;</p>', 'windows-11-hotpatch-belgesi-pc-4-e1724499177819.jpg', '2025-01-07 01:41:25'),
(12, 'Nvidia, çekilişle ekran kartı dağıtıyor! Hem de CEO imzalı', '<p>Nvidia, klasik GeForce ekran kartı serisi için çekiliş düzenleyeceğini duyurdu. İşte detaylar.</p><p>Nvidia, CES 2025 etkinliği öncesinde kullanıcılarına özel bir hediye sunuyor. Nvidia Kurucusu ve CEO’su Jensen Huang tarafından imzalanmış beş klasik GeForce ekran kartı çekilişle hediye edilecek. Teknoloji devi, sosyal medya kampanyasıyla koleksiyon parçalarını dağıtacak.</p><h2>Klasik GeForce ekran kartları hediye edilecek</h2><p>Hediye edilecek ilk iki ekran kartı, ikonik GeForce 256 ve GeForce 8800 Ultra olacak. Her iki ekran kartı da siyah kutular içinde sergileniyor ve Huang’ın altın renkli imzası kutunun sağ alt köşesinde yer alıyor.</p><p>https://twitter.com/NVIDIAGeForce/status/1874485747605999805?mx=2</p><p>1999’da piyasaya sürülen GeForce 256, Nvidia’nın ilk GeForce ekran kartıydı ve “GPU” adını taşıyan ilk ekran kartı olma özelliğini de taşıyordu. 23 milyon transistörle, ekran kartlarında büyük bir değişime yol açtı. GeForce 256; 3D işleme görevlerini CPU’dan devralan Transform ve Lighting Engine gibi özellikler sundu.</p><p>2007’de piyasaya sürülen GeForce 8800 Ultra ise Nvidia’nın G80 Tesla mimarisine dayanan ilk modeliydi. Ayrıca GPU bilgi işlem teknolojisi olan CUDA’yı destekleyen ilk ekran kartıydı. CUDA, GPU’ların grafik hızlandırmadaki rollerinin çok ötesinde, paralel işlem birimleri olarak kullanılmasının sağladı.</p><p>Huang açıklamasında, “Bu iki ekran kartı, Nvidia tarihindeki önemli anları temsil ediyor. GeForce 256 modern GPU çağını başlatırken, 8800 Ultra, CUDA ve genel amaçlı GPU bilgi işlem çağını başlattı” ifadelerini kullandı.</p><p>Çekilişe katılmak isteyen kullanıcılar, iki klasik ekran kartını içeren “GeForceGreats” sosyal medya gönderilerine yorum yapmaları yeterli.</p><p>&nbsp;</p>', 'nvidia-geforce-rtx-5080-satis-sunulacagi-tarih-1-1920x1080.jpg', '2025-01-07 01:42:48'),
(13, 'Android 15 güncellemesi bazı kullanıcıların başına dert oldu!', '<p>Motorola\'nın Edge 50 Pro için yayınladığı Android 15 güncellemesi çok sayıda soruna yol açtı. İşte ayrıntılar!</p><p><br><strong>Akıllı telefon</strong> üreticileri uyumlu modelleri için kararlı Android 15 güncellemesini yayınlamaya devam ediyor. Ancak, görünen o ki bazı kullanıcılar yamayı yükledikten sonra cihazlarında ciddi sorunlarla karşılaşmaya başladı. İşte ayrıntılar!</p><h2>Android 15 güncellemesi Motorola Edge 50 Pro sahiplerini canından bezdirdi</h2><p>Motorola, kısa süre önce Edge 50 Pro için kararlı Android 15 güncellemesini yayınladı. V1UM35H.10-38-1 yapı numarasıyla ve 1.77 GB boyutunda gelen yeni yama kullanıcı deneyimini iyileştiren çeşitli özellikler sunsa da eleştirilerin odağı oldu.</p><p>Birçok kullanıcı, <strong>güncellemeyi</strong> <strong>yükledikten</strong> <strong>sonra</strong> cihazlarında <strong>çeşitli</strong> <strong>sorunların</strong> meydana geldiğini bildirmeye başladı. Şikayetlerin arasında rastgele donmalar, siyah ekran hataları, artan pil tüketimi ve uygulama çökmeleri gibi kritik sorunlar yer alıyor. Bunun dışında, Private Space gibi bazı özelliklerin de beklendiği gibi çalışmadığı belirtiliyor.</p><p>Sadece bunlarla sınırlı değil. Kamera butonunun belirli aralıklarla çalışmaması ve geri tuşunun görevini yerine getirememesi gibi kullanıcı deneyimine zarar veren çok sayıda sorunların olduğu bildiriliyor. Şu an için <strong>Motorola’dan</strong> konuyla ilgili bir açıklama gelmese de, güvenilir <strong>kaynaklar</strong> çok yakında bu gibi problemlerin ortadan kaldırılacağı konusunda umutlu.</p><figure class=\"table\"><table><thead><tr><th>Özellikler</th><th>Değerler</th></tr></thead><tbody><tr><td><strong>İşlemci</strong></td><td>Snapdragon 7 Gen 3</td></tr><tr><td><strong>RAM</strong></td><td>8GB / 12GB</td></tr><tr><td><strong>Ekran</strong></td><td>6.7 inç 1.5K kavisli OLED ekran (144Hz yenileme hızı, 2,000 nit maksimum parlaklık)</td></tr><tr><td><strong>Pil Kapasitesi</strong></td><td>4,500mAh, 125W kablolu şarj veya 50W kablosuz şarj</td></tr><tr><td><strong>Depolama</strong></td><td>256GB</td></tr><tr><td><strong>Gövde Malzemesi</strong></td><td>Metal çerçeve, vegan deri arka kaplama</td></tr><tr><td><strong>Su ve Toz Dayanıklılığı</strong></td><td>IP68</td></tr><tr><td><strong>Arka Kameralar</strong></td><td>50 Megapiksel f/1.4 ana kamera, 10 Megapiksel 3x telefoto lens, 13 Megapiksel ultra geniş açılı kamera</td></tr><tr><td><strong>Ön Kamera</strong></td><td>50 Megapiksel f/1.9 selfie kamerası, otofokus</td></tr><tr><td><strong>Yazılım</strong></td><td>Android 14</td></tr></tbody></table></figure>', 'one-ui-7-0-android-15-beta-bu-ulkelerde-yayinlanacak-1.jpg', '2025-01-07 02:33:12'),
(15, 'AMD Ryzen AI Max ve Max PRO serisi işlemciler tanıtıldı!', '<p>AMD, CES 2025\'te yapay zeka hızlandırıcıları ve performansıyla dikkat çeken yeni Ryzen AI Max ve Max PRO işlemci serilerini tanıttı.</p><p>Bugün ABD’de Las Vegas’ta düzenlenen CES 2025 etkinliğinde teknoloji dünyasının merakla beklediği birçok yenilik tanıtıldı. AMD de bu etkinlikte yapay zeka odaklı yeni işlemci serisi olan Ryzen AI Max ve Ryzen AI Max PRO serilerini duyurarak dikkatleri üzerine çekti. Yapay zeka hızlandırıcıları ve güçlü grafik performansıyla öne çıkan bu işlemciler hem bireysel kullanıcılar hem de profesyonel kullanıcılar için yeni bir standart belirlemiş durumda.</p><h2>AMD Ryzen AI Max ve Max PRO serisi işlemciler neler sunuyor?</h2><p>Ryzen AI Max serisi, üstün çekirdek ve iş parçacığı sayısıyla dikkat çekerken aynı zamanda yüksek önbellek kapasitesi ve güçlü grafik birimleriyle öne çıkıyor. Seride yer alan AMD Ryzen AI Max+ 395 modeli, 16 çekirdek ve 32 iş parçacığı ile geliyor.</p><p>5.1 GHz’e kadar ulaşan boost frekansı, 80MB önbellek ve AMD Radeon 8060S grafik birimiyle, grafik yoğun uygulamalarda yüksek performans vadediyor. Aynı seride yer alan AMD Ryzen AI Max 390 modeli, 12 çekirdek ve 24 iş parçacığı sunuyor.</p><p>5.0 GHz’e kadar boost frekansı ve 76MB önbelleğe sahip olan bu model, AMD Radeon 8050S grafik birimiyle grafik işlemlerinde iddialı. Ryzen AI Max 385 ise 8 çekirdek ve 16 iş parçacığıyla daha uygun fiyatlı bir seçenek olarak öne çıkıyor ve 40MB önbelleğiyle güçlü bir performans sunuyor.</p><p><strong>AMD Ryzen AI Max serisi:</strong></p><figure class=\"table\"><table><thead><tr><th>Model</th><th>Çekirdek / İş Parçacığı</th><th>Boost / Temel Frekans</th><th>Toplam Önbellek</th><th>Grafik Modeli</th><th>Grafik CU Sayısı</th><th>Grafik Frekansı</th><th>cTDP</th><th>NPU TOPS</th><th>Ryzen AI</th></tr></thead></table></figure><figure class=\"table\"><table><tbody><tr><td>AMD Ryzen AI Max+ 395</td><td>16 / 32</td><td>5.1 GHz’e kadar / 3.0 GHz</td><td>80MB</td><td>AMD Radeon 8060S</td><td>40</td><td>2900 MHz</td><td>45 – 120W</td><td>50</td><td>Evet</td></tr></tbody></table></figure><figure class=\"table\"><table><tbody><tr><td>AMD Ryzen AI Max 390</td><td>12 / 24</td><td>5.0 GHz’e kadar / 3.2 GHz</td><td>76MB</td><td>AMD Radeon 8050S</td><td>32</td><td>2800 MHz</td><td>45 – 120W</td><td>50</td><td>Evet</td></tr></tbody></table></figure><figure class=\"table\"><table><tbody><tr><td>AMD Ryzen AI Max 385</td><td>8 / 16</td><td>5.0 GHz’e kadar / 3.6 GHz</td><td>40MB</td><td>AMD Radeon 8050S</td><td>32</td><td>2800 MHz</td><td>45 – 120W</td><td>50</td><td>Evet</td></tr></tbody></table></figure><p>Ryzen AI Max PRO serisi, profesyonel kullanıcılar için geliştirilmiş özellikleriyle tanıtıldı. Bu seride yer alan AMD Ryzen AI Max+ PRO 395 modeli, 16 çekirdek ve 32 iş parçacığına sahip. 5.1 GHz’e kadar ulaşabilen boost frekansı ve 80MB önbelleğiyle güçlü bir performans sunan bu model, AMD Radeon 8060S grafik birimiyle grafik yoğun işlemler için tasarlandı.</p><p>Serinin diğer modelleri arasında yer alan AMD Ryzen AI Max PRO 390, 12 çekirdek ve 24 iş parçacığı sunuyor. 76MB önbelleği ve AMD Radeon 8050S grafik birimi ile iş istasyonları için ideal bir seçenek. Daha düşük bir seviyede konumlanan AMD Ryzen AI Max PRO 385 ve Ryzen AI Max PRO 380 modelleri ise 8 çekirdek ve 6 çekirdek seçenekleriyle profesyonel kullanıcıların farklı ihtiyaçlarını karşılıyor.</p><p>Her iki seride de dikkat çeken bir diğer özellik ise 50 NPU TOPS kapasitesiyle yapay zeka hızlandırma yetenekleri. İşlemciler, 45-120W arasında değişen cTDP değerleriyle enerji verimliliğini ön planda tutuyor. AMD, Ryzen AI teknolojisiyle yapay zeka uygulamalarında daha hızlı ve verimli çözümler sunarak sektörde yeni bir standart oluşturuyor<br><br>&nbsp;</p><p><strong>AMD Ryzen AI Max PRO serisi:</strong></p><figure class=\"table\"><table><thead><tr><th>Model</th><th>Çekirdek / İş Parçacığı</th><th>Boost / Temel Frekans</th><th>Toplam Önbellek</th><th>Grafik Modeli</th><th>Grafik CU Sayısı</th><th>Grafik Frekansı</th><th>cTDP</th><th>NPU TOPS</th><th>Ryzen AI</th></tr></thead></table></figure><figure class=\"table\"><table><tbody><tr><td>AMD Ryzen AI Max+ PRO 395</td><td>16 / 32</td><td>5.1 GHz’e kadar / 3.0 GHz</td><td>80MB</td><td>AMD Radeon 8060S</td><td>40</td><td>2900 MHz</td><td>45 – 120W</td><td>50</td><td>Evet</td></tr></tbody></table></figure><figure class=\"table\"><table><tbody><tr><td>AMD Ryzen AI Max PRO 390</td><td>12 / 24</td><td>5.0 GHz’e kadar / 3.2 GHz</td><td>76MB</td><td>AMD Radeon 8050S</td><td>32</td><td>2800 MHz</td><td>45 – 120W</td><td>50</td><td>Evet</td></tr></tbody></table></figure><figure class=\"table\"><table><tbody><tr><td>AMD Ryzen AI Max PRO 385</td><td>8 / 16</td><td>5.0 GHz’e kadar / 3.6 GHz</td><td>40MB</td><td>AMD Radeon 8050S</td><td>32</td><td>2800 MHz</td><td>45 – 120W</td><td>50</td><td>Evet</td></tr></tbody></table></figure><figure class=\"table\"><table><tbody><tr><td>AMD Ryzen AI Max PRO 380</td><td>6 / 12</td><td>4.9 GHz’e kadar / 3.6 GHz</td><td>22MB</td><td>AMD Radeon 8040S</td><td>16</td><td>2800 MHz</td><td>45 – 120W</td><td>50</td><td>Evet</td></tr></tbody></table></figure>', 'AMD-AI-MAX.jpg', '2025-01-07 02:37:20'),
(16, 'HP, yeni nesil yapay zekalı EliteBook PC’lerini tanıttı!', '<p>HP, CES 2025\'te Intel\'in yapay zeka çipleriyle güçlendirilmiş üç yeni EliteBook serisi PC\'lerini tanıttı. İşte özellikleri</p><p>HP, CES 2025’te üç yeni EliteBook dizüstü bilgisayarını tanıtarak bir hayli dikkat çekti. Bu modeller, Intel’in yeni nesil Core Ultra 5 ve 7 yapay zeka destekli çipleriyle geliyor. Yeni PC’ler güçlü performans ve kullanıcı odaklı yeniliklerle ön plana çıkıyor.</p><h2>Intel’in yeni yapay zeka çiplerinin güç verdiği HP EliteBook modelleri tanıtıldı</h2><p>Öncelikle, <strong>EliteBook Ultra G1i</strong> modelinin bu serinin en üst modeli olduğunu belirtelim. 14 inçlik 3K OLED ekranıyla gelen cihaz, dokunmatik ve dokunmatik olmayan versiyonlarıyla karşımıza çıkıyor. 2880 x 1880 çözünürlüğe sahip bu ekran, hem parlaklık hem de renk doğruluğu açısından iddialı.</p><p>Cihaz, 9 MP web kamerasıyla yüksek kaliteli video görüşmeleri sunarken, yapay zeka desteğiyle görüntü iyileştirme özellikleri sunuyor. Ses konusunda da güçlü bir performans vaat eden cihaz, stüdyo kalitesinde çift mikrofon ve dört hoparlör sistemiyle geliyor. Ayrıca, haptik tabanlı dokunmatik yüzeyi, Apple’ın MacBook’larından aşina olunan bir “tıklama” hissi sunuyor. Bu modelin dokunmatik olmayan versiyonu 1.2 kg, dokunmatik olan versiyonu ise 1.22 kg ağırlığında.</p><p><strong>EliteBook X Flip G1i</strong> modeli, 360 derece katlanabilir menteşesiyle hibrit bir kullanım sunuyor. 2’si 1 arada yapısıyla hem dizüstü bilgisayar hem de tablet olarak kullanılabilen bu model, 1920 x 1200 çözünürlüklü LCD ekranla geliyor. Ayrıca, daha yüksek çözünürlük isteyenler için 2560 x 1600 çözünürlük seçeneği de mevcut. Bu cihaz, HP’nin şarj edilebilir aktif kalemiyle uyumlu olarak çalışıyor ancak bu kalemin ayrıca satın alınması gerekiyor.</p><p><strong>EliteBook X G1i </strong>ise klasik dizüstü bilgisayar form faktörüyle dikkat çekiyor. Flip modeliyle benzer LCD ekran seçeneklerine sahip olan cihaz, daha geleneksel bir tasarım arayan kullanıcıları hedef almış. Ancak 5 MP web kamerası, Ultra G1i modeline kıyasla daha düşük bir çözünürlük sunuyor.</p><p>Bu arada yeni EliteBook modelleri, Intel’in Core Ultra çiplerinin sunduğu yapay zeka motorları sayesinde saniyede 48 trilyon işlem (TOPS) gerçekleştirebiliyor. Özellikle görüntü işleme ve ses geliştirme gibi işlemler yapay zeka desteğiyle daha akıcı hale geliyor. Tüm modellerde 16 GB veya 32 GB RAM ile 256 GB veya 512 GB SSD depolama seçenekleri sunuluyor.</p><p>HP, yeni modellerin fiyatları ve çıkış tarihleri hakkında henüz resmi bir bilgi paylaşmadı. Ancak bu modeller CES 2025 boyunca Las Vegas’ta sergilenerek meraklıların beğenisine sunulmuş durumda. Sizce yapay zeka destekli bu yeni dizüstü bilgisayarlar, büyük bir kitleye ulaşır mı?</p>', 'hp-yeni-nesil-intel-yapay-zeka-elitebook-pc-tanitti-1920x1081.jpg', '2025-01-07 02:40:05'),
(17, 'ChatGPT tarih olabilir: OpenAI, süper yapay zeka geliştiriyor', '<p>OpenAI CEO\'su Sam Altman, süper yapay zeka modellerine yönelik tahminlerini paylaştı. İşte detaylar.</p><p>OpenAI, Sam Altman’ın açıklamalarına göre yeni yılda odağını süper yapay zeka geliştirmeye kaydırıyor. Altman, şirketin ChatGPT gibi başarılarından memnun olduğunu belirtirken, insanlık için çok daha parlak bir geleceği çizmek istediklerini söyledi. Bu anahtarın ise süper yapay zekada olduğuna inanıyor.</p><h2>ChatGPT yerine süper yapay zeka</h2><p>CEO Sam Altman, süper yapay zeka için belirlenen hedeflerin bilim kurguya benzediğini ve potansiyelinin önümüzdeki yıllarda daha aşikar hale geleceğini ifade etti. Geliştirme sürecinde hem dikkatli hem de sorumlu bir yaklaşımın önemini vurgulayan CEO, riskleri azaltma ihtiyaç duyacaklarını söyledi.</p><p>Sam Altman’ın açıklamaları aslında OpenAI için önemli bir stratejik değişimi de işaret ediyor. ChatGPT gibi araçlar ile dikkat çeken bir ilerleme kaydeden şirket, kademeli iyileştirmelerin ötesine geçmek istiyor.</p><p>Altman ayrıca bu gelişmeleri “ajan tabanlı yapay zeka”dan ayırıyor. Ajan tabanlı yapay zekanın bu yıl içinde erişilebilir olacağını, süper modellerin ise daha sonra ortaya çıkacağını öngörüyor. Bilmeyenler için yapay zeka ajanı; belirli bir hedefe ulaşmak için bağımsız olarak hareket edebilen ve kendi başına karar alabilen modelleri temsil ediyor.</p><p>Gelişmiş bir yapay zeka için geliştirme süreci karmaşık olmaya devam ediyor. Giderek daha karmaşık hale gelen yapay zekanın geliştirilmesi, önümüzdeki yıllarda da teknoloji dünyasını derinden etkileyecek gibi duruyor.</p>', 'nvidia-openai-chatgpt.jpg', '2025-01-07 02:41:35'),
(18, 'Microsoft, yapay zekaya 3 trilyon TL yatıracak!', '<p>Microsoft, 2025\'te yapay zeka veri merkezlerine 80 milyar dolar ayıracak. Bu da şirketin altyapısını iki katına çıkaracak.</p><p>Yapay zeka alanındaki planlarını büyüten Microsoft, 2025’te yapay zeka destekli veri merkezleri inşa etmek için 80 milyar dolarlık bir bütçe ayırdığını duyurdu. Bu da Türk lirası olarak 2,8 trilyon TL’ye denk geliyor.</p><h2>Microsoft, 2025’te yapay zeka merkezlerine 80 milyar dolar ayıracak</h2><p>Microsoft Başkan Yardımcısı Brad Smith, bu devasa yatırımla birlikte şirketin yapay zeka gücünü artıracağını ifade etti. Smith açıklamasında, “Geleceğe baktığımızda, yapay zekanın dünyayı değiştirecek temel bir teknolojik sıçrama olacağı açıkça görülüyor. Yapay zeka, ekonominin her sektöründe inovasyonu tetikleme ve verimliliği artırma potansiyeli taşıyor” dedi.</p><p>80 milyar dolarlık yatırımın yarısından fazlası ABD’ye yönlendirilecek. Bu yatırım kararı, özellikle ChatGPT’nin piyasaya sürülmesinin ardından yapay zekaya olan talebin katlanarak arttığı bir döneme denk geliyor. Farklı sektörlerdeki şirketlerin, yapay zekayı ürün ve hizmetlerine entegre etmek için yarıştığı dönemde, yüksek performanslı bilgi işlem kaynaklarına duyulan ihtiyaç da arttı.</p><p>Ancak Microsoft’un yapay zeka hedefleri yalnızca altyapıyla sınırlı değil. Teknoloji devi, geçtiğimiz aylarda çok modlu verileri eş zamanlı olarak işleyebilen yapay zeka hizmetini kullanıma sundu.</p><p>Şirketin küresel stratejisi de genişliyor. Bir süre önce Endonezya’da yapay zeka ve bulut geliştirme alanlarına 1,7 milyar dolarlık bir yatırım yapıldı. Ayrıca OpenAI için 6,6 milyar dolarlık bir finansman turunu tamamladığını da belirtmek lazım.</p><p>Ancak yapay zeka yarışı beraberinde bazı zorlukları da getiriyor. Geçtiğimiz yıl yapılan araştırma, yapay zeka veri merkezlerinin yerel elektrik şebekeleri üzerinde önemli giderler oluşturduğunu ve hatta bazı durumlarda yakındaki evlerde hasara yol açtığını ortaya koydu</p>', 'microsoft-recall-ozelligi-varsayilan-olmayacak-e1730228666695.jpg', '2025-01-07 02:45:19'),
(34, 'asdasdasdadsa', '<p>dhysagudınjsadmksadsaldsaldksaşda</p>', 'apple-vision-pro-uluslararasi-pazarda-e1719667649180.jpg', '2025-01-07 14:55:58');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `news_categories`
--

CREATE TABLE `news_categories` (
  `news_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Tablo döküm verisi `news_categories`
--

INSERT INTO `news_categories` (`news_id`, `category_id`) VALUES
(4, 3),
(4, 4),
(5, 2),
(5, 3),
(6, 2),
(7, 1),
(8, 2),
(8, 3),
(9, 4),
(10, 4),
(11, 2),
(12, 4),
(13, 3),
(13, 4),
(15, 1),
(15, 4),
(16, 1),
(17, 1),
(18, 1),
(34, 2),
(34, 4);

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Tablo için indeksler `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `news_categories`
--
ALTER TABLE `news_categories`
  ADD PRIMARY KEY (`news_id`,`category_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Tablo için AUTO_INCREMENT değeri `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `news_categories`
--
ALTER TABLE `news_categories`
  ADD CONSTRAINT `news_categories_ibfk_1` FOREIGN KEY (`news_id`) REFERENCES `news` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `news_categories_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
