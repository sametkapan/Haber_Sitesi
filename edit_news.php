<?php
include 'db.php';

if (isset($_GET['id'])) {
    $id = intval($_GET['id']);

    // Haber bilgilerini al
    $query = "SELECT * FROM news WHERE id = ?";
    $stmt = $conn->prepare($query);
    $stmt->bind_param("i", $id);
    $stmt->execute();
    $result = $stmt->get_result();
    $news = $result->fetch_assoc();

    if (!$news) {
        echo "Haber bulunamadı!";
        exit;
    }

    // Seçili kategorileri al
    $category_query = "SELECT category_id FROM news_categories WHERE news_id = ?";
    $category_stmt = $conn->prepare($category_query);
    $category_stmt->bind_param("i", $id);
    $category_stmt->execute();
    $category_result = $category_stmt->get_result();
    $selected_categories = [];
    while ($row = $category_result->fetch_assoc()) {
        $selected_categories[] = $row['category_id'];
    }
} else {
    echo "Geçersiz istek!";
    exit;
}

// Haber güncelleme işlemi
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $title = $_POST['title'];
    $content = $_POST['content'];
    $categories = $_POST['categories'] ?? []; // Seçilen kategoriler

    if (empty($categories)) {
        echo "En az bir kategori seçmelisiniz!";
    } else {
        // Haber bilgilerini güncelle
        $query = "UPDATE news SET title = ?, content = ? WHERE id = ?";
        $stmt = $conn->prepare($query);
        $stmt->bind_param("ssi", $title, $content, $id);

        if ($stmt->execute()) {
            // Mevcut kategorileri sil
            $conn->query("DELETE FROM news_categories WHERE news_id = $id");

            // Yeni kategorileri ekle
            foreach ($categories as $category_id) {
                $conn->query("INSERT INTO news_categories (news_id, category_id) VALUES ($id, $category_id)");
            }

            echo "Haber başarıyla güncellendi!";
            header("Location: admin_panel.php");
            exit;
        } else {
            echo "Haber güncellenirken bir hata oluştu!";
        }
    }
}
?>

<!DOCTYPE html>
<html lang="tr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Haber Düzenle</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/css/bootstrap.min.css">
    <script src="https://cdn.ckeditor.com/ckeditor5/39.0.1/classic/ckeditor.js"></script>
    <link rel="shortcut icon" href="resimler/icon2.png" type="image/x-icon">
</head>
<body>
    <div class="container my-5">
        <h1 class="text-center">Haber Düzenle</h1>
        <form method="post" class="p-4 border rounded bg-light">
            <div class="mb-3">
                <label for="title" class="form-label">Başlık:</label>
                <input type="text" name="title" id="title" class="form-control" value="<?php echo htmlspecialchars($news['title']); ?>" required>
            </div>

            <div class="mb-3">
                <label for="content" class="form-label">İçerik:</label>
                <textarea name="content" id="content" class="form-control" required><?php echo htmlspecialchars($news['content']); ?></textarea>
            </div>

            <div class="mb-3">
                <label class="form-label">Kategoriler:</label>
                <div class="form-check">
                    <?php
                    // Kategorileri listeleme
                    $categories = $conn->query("SELECT * FROM categories");
                    while ($row = $categories->fetch_assoc()) {
                        $checked = in_array($row['id'], $selected_categories) ? "checked" : "";
                        echo "<div class='form-check'>";
                        echo "<input class='form-check-input' type='checkbox' name='categories[]' value='{$row['id']}' id='category_{$row['id']}' $checked>";
                        echo "<label class='form-check-label' for='category_{$row['id']}'>{$row['name']}</label>";
                        echo "</div>";
                    }
                    ?>
                </div>
            </div>

            <div class="d-flex justify-content-between">
                <button type="submit" class="btn btn-primary">Kaydet</button>
                <a href="admin_panel.php" class="btn btn-secondary">Geri Dön</a>
            </div>
        </form>
    </div>

    <script>
        ClassicEditor
            .create(document.querySelector('#content'))
            .catch(error => {
                console.error(error);
            });
    </script>
</body>
</html>
