<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
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

<title>首页</title>
</head>
<body>
	<section class="slider d-flex align-items-center">
		<!-- <img src="images/slider.jpg" class="img-fluid" alt="#"> -->
		<div class="container">
			<div class="row d-flex justify-content-center">
				<div class="col-md-12">
					<div class="slider-title_box">
						<div class="row">
							<div class="col-md-12">
								<div class="slider-content_wrap">
									<h1>天文图像数据时序子集检索系统</h1>
									<h5>You can retrieve astronomical image data time series
										subsets.</h5>
								</div>
							</div>
						</div>
						<div class="row d-flex justify-content-center">
							<div class="col-md-10">
								<form class="form-wrap mt-4" action="login.do" method="post">
									<div class="btn-group" role="group" aria-label="Basic example">
										<input type="text" placeholder="用户名" name="username" size="30" /><br />
										<input type="password" placeholder="密码" name="password"
											size="30" /><br />
										<button type="submit" class="btn-form">
											登录<i class="pe-7s-angle-right"></i>
										</button>
									</div>
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