<?php
$conn = new mysqli('localhost', 'root', '', 'samet');
$id = $_GET['id'];
$result = $conn->query("SELECT * FROM news WHERE id = $id");

if ($news = $result->fetch_assoc()) {
    echo "<h1>" . $news['title'] . "</h1>";
    echo "<p>" . $news['content'] . "</p>";
    if ($news['image']) {
        echo "<img src='uploads/" . $news['image'] . "' alt='Haber Resmi' width='400'><br>";
    }
} else {
    echo "Haber bulunamadı!";
}
?>
