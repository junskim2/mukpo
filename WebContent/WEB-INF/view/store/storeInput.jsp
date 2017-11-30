<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Checkout - Laboom</title>
<link href="/plugin/bootstrap/bootstrap_copy.css" rel="stylesheet">
<link href="/plugin/bootstrap/datepicker.css" rel="stylesheet">
<link href="/plugin/font-awesome/font-awesome.css" rel="stylesheet">
<link href="/plugin/form-field/jquery.formstyler_copy.css"
	rel="stylesheet">
<link href="/plugin/revolution-plugin/extralayers.css" rel="stylesheet">
<link href="/plugin/revolution-plugin/settings.css" rel="stylesheet">
<link href="/plugin/owl-carousel/owl.carousel.css" rel="stylesheet">
<link href="/plugin/owl-carousel/owl.theme.default.css" rel="stylesheet">
<link href="/plugin/slick-slider/slick-theme.css" rel="stylesheet">
<link href="/plugin/magnific/magnific-popup.css" rel="stylesheet">
<link href="/plugin/scroll-bar/jquery.mCustomScrollbar.css"
	rel="stylesheet">
<link href="/plugin/animation/animate.min.css" rel="stylesheet">
<link href="/css/store/storeInput.css" rel="stylesheet">
<link href="/css/responsive.css" rel="stylesheet">
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>
	<div class="wrapper">
		<!-- Start Header -->
		<!-- End Header -->
		<!-- Start Main -->
		<main>
		<div class="main-part">
			<section class="home-icon shop-cart bg-skeen">
				<div class="container">
					<div class="row">

						<div class="col-md-9 col-sm-12 col-xs-12 wow fadeInDown maindiv"
							data-wow-duration="1000ms" data-wow-delay="300ms">
							<h3>
								<img src="/images/img10.png" alt="Laboom" /> &nbsp매장 등록
							</h3>

							<div class="col-md-12 col-sm-12 col-xs-12">
								<div class="shop-checkout-left">

									<form class="form-checkout" name="form" method="post">
										<div class="col-md-4 col-sm-12 col-xs-12 image">
											<img src="/images/plus.png" alt="" />
											<h6>매장 사진</h6>
										</div>

										<input type="hidden" value="${bossVO.bId}" name="bId">
										<div class="row">

											<div class="col-md-7 col-sm-12 col-xs-12">
												<h4>사장님 ID : ${bossVO.bId}</h4>
												<div class="col-md-12 col-sm-12 col-xs-12 storeinfo">
													<h5>매장 정보</h5>
												</div>
												<div class="col-md-12 col-sm-12 col-xs-12">
													<input type="text" name="rCid" placeholder="사업자등록번호">
												</div>
												<div class="col-md-12 col-sm-12 col-xs-12">
													<input type="text" name="sName" placeholder="업소명">
												</div>
												<div class="col-md-12 col-sm-12 col-xs-12">
													<input type="text" name="sPw" placeholder="비밀번호">
												</div>
											</div>
											<div class="col-md-12 col-sm-12 col-xs-12">
												<div class="col-md-6 col-sm-12 col-xs-12">
													<input type="text" name="sOpentime" placeholder="오픈시간">
												</div>
												<div class="col-md-6 col-sm-12 col-xs-12">
													<input type="text" name="sClosetime" placeholder="마감시간">
												</div>
												<div class="col-md-12 col-sm-12 col-xs-12">
													<textarea name="sDetail" placeholder="매장 설명"></textarea>
												</div>
												<div class="col-md-12 col-sm-12 col-xs-12 storeinfo">
													<h5>카테고리 선택</h5>
												</div>
												<div class="col-md-4 col-sm-12 col-xs-12">
													<select class="select-dropbox">
														<option>한식</option>
														<option>분식</option>
														<option>일식</option>
														<option>중식</option>
														<option>양식</option>
														<option>패스트푸드</option>
														<option>카페</option>
														<option>뷔페식</option>
													</select>
												</div>
												<div class="col-md-8 col-sm-12 col-xs-12"></div>

												<div class="col-md-6 col-sm-12 col-xs-12">
													<input type="text" name="sZipcode" placeholder="우편번호">
												</div>
												<div class="col-md-6 col-sm-12 col-xs-12">
													<input type="button" name="submit" value="우편번호 검색"
														class="button-default button-default-submit btn">
												</div>
												<div class="col-md-7 col-sm-12 col-xs-12">
													<input type="text" name="sAddress" placeholder="주소">
												</div>
												<div class="col-md-9 col-sm-12 col-xs-12">
													<input type="text" name="sSido" placeholder="상세주소">
												</div>
												<div class="col-md-12 col-sm-12 col-xs-12 storeinfo">
													<h5>휴무일 선택</h5>
												</div>
												<div class="col-md-12 col-sm-12 col-xs-12">
													<label> <input type="checkbox" name="checkbox">월
													</label> <label> <input type="checkbox" name="checkbox">화
													</label> <label> <input type="checkbox" name="checkbox">수
													</label> <label> <input type="checkbox" name="checkbox">목
													</label> <label> <input type="checkbox" name="checkbox">금
													</label> <label> <input type="checkbox" name="checkbox">토
													</label> <label> <input type="checkbox" name="checkbox">일
													</label>
												</div>
												<div class="col-md-12 col-sm-12 col-xs-12 storeinfo">
													<h5>먹포 선택</h5>
												</div>
												<div class="col-md-6 col-sm-12 col-xs-12">
													<select class="select-dropbox">
														<option>먹고 간다.</option>
														<option>포장 한다.</option>
														<option>둘다 한다.</option>
													</select>
												</div>
												<div class="col-md-12 col-sm-12 col-xs-12 storeinfo">
													<h5>매장 테이블 정보</h5>
												</div>
												<div class="col-md-12 col-sm-12 col-xs-12 storeinfo">
													<div class="col-md-3 col-sm-12 col-xs-12">
														<h6>매장 테이블 갯수</h6>
														<select class="select-dropbox">
															<option>0</option>
															<option>1</option>
															<option>2</option>
															<option>3</option>
															<option>4</option>
															<option>5</option>
															<option>6</option>
															<option>7</option>
															<option>8</option>
															<option>9</option>
															<option>10</option>
															<option>11</option>
															<option>12</option>
														</select>
													</div>
													<div class="col-md-4 col-sm-12 col-xs-12">
														<h6>테이블당 인원수</h6>
														<input type="text" name="t_max" placeholder="테이블당 최대 인원">
													</div>
												</div>
												<div class="col-md-12 col-sm-12 col-xs-12 storeinfo">
													<h5>매장 혼잡도 설정</h5>
												</div>
												<div class="col-md-12 col-sm-12 col-xs-12 storeinfo2">
													<h6>여유</h6>
													<div class="col-md-3 col-sm-12 col-xs-12">
														<input type="text" name="t_max" placeholder="주문건수">
													</div>
													<div class="col-md-3 col-sm-12 col-xs-12">
														<select class="select-dropbox">
															<option>0분</option>
															<option>10분</option>
															<option>20분</option>
															<option>30분</option>
															<option>40분</option>
															<option>50분</option>
															<option>60분</option>
														</select>
													</div>
												</div>
												<div class="col-md-12 col-sm-12 col-xs-12 storeinfo2">
													<h6>보통</h6>
													<div class="col-md-3 col-sm-12 col-xs-12">
														<input type="text" name="t_max" placeholder="주문건수">
													</div>
													<div class="col-md-3 col-sm-12 col-xs-12">
														<select class="select-dropbox">
															<option>0분</option>
															<option>10분</option>
															<option>20분</option>
															<option>30분</option>
															<option>40분</option>
															<option>50분</option>
															<option>60분</option>
														</select>
													</div>
												</div>
												<div class="col-md-12 col-sm-12 col-xs-12 storeinfo2">
													<h6>혼잡</h6>
													<div class="col-md-3 col-sm-12 col-xs-12">
														<input type="text" name="t_max" placeholder="주문건수">
													</div>
													<div class="col-md-3 col-sm-12 col-xs-12">
														<select class="select-dropbox">
															<option>0분</option>
															<option>10분</option>
															<option>20분</option>
															<option>30분</option>
															<option>40분</option>
															<option>50분</option>
															<option>60분</option>
														</select>
													</div>
												</div>
											</div>
											<div class="col-md-12 col-sm-12 col-xs-12 storeinfo2">
												<a href="storeMain.do" class="button-default button-default-submit btn">뒤로가기</a>
												<a href="javascript:store.submit();" class="button-default button-default-submit btn">등록</a>
											</div>
									</form>
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
	</div>
	<!-- Back To Top Arrow -->
	<a href="#" class="top-arrow"></a>
	<script src="/js/jquery.min.js"></script>
	<script src="/plugin/bootstrap/bootstrap.min.js"></script>
	<script src="/plugin/bootstrap/bootstrap-datepicker.js"></script>
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAf6My1Jfdi1Fmj-DUmX_CcNOZ6FLkQ4Os"></script>
	<script src="/plugin/form-field/jquery.formstyler.min.js"></script>
	<script src="/plugin/revolution-plugin/jquery.themepunch.plugins.min.js"></script>
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