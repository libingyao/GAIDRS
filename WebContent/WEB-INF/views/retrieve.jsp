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

<link rel="stylesheet" type="text/css" href="ui/css/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="ui/css/themes/icon.css">

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
							<form class="form-wrap mt-4" action="retrieve.do" method="post">
									<input type="text" name="dataSource" placeholder="数据集" style="height:65px" size="15">
									<input type="text" name="ra" placeholder="赤经" style="height:65px" size="15">
									<input type="text" name="dec" placeholder="赤纬" style="height:65px" size="15">
									<input type="text" name="xsize" placeholder="天区大小X_SIZE" style="height:65px" size="15" style="float: center">
									<input type="text" name="ysize" placeholder="天区大小Y_SIZE" style="height:65px" size="15">
									<input type="text" name="startTime" id="startTime" class="easyui-datebox" placeholder="开始时间"  style="height:65px" size="15" data-options="formatter:myformatter,parser:myparser">
									<input type="text" name="endTime" id="endTime" class="easyui-datebox" placeholder="结束时间" style="height:65px" align="center" size="15" data-options="formatter:myformatter,parser:myparser">
									<button type="submit" size="15" class="btn-form">
											<span class="icon-magnifier search-icon"></span>检索<iclass="pe-7s-angle-right"></i>
									</button>
							</form>
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
    <script type="text/javascript" src="ui/js/jquery.min.js"></script>
    <script type="text/javascript" src="ui/js/jquery.easyui.min.js"></script>
     <script language="javascript" type="text/javascript"  src="ui/js/WdatePicker.js"></script>
	<script>
	$(document).ready(function(){
		$("startTime").datebox();
	});
	</script>

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
    <script type="text/javascript">
		function myformatter(date){
			var y = date.getFullYear();
			var m = date.getMonth()+1;
			var d = date.getDate();
			return y+'-'+(m<10?('0'+m):m)+'-'+(d<10?('0'+d):d);
		}
		function myparser(s){
			if (!s) return new Date();
			var ss = (s.split('-'));
			var y = parseInt(ss[0],10);
			var m = parseInt(ss[1],10);
			var d = parseInt(ss[2],10);
			if (!isNaN(y) && !isNaN(m) && !isNaN(d)){
				return new Date(y,m-1,d);
			} else {
				return new Date();
			}
		}
	</script>
	<script>
        $(function () {
            $('#startTime').datebox('textbox').attr('placeholder', '起始时间');
        });
        $(function () {
            $('#endTime').datebox('textbox').attr('placeholder', '终止时间');
        });
    </script>
</body>

</html>
