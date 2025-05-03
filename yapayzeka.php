<?php
include 'db.php';

// Kategori adı "Yapay Zeka" olan haberleri çek
$category = "Yapay Zeka"; // Kategori ismini sabitliyoruz


$query = "SELECT n.*, c.name AS category_name FROM news n
          JOIN news_categories nc ON n.id = nc.news_id
          JOIN categories c ON nc.category_id = c.id
          WHERE c.name = ? ORDER BY n.created_at DESC";

$stmt = $conn->prepare($query);
$stmt->bind_param("s", $category);  
$stmt->execute();
$result = $stmt->get_result();
?>

<?php
    include 'header.php';
    include 'navbar.php';
    ?>





     <h2 class="baslık">YAPAY ZEKA HABERLERİ</h2>
    <div class="cards">
        <?php
        while ($haber = $result->fetch_assoc()) {
        ?>
            <div class="cards-teknoloji">
                <a href="haber.php?id=<?= $haber['id']; ?>" style="text-decoration: none; color: inherit;">
                    <div class="card-img">
                        <img src="resimler/<?= $haber['image']; ?>" alt="">
                        
                        <span class="teknoloji"><?= $haber['category_name']; ?></span>
                    </div>
                    <div class="card-text">
                        <h2><?= $haber['title']; ?></h2>
                        <p><?= (strlen($haber['content']) > 100) ? substr($haber['content'], 0, 100) . "..." : $haber['content']; ?></p>
                    </div>
                </a>
            </div>
        <?php
        }
        ?>
    </div>
    <?php
    include 'footer.php';
    ?>

<?php
$conn->close();
?>
