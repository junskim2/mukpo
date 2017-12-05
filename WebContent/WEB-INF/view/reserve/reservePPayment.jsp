<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Checkout - Laboom</title>
<%String mName[] = request.getParameterValues("mName");//메뉴 이름  %>  
<%String mCnt[] = request.getParameterValues("mCnt"); //메뉴 갯수%>
<%String mPrice[] = request.getParameterValues("mPrice"); //메뉴 가격%>
<%int total=0; //총갯수 %>
<%String id = (String)session.getAttribute("userName");  //아이디%>
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
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript">
// 	$(function() {
// 		$("#pay").click(function() {
// 			location.href="reservePaymentOk.do";
// 		});
// 	});
</script>
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
	
<!-- 1204 현희 헤더 추가 -->    
		<div class="wrapper">
        <!-- Start Header -->
        	<jsp:include page="../common/commonUserHeader.jsp"></jsp:include>
        <!-- End Header -->
	<!-- Start Main -->
	<main>
	<div class="main-part">
		<!-- Start Breadcrumb Part -->
		<!-- End Breadcrumb Part -->
		<section class="home-icon shop-cart bg-skeen">
			<div class="icon-default icon-skeen">
				<img src="/images/scroll-arrow.png" alt="">
			</div>
			<div class="container">
				<div class="checkout-wrap wow fadeInDown" data-wow-duration="1000ms"
					data-wow-delay="300ms">
					<ul class="checkout-bar">
						<li class="done-proceed">알맞은 단어</li>
						<li class="active">결제</li>
						<li>결제 완료</li>
					</ul>
				</div>
				
				<div class="row">
					<div class="col-md-3 col-sm-3 col-xs-12"></div>
					<div class="col-md-6 col-sm-6 col-xs-12 wow fadeInDown"
						data-wow-duration="1000ms" data-wow-delay="300ms">
						<div class="shop-checkout-right">
						<form action="reservePaymentOk.do" method="post">
							<div class="shop-checkout-box">
								<h5>결제 정보</h5>
								<div class="shop-checkout-title">
									<h6>
										주문내역 <span></span>
									</h6>
								</div>
<!-- 								경식추가 메뉴 리스트 -->
								<div class="shop-checkout-row">
									<%for(int i=0; i<mName.length; i++){ %>
									<p>
									<!-- 메뉴 리스트 출력 화면 윤경식 추가 -->
										<span>메뉴 명 :<%=mName[i]%> 수량 : <%=mCnt[i] %> 가격 : <%=mPrice[i] %></span>
									
									</p>
									<%
									}
									%>
								</div>
								
								<div class="checkout-total">
									<h6>
										결제금액 <small><!--총 금액  윤경식 추가  -->
										<%for(int j=0; j<mPrice.length; j++){
											total+=Integer.parseInt(mPrice[j])*Integer.parseInt(mCnt[j]);
										}
										%>
										<%=total %>원
										</small>
									</h6>
								</div>
								<div class="checkout-total">
									<div class="shop-checkout-box">
										<h5>결제 수단</h5>
										<div class="payment-mode">
											<label> <input type="radio" name="radio">포인트
												결제
											</label>
										</div>
										<div class="payment-mode">
											<label> <input type="radio" name="radio">카드
												결제
											</label>
										</div>

										<div class="checkout-button">
										<input type="hidden" name="<%=total%>" />   <!--총 금액-->
										<input type="hidden" name="<%=id%>" />		<!--아이디-->
										
											<input type="submit" id="pay" class="button-default btn-large btn-primary-gold" value="예약하기"/>
										</div>
									</div>

								</div>
							</div>
						</form>
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