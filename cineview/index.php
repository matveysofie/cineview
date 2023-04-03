<?php
session_start();
// Функция подключения файлов, включает файл единожды 
require_once('db/config.php');
require_once('const/web-info.php');
require_once('const/check_session.php');
require_once('const/temp_browse.php');

// Конструкция выбора (проверка на авторизированного пользователя (админ/клиент))
switch ($res) {
	case '0':
		$logged = "0";
		break;
	case '1':
		$logged = "1";
		break;
	case '2':
		$logged = "0";
		break;

	case '3':
		$logged = "0";
		break;
}
// Объявление константы, которая указывает на директорию
$dir = "./";
?>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<!-- Подключение необходимых стилей -->
	<link rel="stylesheet" href="css/boot.css">
	<link rel="stylesheet" href="css/bootstrap-grid.min.css">
	<link rel="stylesheet" href="css/owl.carousel.min.css">
	<link rel="stylesheet" href="css/slider-radio.css">
	<link rel="stylesheet" href="css/select2.min.css">
	<link rel="stylesheet" href="css/magnific-popup.css">
	<link rel="stylesheet" href="css/plyr.css">
	<link rel="stylesheet" href="css/app.css">
	<link type="text/css" rel="stylesheet" href="plugins/loader/waitMe.css">
	<link rel="icon" href="icon/<?php echo AppIcon; ?>" sizes="32x32">

	<!-- Мета-теги -->
	<meta name="description" content="<?php echo AppDesc; ?>">
	<meta name="keywords" content="<?php echo AppKeywords; ?>">
	<meta name="yandex-verification" content="f83362b9fcc726ce" />
	<meta name="author" content="Sonya Matveeva">

	<!-- Заговлок страницы, установленный с помощью панели администратора -->
	<title><?php echo AppName; ?> – <?php echo AppTopTxt; ?></title>
	<?php require_once('const/cms_scripts.php'); ?>

</head>

<body>

	<!-- Подключение файлов для главной страницы -->
	<?php require_once('const/draws/header.php'); ?>
	<?php require_once('const/draws/most_views.php'); ?>
	<?php require_once('const/draws/catalog.php'); ?>
	<?php require_once('const/draws/home_pricing.php'); ?>
	<?php require_once('const/draws/footer.php'); ?>

	<!-- Подключени необходимых скриптов -->
	<script src="js/jquery-3.5.1.min.js"></script>
	<script src="plugins/loader/waitMe.js"></script>
	<script src="js/bootstrap.bundle.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/slider-radio.js"></script>
	<script src="js/select2.min.js"></script>
	<script src="js/smooth-scrollbar.js"></script>
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/plyr.min.js"></script>
	<script src="js/main.js"></script>
	<script src="js/home_catalog.js"></script>
</body>

</html>