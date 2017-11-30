<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Blog Single - Laboom</title>
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
		<main> <!-- Start Menu Part -->
		<div class="col-md-8 col-sm-8 col-xs-12 wow fadeInDown"
			data-wow-duration="1000ms" data-wow-delay="300ms">
			<div class="blog-right-section">
				<div class="blog-right-listing wow fadeInDown"
					data-wow-duration="1000ms" data-wow-delay="300ms">
					<div class="feature-img">
						<img src="/images/img54.png" alt="">
						<div class="date-feature">
							27 <br> <small>may</small>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="container" style="margin-top: 10%;">
			<div class="build-title">
				<h2>메뉴선택</h2>
			</div>
			<div class="menu-wrapper col-md-6 col-sm-6 col-xs-12" style="width:66%;">
				<div class="portfolioFilter" style="margin-bottom:2%;">
					<div class="portfolioFilter-inner">
						<a href="javascript:;" data-filter="*" class="current">전체메뉴</a> <a
							href="javascript:;" data-filter=".japan">메뉴1</a> <a
							href="javascript:;" data-filter=".china">메뉴2</a> <a
							href="javascript:;" data-filter=".dinner">메뉴3</a> <a
							href="javascript:;" data-filter=".freshfood">메뉴4</a> <a
							href="javascript:;" data-filter=".lunch">메뉴5</a>
					</div>
				</div>
				<div style="width:100%;height:320px;padding-bottom:10%; margin-left:0%; margin-right:20%;border-radius:50px; border:2px solid orange;" class="portfolioContainer row ">
				<c:choose>
				<c:when test="${menuList == null}">
           		 <tr><td colspan='7'>등록된 메뉴가 없습니다.</td></tr>
        		</c:when>
        		<c:otherwise>
				<c:forEach var="list" items="${menuList}" end="30" >
				<form method="post" action="/store/storeMdetail.do" class="${list.mCate}" style="left: 5%;top: 15%; margin-top:40px;">
					<div class="col-md-6 col-sm-6 col-xs-12 isotope-item">
						<div class="menu-list" style="margin-left:25%; margin-top:20%;">
							<span class="menu-list-product"> <img
								src="/images/img3.png" alt="">
							</span>
							<h5 style="padding-bottom:0px;padding-right:0px;margin-bottom:10px;width:154px; ">
								${list.mName},
								${list.mCate}
							</h5>
							<h5 style="padding-bottom:0px;padding-right:0px;margin-bottom:10px;width:154px;">${list.mPrice}원</h5>
							<input type="button" value="장바구니에 담기" name="${list.mId}" menu="${list.mName}" class="basket"/>
						</div>
					</div>
					</form>
					</c:forEach>
					</c:otherwise>
					</c:choose>
					
				</div>
			
			</div>
			<div class="col-md-6 col-sm-6 col-xs-12" style="width:30%;">
			
			
			<h3 style="text-align:center; margin-bottom:10%;">장바구니</h3>  
			<div style="width:100%;height:100%; margin-left:0%; margin-right:20%;border-radius:50px; border:2px solid orange;" class="basketform ">
			<h5 style="text-align:center; width:100%;">메뉴명|갯수|삭제</h5>
			</div>
			</div>
			
			
			</div>
		</div>

		<!-- End Menu Part -->
		<div class="main-part">
			<!-- Start Breadcrumb Part -->
			<section class="breadcrumb-part" data-stellar-offset-parent="true"
				data-stellar-background-ratio="0.5"
				style="background-image: url('images/breadbg1.jpg');">
				<div class="container">
					<div class="breadcrumb-inner">
						<h2>리뷰</h2>
						<a href="#">Home</a> <span>Blog</span>
					</div>
				</div>
			</section>
			<!-- End Breadcrumb Part -->
			<section class="home-icon blog-main-section blog-single">
				<div class="icon-default">
					<img src="/images/scroll-arrow.png" alt="">
				</div>
				<div class="container">
					<div class="row">
						<div class="col-md-8 col-sm-8 col-xs-12 wow fadeInDown"
							data-wow-duration="1000ms" data-wow-delay="300ms">
							<div class="blog-right-section">
								<div class="blog-right-listing wow fadeInDown"
									data-wow-duration="1000ms" data-wow-delay="300ms">


									<div class="feature-info">
										<span><i class="icon-user-1"></i>KOSTA RESTURANT</span> <span><i
											class="icon-comment-5"></i> 5 개 댓글</span>
										<h5>항상 최선을다하는 KOSTA식당입니다.</h5>
										<p>저희매장은 560가지 메뉴를 제공하고있습니다.</p>
										<blockquote>
											<span class="quote">“</span> 신선하지 않은 음식은 팔지 않는다.
										</blockquote>
										<p>항상 고객의 소리에 귀를 기울이겠습니다.</p>
										<ul class="ul-list">
											<li>음식값은 비싸게</li>
											<li>서비스는 대충</li>
											<li>단골사절</li>
										</ul>
										<div class="share-tag">
											<div class="row">
												<div class="col-md-6 col-sm-6 col-xs-12">
													<div class="social-wrap">
														<h5>공유하기</h5>
														<ul class="social">
															<li class="social-facebook"><a href="#"><i
																	class="fa fa-facebook" aria-hidden="true"></i></a></li>
															<li class="social-tweeter"><a href="#"><i
																	class="fa fa-twitter" aria-hidden="true"></i></a></li>
															<li class="social-instagram"><a href="#"><i
																	class="fa fa-instagram" aria-hidden="true"></i></a></li>
															<li class="social-dribble"><a href="#"><i
																	class="fa fa-dribbble" aria-hidden="true"></i></a></li>
															<li class="social-google"><a href="#"><i
																	class="fa fa-google" aria-hidden="true"></i></a></li>
														</ul>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="comment-blog">
										<h3>2 댓글</h3>
										<div class="comment-inner-list">
											<div class="comment-img">
												<img src="/images/img55.png" alt="">
											</div>
											<div class="comment-info">
												<h5>주용쓰</h5>
												<span class="comment-date">2017/11/22 10:57 AM</span>
												<p>맛있어서 계속 먹었네요! 너무 많이먹어서 화장실을 계속갔어요</p>
											</div>
										</div>
										<div class="comment-inner-list">
											<div class="comment-img">
												<img src="/images/img55.png" alt="">
											</div>
											<div class="comment-info">
												<h5>현희쓰</h5>
												<span class="comment-date">2017/11/22 10:57 AM</span>
												<p>도장깨기하는중이에요. 다음은 18호점으로 갑니다.</p>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
			<section class="contact-map">
                    <div class="map-outer">
                        <div id="map"></div>
                    </div>
                </section>

		</div>
		</main>
		<!-- End Main -->
		<!-- Start Footer -->
		<footer>
			<div class="footer-part wow fadeInDown" data-wow-duration="1000ms"
				data-wow-delay="300ms">
				<div class="icon-default icon-dark">
					<img src="/images/footer-logo.png" alt="">
				</div>
				<div class="container">
					<div class="footer-inner">
						<div class="footer-info">
							<h3>La boom Restaurant</h3>
							<p>329 Queensberry Street, North Melbourne VIC 3051,
								Australia.</p>
							<p>
								<a href="#">123 456 7890</a>
							</p>
							<p>
								<a href="#">support@laboom.com</a>
							</p>
						</div>
					</div>
					<div class="copy-right">
						<div class="row">
							<div class="col-md-6 col-sm-6 col-xs-12 copyright-before">
								<span>Copyright © 2017 Polygon Theme. All rights
									reserved.</span>
							</div>
							<div class="col-md-6 col-sm-6 col-xs-12 copyright-after">
								<div class="social-round">
									<ul>
										<li><a href="#"><i class="fa fa-facebook"
												aria-hidden="true"></i></a></li>
										<li><a href="#"><i class="fa fa-twitter"
												aria-hidden="true"></i></a></li>
										<li><a href="#"><i class="fa fa-instagram"
												aria-hidden="true"></i></a></li>
										<li><a href="#"><i class="fa fa-pinterest"
												aria-hidden="true"></i></a></li>
										<li><a href="#"><i class="fa fa-dribbble"
												aria-hidden="true"></i></a></li>
										<li><a href="#"><i class="fa fa-google"
												aria-hidden="true"></i></a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="icon-find">
					<a href="#"> <img src="/images/location.png" alt=""> <span>Find
							us on Map</span>
					</a>
				</div>
				<div class="location-footer-map">
					<div class="icon-find-location">
						<a href="#"> <img src="/images/location.png" alt=""> <span>Find
								us on Map</span>
						</a>
					</div>
					<div class="footer-map-outer">
						<div id="footer-map"></div>
					</div>
				</div>
			</div>
		</footer>
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
	<script src="/js/store/basket.js"></script>
</body>

</html>