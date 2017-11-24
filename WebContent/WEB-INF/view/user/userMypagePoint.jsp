<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Mypage -point</title>
<link href="/plugin/bootstrap/bootstrap.css" rel="stylesheet">
<link href="/plugin/bootstrap/datepicker.css" rel="stylesheet">
<link href="/plugin/font-awesome/font-awesome.css" rel="stylesheet">
<link href="/plugin/form-field/jquery.formstyler.css" rel="stylesheet">
<link href="/plugin/revolution-plugin/extralayers.css" rel="stylesheet">
<link href="/plugin/revolution-plugin/settings.css" rel="stylesheet">
<link href="/plugin/owl-carousel/owl.carousel.css" rel="stylesheet">
<link href="/plugin/owl-carousel/owl.theme.default.css" rel="stylesheet">
<link href="/plugin/slick-slider/slick-theme.css" rel="stylesheet">
<link href="/plugin/magnific/magnific-popup.css" rel="stylesheet">
<link href="/plugin/scroll-bar/jquery.mCustomScrollbar.css"
	rel="stylesheet">
<link href="/plugin/animation/animate.min.css" rel="stylesheet">
<link href="/css/theme.css" rel="stylesheet">
<link href="/css/responsive.css" rel="stylesheet">
<link href="/css/user/userMypage.css" rel="stylesheet">
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>
	<!-- Page pre loader -->
	<div id="pre-loader">
		<div class="loader-holder">
			<div class="frame">
				<img src="/images/Preloader.gif" alt="Laboom" />
			</div>
		</div>
	</div>
	<div class="wrapper">

		<!-- Start Main -->
		<main>
		<div class="main-part">
			<section class="home-icon shop-cart bg-skeen">
				<div class="icon-default icon-skeen">
					<img src="/images/scroll-arrow.png" alt="">
				</div>
				<div class="container">
					<div class="shop-cart-list wow fadeInDown"
						data-wow-duration="1000ms" data-wow-delay="300ms">
						
						<div class="col-md-12 col-sm-6 col-xs-12" id="calendarsearch">
						<strong>일자별</strong>
                                <input type="text" name="txt" placeholder="Pick a Date" class="date-pick" id="calendarstart" >
                                <strong>-</strong>
                                <input type="text" name="txt" placeholder="Pick a Date" class="date-pick" id="calendarend" >
                            </div>
						<table class="shop-cart-table">
							<thead>
								<tr>
									<th>구분</th>
									<th>이용매장</th>
									<th>금액</th>
									<th>날짜</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th>구분</th>
									<td>
										<span>사용</span>
									</td>
									<th>이용매장</th>
									<td>밍키의 눈칫밥상</td>
									<th>금액</th>
									<td>
										<div class="price-textbox">$59</div>
									</td>
									<th>날짜</th>
									<td>2017-11-23 15:57:50</td>
								</tr>
							</tbody>
						</table>
						<div class="product-cart-detail">
							<a href="#" class="btn-medium btn-dark-coffee">Apply Coupon</a>
						</div>
					</div>
				</div>
			</section>
		</div>
		</main>
		<!-- End Main -->

	</div>
	<!-- Back To Top Arrow -->
	<a href="#" class="top-arrow"></a>
	<script src="/js/jquery.min.js"></script>
	<script src="/plugin/bootstrap/bootstrap.min.js"></script>
	<script src="/plugin/bootstrap/bootstrap-datepicker.js"></script>
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAf6My1Jfdi1Fmj-DUmX_CcNOZ6FLkQ4Os"></script>
	<script src="/plugin/form-field/jquery.formstyler.min.js"></script>
	<script
		src="/plugin/revolution-plugin/jquery.themepunch.plugins.min.js"></script>
	<script
		src="/plugin/revolution-plugin/jquery.themepunch.revolution.min.js"></script>
	<script src="/plugin/owl-carousel/owl.carousel.min.js"></script>
	<script src="/plugin/slick-slider/slick.min.js"></script>
	<script src="/plugin/isotop/isotop.js"></script>
	<script src="/plugin/isotop/packery-mode.pkgd.min.js"></script>
	<script src="/plugin/magnific/jquery.magnific-popup.min.js"></script>
	<script src="/plugin/scroll-bar/jquery.mCustomScrollbar.concat.min.js"></script>
	<script src="/plugin/animation/wow.min.js"></script>
	<script src="/plugin/parallax/jquery.stellar.js"></script>
	<script src="/js/app.js"></script>
	<script src="/js/script.js"></script>
</body>
</html>