<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- 현희 추가 -->
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html> 
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>먹포 - 매장검색</title>
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
    <link href="/plugin/scroll-bar/jquery.mCustomScrollbar.css" rel="stylesheet">
    <link href="/plugin/animation/animate.min.css" rel="stylesheet">
    <link href="/css/theme.css" rel="stylesheet">
    <link href="/css/responsive.css" rel="stylesheet">
    <link href="/plugin/bootstrap/minwoo.css" rel="stylesheet">
    
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
        <!-- Start Header -->
        <!-- 현희 헤더 잠시 주석처리 -->
<%--         	<jsp:include page="../common/commonUserHeader.jsp"></jsp:include> --%>
        <!-- End Header -->
        <!-- Start Main -->
        <main>
            <div class="main-part">
                <!-- Start Breadcrumb Part -->
                <section class="breadcrumb-part" data-stellar-offset-parent="true" data-stellar-background-ratio="0.5" style="background-image: url('images/breadbg1.jpg');">
                    <div class="container">
                        <div class="breadcrumb-inner">
                        	<!-- 현희 제목바꾸기 -->
                            <h2>매장검색</h2>
                            <a href="#">Home</a>
                            <span>Blog</span>
                        </div>
                    </div>
                </section>
                <!-- End Breadcrumb Part -->
                <!-- Start Blog List -->
                <section class="home-icon blog-main-section text-center blog-main-2col wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="300ms">
                    <div class="icon-default">
                        <img src="/images/scroll-arrow.png" alt="">
                    </div>
                    <div class="container">
                     <div class="portfolioFilter">
                     
                   <div class="blog-left-search blog-common-wide">
                                        <input type="text" name="txt" placeholder="Search" style="background:#383848; color:white;">
                                        <input type="submit" name="submit" value="&#xf002;">
                                    </div>
                     
                            <div class="portfolioFilter-inner bg-skeen">
                                <a href="javascript:;" data-filter=".breakfast" class="current">테이크 아웃</a>
                                <a href="javascript:;" data-filter=".dessert">좌석 예약</a>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12 col-sm-12 col-xs-12">
                                <div class="blog-right-section">
                                    <div class="row">
                                        <!-- 현희 매장목록 DB값 출력 -->
                                    	<c:forEach var="list" items="${ storeList }" end="30" >
	                                    	<div class="col-md-6 col-sm-6 col-xs-12 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="300ms">
	                                            <div class="blog-right-listing">
	                                                <div class="feature-img">
	                                                    <img src="${ list.sUrl }" alt="" />
	                                                    <h3>${ list.sName }</h3>		<!-- 매장이름 -->
	                                                    <div>${ list.sAddress }</div>	<!-- 매장주소 -->
	                                                    <div>${ list.sTel }</div>		<!-- 매장 전화번호 -->
	                                                    <div>${ list.sClose }</div>		<!-- 매장 휴무일 -->
	                                                </div>
	                                            </div>
	                                        </div>
                                    	</c:forEach>
                                    	<!-- 매장 목록 값 끝 -->
                                    </div>
                                    <div class="gallery-pagination">
                                        <div class="gallery-pagination-inner">
                                            <ul>
                                                <li><a href="#" class="pagination-prev"><i class="icon-left-4"></i> <span>PREV page</span></a></li>
                                                <li class="active"><a href="#"><span>1</span></a></li>
                                                <li><a href="#"><span>2</span></a></li>
                                                <li><a href="#"><span>3</span></a></li>
                                                <li><a href="#" class="pagination-next"><span>next page</span> <i class="icon-right-4"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
                <!-- End Blog List -->
            </div>
        </main>
        <!-- End Main -->
        <!-- Start Footer -->
        <footer>
            <div class="footer-part wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="300ms">
                <div class="icon-default icon-dark">
                    <img src="/images/footer-logo.png" alt="">
                </div>
                <div class="container">
                    <div class="footer-inner">
                        <div class="footer-info">
                            <h3>La boom Restaurant</h3>
                            <p>329 Queensberry Street, North Melbourne VIC 3051, Australia.</p>
                            <p><a href="#">123 456 7890</a></p>
                            <p><a href="#">support@laboom.com</a></p>
                        </div>
                    </div>
                    <div class="copy-right">
                        <div class="row">
                            <div class="col-md-6 col-sm-6 col-xs-12 copyright-before">
                                <span>Copyright © 2017 Polygon Theme. All rights reserved.</span>
                            </div>
                            <div class="col-md-6 col-sm-6 col-xs-12 copyright-after">
                                <div class="social-round">
                                    <ul>
                                        <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                                        <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                                        <li><a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
                                        <li><a href="#"><i class="fa fa-pinterest" aria-hidden="true"></i></a></li>
                                        <li><a href="#"><i class="fa fa-dribbble" aria-hidden="true"></i></a></li>
                                        <li><a href="#"><i class="fa fa-google" aria-hidden="true"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="icon-find">
                    <a href="#">
                        <img src="/images/location.png" alt="">
                        <span>Find us on Map</span>
                    </a>
                </div>
                <div class="location-footer-map">
                    <div class="icon-find-location">
                        <a href="#">
                            <img src="/images/location.png" alt="">
                            <span>Find us on Map</span>
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
        <div class="modal fade booktable" id="booktable" tabindex="-1" role="dialog" aria-labelledby="booktable">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-body">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <div class="table-title">
                            <h2>Reservation</h2>
                            <h6 class="heade-xs">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</h6>
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
                                <input type="text" name="txt" placeholder="Pick a Date" class="date-pick">
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
    <script src="/https://maps.googleapis.com/maps/api/js?key=AIzaSyAf6My1Jfdi1Fmj-DUmX_CcNOZ6FLkQ4Os"></script>
    <script src="/plugin/form-field/jquery.formstyler.min.js"></script>
    <script src="/plugin/revolution-plugin/jquery.themepunch.plugins.min.js"></script>
    <script src="/plugin/revolution-plugin/jquery.themepunch.revolution.min.js"></script>
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