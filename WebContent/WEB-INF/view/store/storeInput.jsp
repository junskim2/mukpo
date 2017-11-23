<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Checkout - Laboom</title>
<link href="plugin/bootstrap/bootstrap.css" rel="stylesheet">
<link href="plugin/bootstrap/datepicker.css" rel="stylesheet">
<link href="plugin/font-awesome/font-awesome.css" rel="stylesheet">
<link href="plugin/form-field/jquery.formstyler.css" rel="stylesheet">
<link href="plugin/revolution-plugin/extralayers.css" rel="stylesheet">
<link href="plugin/revolution-plugin/settings.css" rel="stylesheet">
<link href="plugin/owl-carousel/owl.carousel.css" rel="stylesheet">
<link href="plugin/owl-carousel/owl.theme.default.css" rel="stylesheet">
<link href="plugin/slick-slider/slick-theme.css" rel="stylesheet">
<link href="plugin/magnific/magnific-popup.css" rel="stylesheet">
<link href="plugin/scroll-bar/jquery.mCustomScrollbar.css"
	rel="stylesheet">
<link href="plugin/animation/animate.min.css" rel="stylesheet">
<link href="css/theme.css" rel="stylesheet">
<link href="css/responsive.css" rel="stylesheet">
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
<style type="text/css">
.jq-selectbox__select {
	height: 30px;
	margin-left: -30px;
}

.jq-selectbox__select-text {
	line-height: 30px;
}

.jq-selectbox__trigger-arrow {
	top: 5px;
}

.button-default {
	line-height: 30px
}

.select-dropbox {
	height: 21px;
}

.button-default {
	min-width: 100px;
	padding: 0px;
}

.shop-checkout-left {
	padding: 40px 52px 34px;
}

.shop-checkout-right {
	background-color: #F4F2ED
}
</style>
</head>


<body>
	<!-- Page pre loader -->
	<div id="pre-loader">
		<div class="loader-holder">
			<div class="frame">
				<img src="images/Preloader.gif" alt="Laboom" />
			</div>
		</div>
	</div>
	<div class="wrapper">
		<!-- Start Header -->
		<!-- End Header -->
		<!-- Start Main -->
		<main>
		<div class="main-part">
			<!-- Start Breadcrumb Part -->

			<!-- End Breadcrumb Part -->
			<section style="background-color: white;"
				class="home-icon shop-cart bg-skeen">

				<div class="container">

					<div class="row">

						<div class="col-md-4 col-sm-5 col-xs-12 wow fadeInDown"
							data-wow-duration="1000ms" data-wow-delay="300ms">
							<h2>
								<img src="images/img10.png" alt="Laboom" /> &nbsp매장 등록
							</h2>

						</div>
						<div class="col-md-12 col-sm-7 col-xs-12 wow fadeInDown"
							data-wow-duration="1000ms" data-wow-delay="300ms">
							<div style="box-shadow: 4px 4px 3px #000;"
								class="shop-checkout-right">

								<div style="text-align: center;"
									class="col-md-3 col-sm-4 col-xs-12 breakfast dessert dinner wow fadeInDown"
									data-wow-duration="1000ms" data-wow-delay="300ms">
									<div
										style="margin-bottom: 20px; padding: 3px; text-align: center"
										class="shop-checkout-left">
										<img class="shop-checkout-left" src="images/plus.png" alt="" />

									</div>
									<h3>사진 등록</h3>
								</div>

								<div
									class="col-md-9 col-sm-4 col-xs-12 breakfast dessert dinner wow fadeInDown">
									<h6>사장 ID : 밍키</h6>
									<div style="border: gray solid 1px; background-color: white"
										class="shop-checkout-right">

										<div class="col-md-5 col-sm-12 col-xs-12">
											<input
												style="height: 30px; margin-bottom: 20px; margin-left: -30px; font-size: 15px;"
												type="text" name="txt" placeholder="사업자 등록 번호"
												class="input-fields">
										</div>
										<p style="text-align: center">시간 설정</p>
										<div class="col-md-5 col-sm-12 col-xs-12">
											<input
												style="height: 30px; margin-bottom: 20px; margin-left: -30px; font-size: 15px;"
												type="text" name="txt" placeholder="업소명"
												class="input-fields">
										</div>
										<div style="text-align: center"
											class="col-md-7 col-sm-12 col-xs-12">
											<input
												style="width: 60%; height: 30px; margin-bottom: 20px; margin-left: 17px; font-size: 15px;"
												type="text" name="txt" placeholder="오픈 시간"
												class="input-fields">
										</div>
										<div class="col-md-5 col-sm-12 col-xs-12">
											<input
												style="height: 30px; margin-bottom: 20px; margin-left: -30px; font-size: 15px;"
												type="text" name="txt" placeholder="전화번호"
												class="input-fields">
										</div>
										<div style="text-align: center"
											class="col-md-7 col-sm-12 col-xs-12">
											<input
												style="width: 60%; height: 30px; margin-bottom: 20px; margin-left: 17px; font-size: 15px;"
												type="text" name="txt" placeholder="마감 시간"
												class="input-fields">
										</div>
										<div class="col-md-5 col-sm-12 col-xs-12">
											<select style="margin-left: -30px" class="select-dropbox">
												<option>먹포 구분</option>
												<option>먹고 간다.</option>
												<option>포장 한다.</option>
											</select>
										</div>
										<div class="col-md-4 col-sm-12 col-xs-12">
											<input
												style="height: 30px; margin-bottom: 20px; margin-left: -5px; font-size: 15px;"
												type="text" name="txt" placeholder="우편번호"
												class="input-fields">
										</div>
										<div class="col-md-3 col-sm-12 col-xs-12">
											<input
												style="width: 127%; height: 30px; margin-bottom: 20px; margin-left: -30px; font-size: 11px;"
												type="button" name="button" value="우편번호 검색"
												class="button-default">
										</div>

										<div class="col-md-5 col-sm-12 col-xs-12">
											<select style="margin-left: -30px" class="select-dropbox">
												<option>카테고리</option>
												<option>마구간</option>
												<option>불꽃남자</option>
												<option>주온</option>
												<option>BGM</option>
												<option>해물이</option>
											</select>
										</div>
										<div class="col-md-7 col-sm-12 col-xs-12">
											<input
												style="width: 100%; height: 30px; margin-bottom: 20px; margin-left: -5px; font-size: 15px;"
												type="text" name="txt" placeholder="주소" class="input-fields">
										</div>
										<div class="col-md-12 col-sm-12 col-xs-12">
											<input
												style="width: 56%; height: 30px; margin-bottom: 20px; margin-left: 43%; font-size: 15px;"
												type="text" name="txt" placeholder="상세 주소"
												class="input-fields">
										</div>
										<div style="text-align:right" class="col-md-12 col-sm-12 col-xs-12">
										<a href="#" class="btn-main btn-shadow">뒤로가기</a>
										<a href="#" class="btn-main btn-shadow">초기화</a>
										<a href="#" class="btn-main btn-shadow">등록</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
		</div>
		</main>
		<!-- End Main -->
		<!-- Start Footer -->

		<!-- End Footer -->
		<!-- Start Book Table -->
		<div class="modal fade booktable" id="booktable" tabindex="-1"
			role="dialog" aria-labelledby="booktable">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-body">
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						<div class="table-title">
							<h2>Reservation</h2>
							<h6 class="heade-xs">Lorem ipsum dolor sit amet, consectetur
								adipiscing elit.</h6>
						</div>
						<div class="row">
							<div class="col-md-6 col-sm-6 col-xs-12">
								<select class="select-dropbox">
									<option>Hour</option>
									<option>1</option>
									<option>2</option>
									<option>3</option>
									<option>4</option>
									<option>5</option>
								</select>
							</div>
							<div class="col-md-6 col-sm-6 col-xs-12">
								<select class="select-dropbox">
									<option>Number of People</option>
									<option>1</option>
									<option>2</option>
									<option>3</option>
									<option>4</option>
									<option>5</option>
								</select>
							</div>
							<div class="col-md-6 col-sm-6 col-xs-12">
								<input type="text" name="txt" placeholder="Pick a Date"
									class="date-pick">
							</div>
							<div class="col-md-6 col-sm-6 col-xs-12">
								<input type="text" name="txt" placeholder="Phone Number">
							</div>
							<div class="col-md-12 col-sm-12 col-xs-12">
								<input type="email" name="email" placeholder="Email Address">
							</div>
							<div class="col-md-12 col-sm-12 col-xs-12">
								<button class="btn-main btn-big">BOOK A TABLE</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- End Book Table -->
	</div>
	<!-- Back To Top Arrow -->
	<a href="#" class="top-arrow"></a>
	<script src="js/jquery.min.js"></script>
	<script src="plugin/bootstrap/bootstrap.min.js"></script>
	<script src="plugin/bootstrap/bootstrap-datepicker.js"></script>
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAf6My1Jfdi1Fmj-DUmX_CcNOZ6FLkQ4Os"></script>
	<script src="plugin/form-field/jquery.formstyler.min.js"></script>
	<script src="plugin/revolution-plugin/jquery.themepunch.plugins.min.js"></script>
	<script
		src="plugin/revolution-plugin/jquery.themepunch.revolution.min.js"></script>
	<script src="plugin/owl-carousel/owl.carousel.min.js"></script>
	<script src="plugin/slick-slider/slick.min.js"></script>
	<script src="plugin/isotop/isotop.js"></script>
	<script src="plugin/isotop/packery-mode.pkgd.min.js"></script>
	<script src="plugin/magnific/jquery.magnific-popup.min.js"></script>
	<script src="plugin/scroll-bar/jquery.mCustomScrollbar.concat.min.js"></script>
	<script src="plugin/animation/wow.min.js"></script>
	<script src="plugin/parallax/jquery.stellar.js"></script>
	<script src="js/app.js"></script>
	<script src="js/script.js"></script>
</body>

</html>