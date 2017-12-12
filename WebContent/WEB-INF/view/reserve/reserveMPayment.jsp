<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%> --%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
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
<link href="/plugin/bootstrap/minwoo.css" rel="stylesheet">
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript">
	$(function() {
		// 결제 완료
		$("#pay").click(function() {
			location.href="reservePaymentOk.do";
		});
	});
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
	<!-- Start Header -->
	   	<jsp:include page="wWEBiINF/view/common/commonUserHeader.jsp"></jsp:include>
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
				<!-- 메뉴 리스트 받아오기-->
				<div class="row">
					<div class="col-md-6 col-sm-7 col-xs-12 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="300ms">
						<div class="shop-checkout-left" style="height:600px; overflow-y:scroll;">
							<h3 style="text-align: center; font-weight: bold;">메뉴 선택</h3>
							<br />
							<div class="portfolioContainer row">

								<c:forEach items="${ payMenuList }" var="menuList">
								<div class="col-md-12 col-sm-6 col-xs-12 isotope-item ${ menuList.mCate }">
								
								<div id="cart-overlay-wrap">	     
                                   <div id="cart-overlay">
                                       <input type="button" name="${menuList.mId}" class="shop-cart-btn" value="장바구니 추가"/>
                                   </div>
							  	</div>							 
						  			<div class="shop-product">
									  <div class="menu-list-copy">
						  				<img src="${ menuList.mUrl }" class="${ menuList.mUrl }" alt="" style="height:100px;  width:30%; float:left;">
						 					 <div>
						 					 <h5 class="${menuList.mId}" style="padding-top:4%; z-index:-1;"> <!--h5태그에 class값 id줘서 등록 -->
						 					 <center class="${menuList.mId}">&nbsp;&nbsp;${ menuList.mName }</center> <!-- 메뉴이름 -->
						 					 <span style="margin-top:4%;"class="${menuList.mId}"><strong>${ menuList.mPrice }</strong></span> <!-- 메뉴가격 --> 
						 					 </h5>
						 					 </div>
											 <center>${ menuList.mDetail }</center>
									  </div>
									</div>
						  		</div>
						  		</c:forEach> 
							</div>
							</div>
						</div>
					<!-- 메뉴 리스트 받아오기 끝-->
					
					<!-- 장바구니탭 -->
				<div class="row">				
				<div class="col-md-6 col-sm-7 col-xs-12 wow fadeInDown"
						data-wow-duration="1000ms" data-wow-delay="300ms">
						<div class="shop-checkout-left" style="height:600px; overflow-y:scroll; scrollbar-face-color:FFFFFF;">
							
							<form method="post" action="/reserve/reservePPayment.do">
								<div class="shop-cart-list wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="300ms" style="padding:0 !important;">
                        <div class="build-title">
				<h2>주문 메뉴</h2>
						</div>
                            <div class="menu-select">
                            <table class="shop-cart-table" style="width:100%;">
                                <thead>
                                    <tr>
                                        <th>메뉴 명</th>
                                        <th>가격</th>
                                        <th>수량</th>
                                        <th>총금액</th>
                                    </tr>
                                </thead>
                                <tbody class="menulist">
								<!-- 메뉴 추가되는부분 -->
                                </tbody>
                            </table>
                            
                            <div class="product-cart-detail">
                                <input type="button" id="goPayment" name="goPayment" class="btn-medium btn-skin pull-right" value="최종선택"/>
                                <input type="button" id="goClear" class="btn-medium btn-skin pull-right" value="전부취소"/>
                            </div>
                            </div>
                        	   </div>
			</form>
						</div>
					</div>
				</div>
				
		<!-- 예약정보 탭 -->
			<div class="col-md-5 col-sm-7 col-xs-12 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="300ms" >
						<div class="shop-checkout-right" style="height:710px;">
							<div class="shop-checkout-box">
								<h5>예약 정보</h5>
								<div class="shop-checkout-title">
									<h6>
										선택한 테이블 <span></span>
									</h6>
								</div>
								<div class="shop-checkout-row">
									<p>
										<span>${ reserveInfo.rTnum }</span>
									</p>
								</div>
								<div class="checkout-total">
									<h6>
										예약 시간 <small>${ reserveInfo.rDate } ${ reserveInfo.rTime }
										</small>
									</h6>
								</div>
								<div class="checkout-total">
									<h6>
										인원수 <small>${ reserveInfo.rPnum }명</small>
									</h6>
								</div>
								<div class="checkout-total">
									<h6>
										전화번호 <small>${ rTel }</small>
									</h6>
								</div>
								<div class="checkout-total">
									<h6>
										이름 <small>${ rName }</small>
									</h6>
								</div>
								<div class="checkout-total">
									<h6>요청사항</h6>
									<br /> <span>${ rMemo }</span>
								</div>
							</div>

						</div>
					</div>
					<!-- 예약정보 탭 끝-->
					<!-- 최종 결제정보 탭 -->
					<div class="col-md-7 col-sm-7 col-xs-12 wow fadeInDown"
						data-wow-duration="1000ms" data-wow-delay="300ms">
						<div class="shop-checkout-right">
							<div class="shop-checkout-box">
								<h5>결제 정보</h5>
								<div class="shop-checkout-title">
									<h6>
										주문내역 <span></span>
									</h6>
								</div>
								<div id="shop-checkout-orderlist" class="shop-checkout-row"><!-- class=css용 / id=값 설정용 -->
								</div>
								<div class="shop-checkout-title">
									<h6>
										예치금 
									</h6>
								</div>
								<div id="checkout-deposit" class="shop-checkout-row">
								${ rPnum }
								</div>
								<div class="shop-checkout-title" >
									<h6>
										금액 
									</h6>
								</div>
								<div id="shop-checkout-price" class="shop-checkout-row">
								</div>
								<div class="shop-checkout-title">
									<h6>
										결제금액 
									</h6>
								</div>
								<div id="shop-checkout-totalPrice" class="shop-checkout-row">
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
											<button id="payClear" class="button-default btn-large btn-primary-gold">전부취소</button>
											<button id="pay" class="button-default btn-large btn-primary-gold">결제하기</button>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
<!-- 최종 결제정보 탭 끝 -->
				</div>
			</div>

		</section>
	</div>
	</main>
	<!-- End Main -->
	<!-- Start Footer -->

	<!-- End Footer -->

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
	<script src="/js/store/reservePbasket.js"></script>
</body>
</html>