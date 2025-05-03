<?php
session_start();

// Eğer kullanıcı giriş yapmamışsa, login sayfasına yönlendir
if (!isset($_SESSION['admin'])) {
    header("Location: login.php");
    exit;
}

include 'db.php';

// Kategorileri çek
$categories = $conn->query("SELECT * FROM categories");
if (!$categories) {
    die("Kategoriler alınamadı: " . $conn->error);
}

// Haberleri çek
$category = isset($_GET['category']) ? $_GET['category'] : '';
if ($category) {
    $query = "SELECT n.* FROM news n 
              JOIN news_categories nc ON n.id = nc.news_id 
              JOIN categories c ON nc.category_id = c.id 
              WHERE c.name = ? 
              ORDER BY n.created_at DESC";
    $stmt = $conn->prepare($query);
    $stmt->bind_param("s", $category);
    $stmt->execute();
    $result = $stmt->get_result();
} else {
    $query = "SELECT * FROM news ORDER BY created_at DESC";
    $result = $conn->query($query);
    if (!$result) {
        die("Haberler alınamadı: " . $conn->error);
    }
}

// Çıkış işlemi
if (isset($_POST['logout'])) {
    session_unset();
    session_destroy();
    header("Location: login.php");
    exit;
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Panel</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        body {
            background-color: #f8f9fa;
        }
        .admin-header {
            background-color: #343a40;
            color: white;
            padding: 1rem;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        .admin-header h1 {
            margin: 0;
            font-size: 1.5rem;
        }
        .admin-nav {
            background-color: #495057;
            padding: 1rem;
        }
        .admin-nav a {
            color: white;
            text-decoration: none;
            margin-right: 1rem;
        }
        .admin-nav a:hover {
            text-decoration: underline;
        }
        .news-table th, .news-table td {
            vertical-align: middle;
        }
        .btn-edit {
            color: #0d6efd;
        }
        .btn-delete {
            color: #dc3545;
        }
        .btn-logout {
            background-color: #dc3545;
            color: white;
            border: none;
            padding: 0.5rem 1rem;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <header class="admin-header">
        <h1>Admin Paneli</h1>
        <form method="POST" action="" style="display:inline;">
            <button type="submit" name="logout" class="btn-logout"><i class="fas fa-sign-out-alt"></i> Çıkış Yap</button>
        </form>
        <a href="add_news.php" class="btn btn-primary"><i class="fas fa-plus"></i> Haber Ekle</a>
    </header>

    <nav class="admin-nav">
        <a href="admin_panel.php" class="btn btn-secondary btn-sm">Tüm Kategoriler</a>
        <?php while ($cat = $categories->fetch_assoc()) { ?>
            <a href="admin_panel.php?category=<?php echo urlencode($cat['name']); ?>" class="btn btn-secondary btn-sm">
                <?php echo $cat['name']; ?>
            </a>
        <?php } ?>
    </nav>

    <main class="container my-4">
        <div class="table-responsive">
            <table class="table table-striped table-bordered news-table">
                <thead class="table-dark">
                    <tr>
                        <th>ID</th>
                        <th>Başlık</th>
                        <th>Kategori</th>
                        <th>Oluşturulma Tarihi</th>
                        <th>İşlemler</th>
                    </tr>
                </thead>
                <tbody>
                    <?php while ($row = $result->fetch_assoc()) { ?>
                    <tr>
                        <td><?php echo $row['id']; ?></td>
                        <td><?php echo $row['title']; ?></td>
                        <td>
                            <?php
                            $news_id = $row['id'];
                            $category_query = "SELECT c.name FROM categories c 
                                               JOIN news_categories nc ON c.id = nc.category_id 
                                               WHERE nc.news_id = ?";
                            $category_stmt = $conn->prepare($category_query);
                            $category_stmt->bind_param("i", $news_id);
                            $category_stmt->execute();
                            $category_result = $category_stmt->get_result();
                            $categories_list = [];
                            while ($cat_row = $category_result->fetch_assoc()) {
                                $categories_list[] = $cat_row['name'];
                            }
                            echo implode(', ', $categories_list);
                            ?>
                        </td>
                        <td><?php echo $row['created_at']; ?></td>
                        <td>
                            <a href="edit_news.php?id=<?php echo $row['id']; ?>" class="btn btn-sm btn-link btn-edit"><i class="fas fa-edit"></i> Düzenle</a>
                            <a href="delete_news.php?id=<?php echo $row['id']; ?>" class="btn btn-sm btn-link btn-delete" onclick="return confirm('Bu haberi silmek istediğinize emin misiniz?')"><i class="fas fa-trash-alt"></i> Sil</a>
                        </td>
                    </tr>
                    <?php } ?>
                </tbody>
            </table>
        </div>
    </main>

    <footer class="text-center py-3 bg-dark text-light">
        <p>© 2025 Teknoloji Haberleri - Samet Kapan</p>
    </footer>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
</body>
</html>
