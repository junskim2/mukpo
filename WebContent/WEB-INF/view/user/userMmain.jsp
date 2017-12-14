<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 1201 현희 추가 -->
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>먹포 - 먹고갈래?</title>
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
    <script src="/js/jquery.min.js"></script>
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=c90936953fe2cb46c371ca9d061b1a69"></script>
<script src="/js/user/userMmain.js"></script>
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
   <script type="text/javascript">
   $(function() {
      $("#userloginspan").click(function() {
         location.href = "userLogin.do";
      });

   });
</script>
</head>

<body>
	<div class="wrapper-spacer">
		<!-- UserHeader 시작 -->
			<jsp:include page="../common/commonUserHeader.jsp"></jsp:include>
		<!-- UserHeader 끝 -->

        <!-- Start Main -->
        <main>
            <div class="main-part">
            	<!-- Start Map Part -->
                <section class="map-address pad-top-remove" data-wow-duration="1000ms" data-wow-delay="300ms">
                <div class="build-title">
                            <h2>먹고갈래 ?</h2>
                            <h6>사용자의 위치에 따라 매장들을 보여줍니다</h6>
                        </div>
                    
                        <div class="map-top">
                            <div class="container" id="mapContainer">
                            	<div id="kakaoMap" style="width:700px;height:400px;"></div>
                            </div>
                            <div class="container" id="storeContainer">
                                <div class="userLocationStore">
                                    <h3>밍키의 눈칫밥상 1호점</h3>
                                   	<span>독산동 동경빌딩 507호</span>
                                </div>
                                <div class="userLocationStore">
                                    <h3>야생마의 마굿간떡볶이</h3>
                                    <span>가산동 마굿간 101호</span>
                                </div>
                                <div class="userLocationStore">
                                    <h3>갱식쓰의 뼉다구찜닭</h3>
                                    <span>가산동 아이파크 202호</span>
                                </div>
                                <div class="userLocationStore">
                                    <h3>주용쓰 잘해줘치킨</h3>
                                    <span>독산동 미래빌딩 205호</span>
                                </div>
                                <div class="userLocationStore">
                                    <h3>와따 큰 피자</h3>
                                    <span>아름동 혀니빌딩 204호</span>
                                </div>
                            </div>
                        
                    </div>
<!--                     <div class="map-bottom"> -->
<!--                          <div class="footer-map-outer1"> -->
<!--                             <div id="footer-map"></div> -->
<!--                         </div> -->
<!--                     </div> -->
                </section>
                <!-- End Map Part -->
                
              	<!-- Start Feature Blog -->
                <section class="feature-blog-wrap wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="300ms">
                    <div class="container">
                        <div class="build-title">
                            <h2>! 생생 리뷰 !</h2>
                            <h6>사용자들이 작성한 최근 리뷰를 보여줍니다</h6>
                        </div>
                        <div class="feature-blog feature-label">
                            <div class="owl-carousel owl-theme" data-items="2" data-laptop="2" data-tablet="2" data-mobile="1" data-nav="false" data-dots="true" data-autoplay="true" data-speed="1800" data-autotime="5000">
<!-- 1201 현희 리뷰 -->
                               <c:forEach var="re" items="${ review }" >
                                 <div class="item">
                                    <div class="feature-img">
                                        <img src="/images/img15.png" alt="">
                                        <div class="date-feature">05
                                            <br> <small>oct</small></div>
                                    </div>
                                    <div class="feature-info">
                                        <span><i class="icon-user"></i> ${ re.M_NAME } </span>
                                        <h5>${ re.S_NAME }</h5>
                                        <p>${ re.RV_CONTENT }</p>
                                        <a href="#">더보기 <i class="icon-more"></i></a>
                                    </div>
                                </div>
                                </c:forEach>
                            </div>
                        </div>
                    </div>
                </section>
                <!-- End Feature Blog -->
                
                <!-- Start Slider Part -->
                <section class="home-slider home-ride">
                    <div class="tp-banner-container">
                        <div class="tp-banner">
                            <ul>
                                <li data-transition="zoomout" data-slotamount="2" data-masterspeed="1000" data-thumb="" data-saveperformance="on" data-title="Slide">
<!-- 1130 현희 이미지추가 -->
<!-- 주용 광고 상세보기 연결 -->
                                    <img class="ad" src="/images/user/야생마떡볶이광고.png" alt="야생마떡볶이" data-lazyload="/images/user/야생마떡볶이광고.png" data-bgposition="center center" data-bgfit="cover" data-bgrepeat="no-repeat">
                                    <!-- LAYERS -->
                                    <div class="tp-caption very_large_text" data-x="center" data-hoffset="0" data-y="250" data-customin="x:0;y:0;z:0;rotationX:90;rotationY:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:200;transformOrigin:50% 0%;" data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;" data-speed="1000" data-start="500" data-easing="Back.easeInOut" data-endspeed="300">야생마의 <span>마굿간떡볶이</span>
                                    </div>
                                    <!-- LAYERS -->
                                    <div class="tp-caption medium_text" data-x="center" data-hoffset="0" data-y="340" data-customin="x:0;y:0;z:0;rotationX:90;rotationY:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:200;transformOrigin:50% 0%;" data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;" data-speed="1000" data-start="500" data-easing="Back.easeInOut" data-endspeed="300">떡볶이가 너무 매워서 이히히힝~
                                    </div>
                                    <!-- LAYERS -->
                                    <div class="tp-caption" data-x="center" data-hoffset="0" data-y="425" data-customin="x:0;y:0;z:0;rotationX:90;rotationY:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:200;transformOrigin:50% 0%;" data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;" data-speed="1000" data-start="500" data-easing="Back.easeInOut" data-endspeed="300"><a href="/store/storeMdetail.do?rCid=8165" class="button-white">상세보기</a>
                                    </div>
                                </li>
                                <li data-transition="zoomout" data-slotamount="2" data-masterspeed="1000" data-thumb="" data-saveperformance="on" data-title="Slide">
<!-- 1130 현희 이미지추가 -->                                    
                                    <img class="ad" src="/images/user/주용쓰잘해줘치킨광고.png" alt="주용쓰잘해줘치킨" data-lazyload="/images/user/주용쓰잘해줘치킨광고.png" data-bgposition="center center" data-bgfit="cover" data-bgrepeat="no-repeat">
                                    <!-- LAYERS -->
                                    <div class="tp-caption very_large_text" data-x="center" data-hoffset="0" data-y="250" data-customin="x:0;y:0;z:0;rotationX:90;rotationY:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:200;transformOrigin:50% 0%;" data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;" data-speed="1000" data-start="500" data-easing="Back.easeInOut" data-endspeed="300">주용쓰의 <span>잘해줘치킨</span>
                                    </div>
                                    <!-- LAYERS -->
                                    <div class="tp-caption medium_text" data-x="center" data-hoffset="0" data-y="340" data-customin="x:0;y:0;z:0;rotationX:90;rotationY:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:200;transformOrigin:50% 0%;" data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;" data-speed="1000" data-start="500" data-easing="Back.easeInOut" data-endspeed="300">노친절하면 주용쓰 흥흥 삐짐 :(
                                    </div>
                                    <!-- LAYERS -->
                                    <div class="tp-caption" data-x="center" data-hoffset="0" data-y="425" data-customin="x:0;y:0;z:0;rotationX:90;rotationY:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:200;transformOrigin:50% 0%;" data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;" data-speed="1000" data-start="500" data-easing="Back.easeInOut" data-endspeed="300"><a href="/store/storeMdetail.do?rCid=8166" class="button-white">상세보기</a>
                                    </div>
                                </li>
                                <li data-transition="zoomout" data-slotamount="2" data-masterspeed="1000" data-thumb="" data-saveperformance="on" data-title="Slide">
<!-- 1130 현희 이미지추가 -->                                
                                    <img class="ad" src="/images/user/민우쓰의눈칫밥상광고.png" alt="민우쓰의눈칫밥상" data-lazyload="/images/user/민우쓰의눈칫밥상광고.png" data-bgposition="center center" data-bgfit="cover" data-bgrepeat="no-repeat">
                                    <!-- LAYERS -->
                                    <div class="tp-caption very_large_text" data-x="center" data-hoffset="0" data-y="250" data-customin="x:0;y:0;z:0;rotationX:90;rotationY:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:200;transformOrigin:50% 0%;" data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;" data-speed="1000" data-start="500" data-easing="Back.easeInOut" data-endspeed="300">밍키의 <span>눈칫밥상 1호점</span>
                                    </div>
                                    <!-- LAYERS -->
                                    <div class="tp-caption medium_text" data-x="center" data-hoffset="0" data-y="340" data-customin="x:0;y:0;z:0;rotationX:90;rotationY:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:200;transformOrigin:50% 0%;" data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;" data-speed="1000" data-start="500" data-easing="Back.easeInOut" data-endspeed="300">아직도 안가봤어? 어머 너 눈치없다~
                                    </div>
                                    <!-- LAYERS -->
                                    <div class="tp-caption" data-x="center" data-hoffset="0" data-y="425" data-customin="x:0;y:0;z:0;rotationX:90;rotationY:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:200;transformOrigin:50% 0%;" data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;" data-speed="1000" data-start="500" data-easing="Back.easeInOut" data-endspeed="300"><a href="/store/storeMdetail.do?rCid=8167" class="button-white">상세보기</a>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="on-scroll">
                        <a href="#reach-to" class="scroll"><img src="/images/scroll-down.png" alt=""></a>
                    </div>
                </section>
                <!-- End Slider Part -->
            </div>
        </main>
        <!-- End Main -->
		<jsp:include page="../common/commonUserFooter.jsp"></jsp:include>
        
    </div>
    <!-- Back To Top Arrow -->
    <a href="#" class="top-arrow"></a>
    <script src="/js/jquery.min.js"></script>
    <script src="/plugin/bootstrap/bootstrap.min.js"></script>
    <script src="/plugin/bootstrap/bootstrap-datepicker.js"></script>
    <script src="https:/maps.googleapis.com/maps/api/js?key=AIzaSyAf6My1Jfdi1Fmj-DUmX_CcNOZ6FLkQ4Os"></script>
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