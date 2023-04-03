<?php
session_start();
require_once('../../db/config.php');
require_once('../../const/check_session.php');

if ($role == "admin") {
    if (!empty($_POST['submit'])) {
        $link = $_POST['link'];
        $language = ucwords($_POST['language']);
        $label = ucfirst($_POST['src']);
        $movie = $_POST['movie'];
        $episode = $_POST['number'];

        try {
            $conn = new PDO('mysql:host=' . DBHost . ';dbname=' . DBName . ';charset=' . DBCharset . ';collation=' . DBCollation . ';prefix=' . DBPrefix . '', DBUser, DBPass);
            $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

            $stmt = $conn->prepare("SELECT * FROM tbl_episode_subs WHERE item = ? AND language = ? AND src = ? AND episode = ?");
            $stmt->execute([$movie, $language, $label, $episode]);
            $result = $stmt->fetchAll();

            if (count($result) > 0) {
                $_SESSION['reply'] = "009";
                header("location:../media?node=$movie");
            } else {
                $stmt = $conn->prepare("INSERT INTO tbl_episode_subs (item, link, language, src, episode) VALUES (?,?,?,?,?)");
                $stmt->execute([$movie, $link, $language, $label, $episode]);
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
