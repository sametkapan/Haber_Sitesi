    <?php
    include 'header.php';
    include 'navbar.php';
    ?>

    <?php
    include 'db.php';

    // Kategoriler
    $categories = ['Yapay Zeka', 'Donanım', 'Mobil', 'Yazılım'];


    foreach ($categories as $category) {
        // Kategoriye göre 4 haber
        $query = "SELECT n.*, c.name AS category_name FROM news n
                  JOIN news_categories nc ON n.id = nc.news_id
                  JOIN categories c ON nc.category_id = c.id
                  WHERE c.name = ? ORDER BY n.created_at DESC LIMIT 4"; // 4 sınırlama

        $stmt = $conn->prepare($query);
        $stmt->bind_param("s", $category);
        $stmt->execute();
        $result = $stmt->get_result();

        echo "<h2 class='baslık'>$category HABERLERİ</h2>";
        echo "<div class='cards'>";

        // Haberleri döngüye alarak listele
        while ($haber = $result->fetch_assoc()) {
            echo "<div class='cards-teknoloji'>";
            echo "<a href='haber.php?id=" . $haber['id'] . "' style='text-decoration: none; color: inherit;'>"; 
            echo "<div class='card-img'>";
            echo "<img src='resimler/" . $haber['image'] . "' alt=''>";
            echo "<span class='teknoloji'>" . $haber['category_name'] . "</span>";
            echo "</div>";
            echo "<div class='card-text'>";
            echo "<h2>" . $haber['title'] . "</h2>";
            echo "<p>" . (strlen($haber['content']) > 100 ? substr($haber['content'], 0, 100) . "..." : $haber['content']) . "</p>";
            echo "</div>";
            echo "</a></div>";
        }
        
        echo "</div>"; 
    }
    ?>

    <!-- FOOTER -->
    <div class="footer">
        <h3>BU SİTENİN TÜM HAKLARI SAMET KAPAN'A AİTTİR!</h3>
        <p>İLETİŞİM: 0543 282 1355</p>
        <p>E-POSTA : kapan13201@gmail.com</p>
    </div>

</body>
</html>
