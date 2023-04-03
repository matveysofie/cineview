<?php
session_start();
require_once('../db/config.php');
require_once('../const/web-info.php');
require_once('../const/check_session.php');
switch ($res) {
	case '0':
		$_SESSION['reply'] = "006";
		header("location:../login");
		break;

	case '2':
		$_SESSION['reply'] = "005";
		header("location:../login");
		break;

	case '3':
		$_SESSION['reply'] = "007";
		header("location:../login");
		break;
}

if ($role == "admin") {
} else {
	$_SESSION['reply'] = "008";
	header("location:../login");
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="stylesheet" href="css/bootstrap-reboot.min.css">
	<link rel="stylesheet" href="css/bootstrap-grid.min.css">
	<link rel="stylesheet" href="css/magnific-popup.css">
	<link rel="stylesheet" href="css/select2.min.css">
	<link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="../plugins/datatable/css/jquery.dataTables.min.css">
	<link type="text/css" rel="stylesheet" href="../plugins/loader/waitMe.css">
	<link rel="icon" href="../icon/<?php echo AppIcon; ?>" sizes="32x32">
	<meta name="description" content="<?php echo AppDesc; ?>">
	<meta name="author" content="Sonya Matveeva">
	<title><?php echo AppName; ?> – Add New Item</title>
</head>

<body>
	<header class="header">
		<div class="header__content">
			<a href="../" class="header__logo">
				<img class="inner_logo" src="../img/<?php echo AppLogo; ?>" alt="">
			</a>
			<button class="header__btn" type="button">
				<span></span>
				<span></span>
				<span></span>
			</button>
		</div>
	</header>
	<div class="sidebar">
		<a href="../" class="sidebar__logo">
			<img class="inner_logo" src="../img/<?php echo AppLogo; ?>" alt="">
		</a>
		<div class="sidebar__user">
			<div class="sidebar__user-img">
				<img class="profile_in" src="../img/users/<?php echo $image; ?>" alt="">
			</div>
			<div class="sidebar__user-title">
				<span>Website Admin</span>
				<p><?php echo $rusername; ?></p>
			</div>
			<a class="sidebar__user-btn" href="../logout">
				<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
					<path d="M4,12a1,1,0,0,0,1,1h7.59l-2.3,2.29a1,1,0,0,0,0,1.42,1,1,0,0,0,1.42,0l4-4a1,1,0,0,0,.21-.33,1,1,0,0,0,0-.76,1,1,0,0,0-.21-.33l-4-4a1,1,0,1,0-1.42,1.42L12.59,11H5A1,1,0,0,0,4,12ZM17,2H7A3,3,0,0,0,4,5V8A1,1,0,0,0,6,8V5A1,1,0,0,1,7,4H17a1,1,0,0,1,1,1V19a1,1,0,0,1-1,1H7a1,1,0,0,1-1-1V16a1,1,0,0,0-2,0v3a3,3,0,0,0,3,3H17a3,3,0,0,0,3-3V5A3,3,0,0,0,17,2Z" />
				</svg>
			</a>
		</div>
		<ul class="sidebar__nav">
			<li class="sidebar__nav-item">
				<a href="./" class="sidebar__nav-link"><i class="side_icon feather icon-home"></i> <span>Dashboard</span></a>
			</li>
			<li class="sidebar__nav-item">
				<a href="catalog" class="sidebar__nav-link"><i class="side_icon feather icon-grid"></i> <span>Catalog</span></a>
			</li>
			<li class="sidebar__nav-item">
				<a href="genre" class="sidebar__nav-link"><i class="side_icon feather icon-layers"></i> <span>Genres</span></a>
			</li>
			<li class="sidebar__nav-item">
				<a href="plans" class="sidebar__nav-link "><i class="side_icon feather icon-box"></i> <span>Pricing Plans</span></a>
			</li>
			<li class="sidebar__nav-item">
				<a href="coupons" class="sidebar__nav-link "><i class="side_icon feather icon-gift"></i> <span>Coupons</span></a>
			</li>
			<li class="sidebar__nav-item">
				<a href="users" class="sidebar__nav-link "><i class="side_icon feather icon-users"></i> <span>Users</span></a>
			</li>
			<li class="sidebar__nav-item">
				<a href="comments" class="sidebar__nav-link "><i class="side_icon feather icon-message-square"></i> <span>Comments</span></a>
			</li>
			<li class="sidebar__nav-item">
				<a href="reviews" class="sidebar__nav-link "><i class="side_icon feather icon-star"></i> <span>Reviews</span></a>
			</li>
			<li class="sidebar__nav-item">
				<a href="smtp" class="sidebar__nav-link "><i class="side_icon feather icon-mail"></i> <span>SMTP Settings</span></a>
			</li>
			<li class="sidebar__nav-item">
				<a href="account" class="sidebar__nav-link "><i class="side_icon feather icon-user"></i> <span>Account Settings</span></a>
			</li>
			<li class="sidebar__nav-item">
				<a href="payment_gateways" class="sidebar__nav-link "><i class="side_icon feather icon-credit-card"></i> <span>Payment Gateways</span></a>
			</li>
			<li class="sidebar__nav-item">
				<a href="settings" class="sidebar__nav-link "><i class="side_icon feather icon-settings"></i> <span>General Settings</span></a>
			</li>
			<li class="sidebar__nav-item">
				<a href="more_settings" class="sidebar__nav-link"><i class="side_icon feather icon-life-buoy"></i> <span>Additional Settings</span></a>
			</li>
			<li class="sidebar__nav-item">
				<a href="../" class="sidebar__nav-link "><i class="side_icon feather icon-arrow-left-circle"></i> <span>Back to <?php echo AppName; ?></span></a>
			</li>
		</ul>
		<div class="sidebar__copyright">© <?php echo AppName; ?>, <?php echo date('Y'); ?>. <br>Developed by <a href="https://www.instagram.com/matveys_/" target="_blank">Sonya Matveeva</a></div>
	</div>
	<main class="main">
		<div class="container-fluid">
			<div class="row">
				<div class="col-12">
					<div class="main__title">
						<h2>Add New Item</h2>
					</div>
				</div>
				<div class="col-12">
					<form id="app_frm_c" action="core/new_item" method="POST" autocomplete="OFF" class="form" enctype="multipart/form-data">
						<div class="row">
							<div class="col-12 col-md-5 form__cover">
								<div class="row">
									<div class="col-12 col-sm-6 col-md-12">
										<div class="form__img">
											<label for="form__img-upload">Upload cover (190 x 270)</label>
											<input required id="form__img-upload" name="form__img-upload" type="file" accept=".png, .jpg, .jpeg">
											<img id="form__img" src="#" alt=" ">
										</div>
									</div>
								</div>
							</div>
							<div class="col-12 col-md-7 form__content">
								<div class="row">
									<div class="col-12">
										<div class="form__group">
											<input required name="title" type="text" class="form__input txt-cap" placeholder="Title">
										</div>
									</div>
									<div class="col-12">
										<div class="form__group">
											<textarea id="text" name="description" required class="form__textarea" placeholder="Description"></textarea>
										</div>
									</div>
									<div class="col-12 col-sm-6 col-lg-3">
										<div class="form__group">
											<input name="year" type="text" required class="form__input" placeholder="Release year">
										</div>
									</div>
									<div class="col-12 col-sm-6 col-lg-3">
										<div class="form__group">
											<input name="running_time" required type="text" class="form__input" placeholder="Running time">
										</div>
									</div>
									<div class="col-12 col-sm-6 col-lg-3">
										<div class="form__group">
											<select name="plan_type" required class="js-example-basic-single" id="quality">
												<option value="Free">Free Plan</option>
												<option value="Paid">Paid Plan</option>
											</select>
										</div>
									</div>
									<div class="col-12 col-sm-6 col-lg-3">
										<div class="form__group">
											<input name="age" required type="text" class="form__input" placeholder="Age">
										</div>
									</div>
									<div class="col-12 col-lg-6">
										<div class="form__group">
											<select id="country" class="js-example-basic-multiple" required name="up_type">
												<option value="Movie">Movie</option>
												<option value="Show">TV Show / Series</option>
											</select>
										</div>
									</div>
									<div class="col-12 col-lg-6">
										<div class="form__group">
											<select class="js-example-basic-multiple" name="genre" required id="genre" multiple="multiple">
												<?php
												try {
													$conn = new PDO('mysql:host=' . DBHost . ';dbname=' . DBName . ';charset=' . DBCharset . ';collation=' . DBCollation . ';prefix=' . DBPrefix . '', DBUser, DBPass);
													$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
													$stmt = $conn->prepare("SELECT * FROM tbl_genres ORDER BY genre");
													$stmt->execute();
													$result = $stmt->fetchAll();
													foreach ($result as $row) {
												?>
														<option value="<?php echo $row[1]; ?>"><?php echo $row[1]; ?></option>
												<?php
													}
												} catch (PDOException $e) {
													echo "Connection failed: " . $e->getMessage();
												}

												?>
											</select>
										</div>
									</div>
									<div class="col-6">
										<div class="form__gallery">
											<label id="gallery1" for="form__gallery-upload">Upload Thumbnail</label>
											<input data-name="#gallery1" id="form__gallery-upload" name="gallery" required class="form__gallery-upload" type="file" accept=".png, .jpg, .jpeg">
										</div>
									</div>
									<div class="col-6">
										<div class="form__group">
											<input name="trailer" type="text" class="form__input" placeholder="Youtube Trailer Link *optional*">
										</div>
									</div>
								</div>
							</div>
							<div id="genre_list">
							</div>
							<div class="col-12">
								<div class="row">
									<div class="col-12">
										<button name="submit" value="1" type="submit" class="form__btn">Continue</button>
									</div>
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</main>
	<script src="js/jquery-3.5.1.min.js"></script>
	<script src="js/bootstrap.bundle.min.js"></script>
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/smooth-scrollbar.js"></script>
	<script src="js/select2.min.js"></script>
	<script src="js/admin.js"></script>
	<script src="../plugins/datatable/js/jquery.dataTables.min.js"></script>
	<script src="../plugins/loader/waitMe.js"></script>
	<script src="../js/forms.js"></script>
</body>

</html>