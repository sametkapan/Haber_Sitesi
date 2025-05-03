<?php
include 'db.php';

if (isset($_GET['id'])) {
    $id = intval($_GET['id']);

    // Haber silmeden önce, bu haberle ilişkili kategorileri sil
    $category_query = "DELETE FROM news_categories WHERE news_id = ?";
    $category_stmt = $conn->prepare($category_query);
    $category_stmt->bind_param("i", $id);
    $category_stmt->execute();

    // Haber silme sorgusu
    $query = "DELETE FROM news WHERE id = ?";
    $stmt = $conn->prepare($query);
    $stmt->bind_param("i", $id);

    if ($stmt->execute()) {
        echo "Haber başarıyla silindi!";
        header("Location: admin_panel.php");
    } else {
        echo "Haber silinirken bir hata oluştu!";
    }
} else {
    echo "Geçersiz istek!";
}
?>
