<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hakkımızda</title>
    <link rel="stylesheet" href="css.css">
    <link rel="shortcut icon" href="resimler/icon2.png" type="image/x-icon">
    <style>
        .modern-hakkimizda {
            background-color: #f9f9f9;
            padding: 50px 20px;
        }
        .container {
            max-width: 1200px;
            margin: 0 auto;
            display: flex;
            flex-wrap: wrap;
            gap: 30px;
            align-items: center;
        }
        .about-content {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
        }
        .about-text {
            flex: 1;
            min-width: 300px;
        }
        .about-text h2 {
            color: #333;
            font-size: 2.5rem;
            margin-bottom: 20px;
        }
        .about-text p {
            font-size: 1.2rem;
            color: #555;
            line-height: 1.8;
            margin-bottom: 20px;
        }
        .about-image {
            flex: 1;
            min-width: 300px;
            text-align: center;
        }
        .about-image img {
            max-width: 100%;
            border-radius: 10px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
        }
    </style>
</head>
<body>
<div class="navbar">
    <h2>TEKNOLOJİHABER.COM</h2>
    <div class="linkler">
        <ul>
            <li><a href="hakkımızda.php">Hakkımızda</a></li>
        </ul>
        <div class="logo">
            <img src="resimler/sneijder.jpg" alt="">
            <a href="#">Samet Kapan</a>
        </div>
    </div>
</div>

<div class="navbar2">
    <div class="element"><a href="mobil.php">Mobil</a></div>|
    <div class="element"><a href="yapayzeka.php">Yapay Zeka</a></div>|
    <div class="element"><a href="yazılım.php">Yazılım Dünyası</a></div>|
    <div class="element"><a href="donanım.php">Donanım</a></div>|
    <div class="element"><a href="index.php">ANASAYFA</a></div>
</div>

    <section class="modern-hakkimizda">
        <div class="container">
            <div class="about-content">
                <div class="about-text">
                    <h2>Bizi Daha Yakından Tanıyın</h2>
                    <p>
                        Teknolojihaber.com, teknoloji dünyasındaki yenilikleri anında takip etmenizi sağlamak için 
                        tasarlandı. İster en yeni mobil cihazları merak edin, ister yazılım geliştirme ile ilgilenin, 
                        her konuda kapsamlı bilgiler burada sizi bekliyor!
                    </p>
                    <p>
                        Ekibimiz; teknoloji, yapay zeka ve yazılım dünyasına dair derin bir bilgiye sahip uzmanlardan 
                        oluşmaktadır. İlginizi çekecek içeriklerimizle teknoloji dünyasına bir adım daha yaklaşabilirsiniz.
                        <br><br>
                        Samet Kapan ~CEO
                    </p>
                </div>
                <div class="about-image">
                    <img src="resimler/sneijder.jpg" alt="Hakkımızda Görseli">
                </div>
            </div>
        </div>
    </section>

    <div class="footer">
    <h3>BU SİTENİN TÜM HAKLARI SAMET KAPAN'A AİTTİR!</h3>
    <p>İLETİŞİM: 0543 282 1355</p>
    <p>E-POSTA : kapan13201@gmail.com</p>
</div>
</body>
</html>
