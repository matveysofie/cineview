<?php
session_start();
require_once('../../db/config.php');
require_once('../../const/check_session.php');

if ($role == "admin") {
    if (!empty($_POST['submit'])) {
        $link = $_POST['link'];
        $size = $_POST['size'];
        $movie = $_POST['movie'];
        $streaming = $_POST['streaming'];

        try {
            $conn = new PDO('mysql:host=' . DBHost . ';dbname=' . DBName . ';charset=' . DBCharset . ';collation=' . DBCollation . ';prefix=' . DBPrefix . '', DBUser, DBPass);
            $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

            $stmt = $conn->prepare("SELECT * FROM tbl_single_links WHERE item = ? AND size = ?");
            $stmt->execute([$movie, $size]);
            $result = $stmt->fetchAll();

            if (count($result) > 0) {
                $_SESSION['reply'] = "009";
                header("location:../media?node=$movie");
            } else {
                $stmt = $conn->prepare("INSERT INTO tbl_single_links (item, link, size, streaming) VALUES (?,?,?,?)");
                $stmt->execute([$movie, $link, $size, $streaming]);
                $_SESSION['reply'] = "015";
                header("location:../media?node=$movie");
            }
        } catch (PDOException $e) {
            echo "Connection failed: " . $e->getMessage();
        }
    } else {
        header("location:../");
    }
} else {
    header("location:../");
}
