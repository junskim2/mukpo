<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>먹포 - 테이블 예약</title>
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
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript">
	$(function() {
		$("#reserveTable").click(function() {
			location.href = "reserveMPayment.do";
		});
	});
</script>
</head>
<body>
	<!--  <div class="modal fade booktable" id="booktable" tabindex="-1" role="dialog" aria-labelledby="booktable"> -->
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-body">
				<button type="button" id="clo" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>

				<div class="table-title">
					<h2>먹고갈꺼니?</h2>
					<h6 class="heade-xs">잘생각 했어 b</h6>
				</div>
				<form action="/reserve/reserveMPayment.do" method="post">
					<!-- 사업자등록번호 -->
					<input type="hidden" name="rCid" value="${ reserveInfo.rCid }" />
					<div class="row">
						<div class="col-md-6 col-sm-6 col-xs-12">

							<input type="hidden" name="rTnum" value="${ reserveInfo.rTnum }"
								class="" /> <input type="text" name="rDate" placeholder="예약날짜"
								class="date-pick"> <input type="text" name="rTime"
								placeholder="시간" class="" value="" /> <input type="text"
								name="rPnum" placeholder="인원수" class="" value="" /> <input
								type="text" name="rTel" placeholder="전화번호" class="" value="" />
							<input type="text" name="rName" placeholder="이름" class=""
								value="" />
						</div>
						<div class="col-md-6 col-sm-6 col-xs-12">
							<div>
								<img src="/images/img2.png" style="width: 400px; height: 360px;">
							</div>
						</div>
						<div class="col-md-12 col-sm-12 col-xs-12">
							<input type="text" name="rMemo" placeholder="요청사항"
								style="width: 100%;" value="" /> <br /> <input type="submit"
								value="예약" id="reserveTable" style="width: 100%;"
								class="btn-main btn-big" />
						</div>
					</div>
				</form>
			</div>
		</div>
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