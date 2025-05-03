<?php
include 'db.php';

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $title = $_POST['title'];
    $content = $_POST['content'];  // CKEditor içeriği
    $image = $_FILES['image']['name'];
    $categories = $_POST['categories']; // Çoklu kategori seçimi

    // Resmi yükleme
    $target_dir = "resimler/";
    $target_file = $target_dir . basename($_FILES["image"]["name"]);
    move_uploaded_file($_FILES["image"]["tmp_name"], $target_file);

    // Haber ekleme sorgusu
    $query = "INSERT INTO news (title, content, image, created_at) VALUES (?, ?, ?, NOW())";
    $stmt = $conn->prepare($query);
    $stmt->bind_param("sss", $title, $content, $image);

    if ($stmt->execute()) {
        $news_id = $conn->insert_id; // Eklenen haberin ID'si

        // Kategorileri ilişkilendirme
        foreach ($categories as $category_id) {
            $query = "INSERT INTO news_categories (news_id, category_id) VALUES (?, ?)";
            $stmt = $conn->prepare($query);
            $stmt->bind_param("ii", $news_id, $category_id);
            $stmt->execute();
        }

        echo "Haber başarıyla eklendi!";
        header("Location: admin_panel.php");
    } else {
        echo "Haber eklenirken bir hata oluştu!";
    }
}
?>

<!DOCTYPE html>
<html lang="tr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Haber Ekle</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/css/bootstrap.min.css">
    <script src="https://cdn.ckeditor.com/ckeditor5/39.0.1/classic/ckeditor.js"></script>
    <link rel="shortcut icon" href="resimler/icon2.png" type="image/x-icon">
</head>
<body>
    <div class="container my-5">
        <h1 class="text-center">Yeni Haber Ekle</h1>
        <form method="post" enctype="multipart/form-data" class="p-4 border rounded bg-light">
            <div class="mb-3">
                <label for="title" class="form-label">Başlık:</label>
                <input type="text" name="title" id="title" class="form-control" required>
            </div>

            <div class="mb-3">
                <label for="content" class="form-label">İçerik:</label>
                <textarea name="content" id="content" rows="5" class="form-control" required></textarea>
            </div>

            <div class="mb-3">
                <label for="image" class="form-label">Resim:</label>
                <input type="file" name="image" id="image" class="form-control" required>
            </div>

            <div class="mb-3">
    <label class="form-label">Kategoriler:</label>
    <div>
        <?php
        // Kategorileri listeleme
        $categories = $conn->query("SELECT * FROM categories");
        while ($row = $categories->fetch_assoc()) {
            echo "<div class='form-check'>
                    <input class='form-check-input' type='checkbox' name='categories[]' value='{$row['id']}' id='category{$row['id']}'>
                    <label class='form-check-label' for='category{$row['id']}'>
                        {$row['name']}
                    </label>
                  </div>";
        }
        ?>
    </div>
</div>
<script>
    // Form gönderilmeden önce en az bir kategori seçildiğini kontrol et
    document.querySelector('form').addEventListener('submit', function(e) {
        const checkboxes = document.querySelectorAll('input[name="categories[]"]:checked');
        if (checkboxes.length === 0) {
            alert('Lütfen en az bir kategori seçiniz.');
            e.preventDefault(); // Formun gönderilmesini engeller
        }
    });
</script>



            <div class="d-flex justify-content-between">
                <button type="submit" class="btn btn-primary">Haber Ekle</button>
                <a href="admin_panel.php" class="btn btn-secondary">Geri Dön</a>
            </div>
        </form>
    </div>

    <script>
        ClassicEditor
            .create(document.querySelector('#content'))
            .then(editor => {
                editor.model.document.on('change:data', () => {
                    document.querySelector('#content').value = editor.getData();
                });
            })
            .catch(error => {
                console.error(error);
            });
    </script>
</body>
</html>
