<?php
$conn = new mysqli("localhost", "root", "", "samet");

if ($conn->connect_error) {
    die("Veritabanı bağlantı hatası: " . $conn->connect_error);
}

// Haber ID al
if (isset($_GET['id'])) {
    $haber_id = intval($_GET['id']); // Güvenlik için tam sayıya çevir
    $haber_sorgusu = $conn->query("SELECT * FROM news WHERE id = $haber_id");

    if ($haber_sorgusu->num_rows > 0) {
        $haber = $haber_sorgusu->fetch_assoc();
    } else {
        echo "Haber bulunamadı.";
        exit;
    }

    // Haberle ilişkili kategorileri al
    $kategori_sorgusu = $conn->query("
        SELECT c.name 
        FROM news_categories nc
        JOIN categories c ON nc.category_id = c.id
        WHERE nc.news_id = $haber_id
    ");
    $kategoriler = [];
    while ($row = $kategori_sorgusu->fetch_assoc()) {
        $kategoriler[] = $row['name'];
    }
} else {
    echo "Haber ID'si belirtilmedi.";
    exit;
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?= htmlspecialchars($haber['title']); ?></title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="css.css">
    <link rel="shortcut icon" href="resimler/icon2.png" type="image/x-icon">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Poppins', sans-serif;
            background-color: #f4f4f9;
            color: #333;
        }

        .container {
            max-width: 1200px;
            margin: 50px auto;
            background: white;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            overflow: hidden;
            display: flex;
            flex-direction: row;
        }

        .haber-img {
            flex: 1;
            max-width: 50%;
            max-height:600px;
        }

        .haber-img img {
            width: 100%;
            height: 600px;
            object-fit: cover;
            border-right: 1px solid #ddd;
            border-radius: 10px;
        }

        .haber-content {
    flex: 1;
    padding: 30px;
    display: flex;
    flex-direction: column;
    justify-content: space-between;
    max-height: 600px;
    overflow-y: auto; /*kaydırma*/
}


        .haber-content h1 {
            font-size: 28px;
            color: #222;
            margin-bottom: 10px;
        }

        .haber-content .tarih {
            font-size: 14px;
            color: #999;
            margin-bottom: 20px;
        }

        .haber-content p {
            font-size: 16px;
            margin-bottom: 20px;
            color: #444;
            line-height: 1.8;
        }

        .kategori-container {
            display: flex; 
            flex-wrap: wrap; /* Taşan kategoriler alt satıra geçer */
            gap: 10px; /* Kategoriler arasında boşluk bırakır */
            margin-bottom: 20px;
        }

        .kategori {
            font-size: 14px;
            color: white;
            background-color: darkcyan;
            padding: 5px 10px;
            border-radius: 20px;
            text-transform: uppercase;
        }

        .btn-back {
            display: inline-block;
            margin-top: 20px;
            background: darkcyan;
            color: white;
            padding: 10px 15px;
            text-decoration: none;
            border-radius: 5px;
            transition: background 0.3s ease;
            align-self: flex-start;
        }

        .btn-back:hover {
            background: #5851db;
        }

        .footer {
            text-align: center;
            padding: 10px 0;
            background-color: black;
            color: white;
            font-size: 14px;
            margin-top: 20px;
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

    <!-- İKİNCİ NAVBAR BİTİŞ -->    
    <!-- ANASAYFA -->

    <div class="container">
        <!-- Haber Fotoğrafı -->
        <div class="haber-img">
            <img src="resimler/<?= htmlspecialchars($haber['image']); ?>" alt="<?= htmlspecialchars($haber['title']); ?>">
        </div>

        <!-- Haber İçeriği -->
        <div class="haber-content">
            <!-- Kategoriler -->
            <div class="kategori-container">
                <?php if (!empty($kategoriler)): ?>
                    <?php foreach ($kategoriler as $kategori): ?>
                        <span class="kategori"><?= htmlspecialchars($kategori); ?></span>
                    <?php endforeach; ?>
                <?php else: ?>
                    <span class="kategori">Kategori Bulunamadı</span>
                <?php endif; ?>
            </div>

            <h1><?= htmlspecialchars($haber['title']); ?></h1>
            <p class="tarih"><?= htmlspecialchars(date("d M Y", strtotime($haber['created_at']))); ?></p>
            <p><?= $haber['content']; ?></p>
            <a href="index.php" class="btn-back">Geri Dön</a>
        </div>
    </div>

    <div class="footer">
    <h3>BU SİTENİN TÜM HAKLARI SAMET KAPAN'A AİTTİR!</h3>
    <p>İLETİŞİM: 0543 282 1355</p>
    <p>E-POSTA : kapan13201@gmail.com</p>
</div>

</body>
</html>
