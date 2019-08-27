<!doctype html>
<html lang="zxx">

<?php 
	session_start();
?>

<head>
	<!-- Required meta tags -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<title>ecobit</title>
	<link rel="icon" href="img/favicon.png">
	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<!-- animate CSS -->
	<link rel="stylesheet" href="css/animate.css">
	<!-- owl carousel CSS -->
	<link rel="stylesheet" href="css/owl.carousel.min.css">
	<!-- font awesome CSS -->
	<link rel="stylesheet" href="css/all.css">
	<!-- flaticon CSS -->
	<link rel="stylesheet" href="css/flaticon.css">
	<link rel="stylesheet" href="css/themify-icons.css">
	<link rel="stylesheet" href="css/nice-select.css">
	<!-- font awesome CSS -->
	<link rel="stylesheet" href="css/magnific-popup.css">
	<!-- swiper CSS -->
	<link rel="stylesheet" href="css/slick.css">
	<!-- style CSS -->
	<link rel="stylesheet" href="css/style.css">
</head>

<body>
	<!--::header part start::-->
	<header class="main_menu single_page_menu">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-lg-12">
					<nav class="navbar navbar-expand-lg navbar-light">
						<a class="navbar-brand" href="index.html"> <img src="img/logo.png" alt="logo">
						</a>
						<button class="navbar-toggler" type="button" data-toggle="collapse"
							data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
							aria-expanded="false" aria-label="Toggle navigation">
							<span class="menu_icon"></span>
						</button>

						<div class="collapse navbar-collapse main-menu-item" id="navbarSupportedContent">
							<ul class="navbar-nav">
								<li class="nav-item">
									<a class="nav-link" href="index.php">Home</a>
								</li>
								<li class="nav-item">
									<a class="nav-link" href="index.php#features">features</a>
								</li>
								<li class="nav-item">
									<a class="nav-link" href="index.php#teams">teams</a>
								</li>
								<!--<li class="nav-item dropdown">
									<a class="nav-link dropdown-toggle" href="blog.html" id="navbarDropdown"
										role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
										Blog
									</a>
									<div class="dropdown-menu" aria-labelledby="navbarDropdown">
										<a class="dropdown-item" href="blog.html"> blog</a>
										<a class="dropdown-item" href="single-blog.html">Single blog</a>
									</div>
								</li>-->
								<li class="nav-item dropdown">
									<a class="nav-link dropdown-toggle" href="blog.html" id="navbarDropdown1"
										role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
										pages
									</a>
									<div class="dropdown-menu" aria-labelledby="navbarDropdown1">
										<a class="dropdown-item" href="dashboard.php">Dashboard</a>
										<a class="dropdown-item" href="prediction.php">IPL Prediction</a>
									</div>
								</li>
								<li class="nav-item">
										<a href="#" class="nav-link">Welcome <?php echo $_SESSION['user_name'];?></a>
								</li>
							</ul>
						</div>
						<a href="login.html" class="d-none d-sm-block btn_1">sign out</a>
					</nav>
				</div>
			</div>
		</div>
	</header>
	<!--::Header part end::-->

	<!-- breadcrumb start-->
	<section class="breadcrumb breadcrumb_bg">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="breadcrumb_iner text-center">
						<div class="breadcrumb_iner_item">
							<h2>Season Results</h2>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- breadcrumb start-->

	<?php

		$server = "localhost";
		$username = "root";
		$password = "";
        $dbname = "ipl_test";
        
        $season = $_GET['season'];

		$conn = mysqli_connect($server, $username, $password, $dbname);

		$uid = $_SESSION['uid'];

		if($conn){
            $sql = "SELECT * FROM season_".$season;
            $result = mysqli_query($conn, $sql);
            echo "<br><br><h3><u>SEASON ".$season."</u><br><br>";
            echo "<table border='2px solid black'><th>Team 1</th><th>Team 2</th><th>Match Type</th><th>Winner</th>";
            $i = 0;
            if(mysqli_num_rows($result) > 0){
                while($row = mysqli_fetch_assoc($result)){
                    if($season < 2020){
                        if($i < 60){
                            echo "<tr><td>".$row['team1']."</td>";
                            echo "<td>".$row['team2']."</td>";
                            echo "<td>Normal</td>";
                            echo "<td>".$row['predicted_winner']."</td></tr>";
                        }
                        else{
                            if($i == 60){
                                echo "<tr><td>".$row['team1']."</td>";
                                echo "<td>".$row['team2']."</td>";
                                echo "<td>Qualifier 1</td>";
                                echo "<td>".$row['predicted_winner']."</td></tr>";
                            }
                            if($i == 61){
                                echo "<tr><td>".$row['team1']."</td>";
                                echo "<td>".$row['team2']."</td>";
                                echo "<td>Eliminator</td>";
                                echo "<td>".$row['predicted_winner']."</td></tr>";
                            }
                            if($i == 62){
                                echo "<tr><td>".$row['team1']."</td>";
                                echo "<td>".$row['team2']."</td>";
                                echo "<td>Qualifier 2</td>";
                                echo "<td>".$row['predicted_winner']."</td></tr>";
                            }
                            if($i == 63){
                                echo "<tr><td>".$row['team1']."</td>";
                                echo "<td>".$row['team2']."</td>";
                                echo "<td>Finals</td>";
                                echo "<td>".$row['predicted_winner']."</td></tr>";
                            }
                        }
                    }
                    else{
                        if($i < 56){
                            echo "<tr><td>".$row['team1']."</td>";
                            echo "<td>".$row['team2']."</td>";
                            echo "<td>Normal</td>";
                            echo "<td>".$row['predicted_winner']."</td></tr>";
                        }
                        else{
                            if($i == 56){
                                echo "<tr><td>".$row['team1']."</td>";
                                echo "<td>".$row['team2']."</td>";
                                echo "<td>Qualifier 1</td>";
                                echo "<td>".$row['predicted_winner']."</td></tr>";
                            }
                            if($i == 57){
                                echo "<tr><td>".$row['team1']."</td>";
                                echo "<td>".$row['team2']."</td>";
                                echo "<td>Eliminator</td>";
                                echo "<td>".$row['predicted_winner']."</td></tr>";
                            }
                            if($i == 58){
                                echo "<tr><td>".$row['team1']."</td>";
                                echo "<td>".$row['team2']."</td>";
                                echo "<td>Qualifier 2</td>";
                                echo "<td>".$row['predicted_winner']."</td></tr>";
                            }
                            if($i == 59){
                                echo "<tr><td>".$row['team1']."</td>";
                                echo "<td>".$row['team2']."</td>";
                                echo "<td>Finals</td>";
                                echo "<td>".$row['predicted_winner']."</td></tr>";
                            }
                        }
                    }
                    $i = $i + 1;
                }
            }
            echo "</h3></table>";
		}
	?>

	<!--::footer_part start::-->
	<footer class="footer_part">
		<div class="container">
			<div class="row">
				<div class="col-sm-8 col-md-4 col-lg-4">
					<div class="single_footer_part">
						<a href="index.html" class="footer_logo_iner"> <img src="img/footer_logo.png" alt="#"> </a>
						<p>Gathered. Under is whose you'll to make years is mat lights thing together fish made
							forth thirds cattle behold won't. Fourth creeping first female.
						</p>
					</div>
				</div>
				<div class="col-sm-4 col-md-4 col-lg-2">
					<div class="single_footer_part">
						<h4>About Us</h4>
						<ul class="list-unstyled">
							<li><a href="">Managed Website</a></li>
							<li><a href="">Manage Reputation</a></li>
							<li><a href="">Power Tools</a></li>
							<li><a href="">Marketing Service</a></li>
							<li><a href="">Customer Service</a></li>
						</ul>
					</div>
				</div>
				<div class="col-sm-4 col-md-4 col-lg-2">
					<div class="single_footer_part">
						<h4>Quick Links</h4>
						<ul class="list-unstyled">
							<li><a href="">Store Hours</a></li>
							<li><a href="">Brand Assets</a></li>
							<li><a href="">Investor Relations</a></li>
							<li><a href="">Terms of Service</a></li>
							<li><a href="">Privacy & Policy</a></li>
						</ul>
					</div>
				</div>
				<div class="col-sm-4 col-md-4 col-lg-2">
					<div class="single_footer_part">
						<h4>My Account</h4>
						<ul class="list-unstyled">
							<li><a href="">Press Inquiries</a></li>
							<li><a href="">Media Directories</a></li>
							<li><a href="">Investor Relations</a></li>
							<li><a href="">Terms of Service</a></li>
						</ul>
					</div>
				</div>
				<div class="col-sm-4 col-md-3 col-lg-2">
					<div class="single_footer_part">
						<h4>Resources</h4>
						<ul class="list-unstyled">
							<li><a href="">Application Security</a></li>
							<li><a href="">Software Policy</a></li>
							<li><a href="">Supply Chain</a></li>
							<li><a href="">Agencies Relation</a></li>
							<li><a href="">Manage Reputation</a></li>
						</ul>
					</div>
				</div>
			</div>
			<hr>
			<div class="row">
				<div class="col-lg-8">
					<div class="copyright_text">
						<P><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="ti-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></P>
					</div>
				</div>
				<div class="col-lg-4">
					<div class="footer_icon social_icon">
						<ul class="list-unstyled">
							<li><a href="#" class="single_social_icon"><i class="fab fa-facebook-f"></i></a></li>
							<li><a href="#" class="single_social_icon"><i class="fab fa-twitter"></i></a></li>
							<li><a href="#" class="single_social_icon"><i class="fas fa-globe"></i></a></li>
							<li><a href="#" class="single_social_icon"><i class="fab fa-behance"></i></a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</footer>
	<!--::footer_part end::-->

	<!-- jquery plugins here-->
	<script src="js/jquery-1.12.1.min.js"></script>
	<!-- popper js -->
	<script src="js/popper.min.js"></script>
	<!-- bootstrap js -->
	<script src="js/bootstrap.min.js"></script>
	<!-- easing js -->
	<script src="js/jquery.magnific-popup.js"></script>
	<!-- swiper js -->
	<script src="js/swiper.min.js"></script>
	<!-- swiper js -->
	<script src="js/masonry.pkgd.js"></script>
	<!-- particles js -->
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/jquery.nice-select.min.js"></script>
	<!-- slick js -->
	<script src="js/slick.min.js"></script>
	<script src="js/jquery.counterup.min.js"></script>
	<script src="js/waypoints.min.js"></script>
	<script src="js/contact.js"></script>
	<script src="js/jquery.ajaxchimp.min.js"></script>
	<script src="js/jquery.form.js"></script>
	<script src="js/jquery.validate.min.js"></script>
	<script src="js/mail-script.js"></script>
	<!-- custom js -->
	<script src="js/custom.js"></script>
</body>

</html>