<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="author" content="Colorlib">
<meta name="description" content="#">
<meta name="keywords" content="#">
<!-- Page Title -->
<title>Listing &amp; Directory Website Template</title>
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="ui/css/bootstrap.min.css">
<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,400i,500,700,900"
	rel="stylesheet">
<!-- Simple line Icon -->
<link rel="stylesheet" href="ui/css/simple-line-icons.css">
<!-- Themify Icon -->
<link rel="stylesheet" href="ui/css/themify-icons.css">
<!-- Hover Effects -->
<link rel="stylesheet" href="ui/css/set1.css">
<!-- Main CSS -->
<link rel="stylesheet" href="ui/css/style.css">
</head>

<body>
	<!--============================= HEADER =============================-->
	<div class="nav-menu">
		<div class="bg transition">
			<div class="container-fluid fixed">
				<div class="row">
					<div class="col-md-12">
						<nav class="navbar navbar-expand-lg navbar-light">
							<a class="navbar-brand" href="index.html">天文图像数据时序子集检索系统</a>
						</nav>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- SLIDER -->
	<section class="slider d-flex align-items-center">
		<!-- <img src="images/slider.jpg" class="img-fluid" alt="#"> -->
		<div class="container">
			<div class="container">
				<div class="row">
					<div class="col-md-4 featured-responsive">
						<div class="featured-place-wrap">
							<img src="ui/images/fig1.png" alt="#" height="300" width="200">
							<div class="featured-title-box">
								<h6>拍摄时间：2016年02月09日</h6>
							</div>
						</div>
					</div>
					<div class="col-md-4 featured-responsive">
						<div class="featured-place-wrap">
							<img src="ui/images/fig2.png" alt="#" height="300" width="200">
							<div class="featured-title-box">
								<h6>拍摄时间：2016年02月10日</h6>
							</div>
						</div>
					</div>
					<div class="col-md-4 featured-responsive">
						<div class="featured-place-wrap">
							<img src="ui/images/fig3.png" alt="#" height="300" width="200">
							<div class="featured-title-box" style="vertical-align: middle;">
								<h6>拍摄时间：2016年02月11日</h6>
							</div>
						</div>
					</div>
				</div>
				<div class="row justify-content-center">
					<div class="col-md-4">
						<div class="featured-btn-wrap">
							<div style="float: center">
								<form action="returnIndex.do" method="post">
									<button type="submit" class="btn btn-danger">检索页面</button>
								</form>
							</div>
						</div>
					</div>
					<div class="col-md-4">
						<div class="featured-btn-wrap">
							<div style="float: center">
								<form action="download.do" method="post">
									<button type="submit" class="btn btn-danger">查看全部</button>
								</form>
							</div>
						</div>
					</div>
					<div class="col-md-4">
						<div class="featured-btn-wrap">
							<div style="float: center">
								<form action="download.do" method="post">
									<button type="submit" class="btn btn-danger">下载数据</button>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--============================= FOOTER =============================-->
	<footer class="main-block dark-bg">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="copyright">

						<p>Copyright &copy; 2018 Listing. All rights reserved | made
							by TJUHPC
						<ul>
							<li><a href="#"><span class="ti-facebook"></span></a></li>
							<li><a href="#"><span class="ti-twitter-alt"></span></a></li>
							<li><a href="#"><span class="ti-instagram"></span></a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</footer>
	<!--//END FOOTER -->
	<!-- jQuery, Bootstrap JS. -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="ui/js/jquery-3.2.1.min.js"></script>
	<script src="ui/js/popper.min.js"></script>
	<script src="ui/js/bootstrap.min.js"></script>

	<script>
        $(window).scroll(function() {
            // 100 = The point you would like to fade the nav in.

            if ($(window).scrollTop() > 100) {

                $('.fixed').addClass('is-sticky');

            } else {

                $('.fixed').removeClass('is-sticky');

            };
        });
    </script>
</body>

</html>
