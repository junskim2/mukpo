<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
<!--     <link href="/plugin/bootstrap/bootstrap.css" rel="stylesheet"> -->
<!--     <link href="/plugin/bootstrap/datepicker.css" rel="stylesheet"> -->
<!--     <link href="/plugin/font-awesome/font-awesome.css" rel="stylesheet"> -->
<!--     <link href="/plugin/form-field/jquery.formstyler.css" rel="stylesheet"> -->
<!--     <link href="/plugin/revolution-plugin/extralayers.css" rel="stylesheet"> -->
<!--     <link href="/plugin/revolution-plugin/settings.css" rel="stylesheet"> -->
<!--     <link href="/plugin/owl-carousel/owl.carousel.css" rel="stylesheet"> -->
<!--     <link href="/plugin/owl-carousel/owl.theme.default.css" rel="stylesheet"> -->
<!--     <link href="/plugin/slick-slider/slick-theme.css" rel="stylesheet"> -->
<!--     <link href="/plugin/magnific/magnific-popup.css" rel="stylesheet"> -->
<!--     <link href="/plugin/scroll-bar/jquery.mCustomScrollbar.css" rel="stylesheet"> -->
<!--     <link href="/plugin/animation/animate.min.css" rel="stylesheet"> -->
<!--     <link href="/css/theme.css" rel="stylesheet"> -->
<!--     <link href="/css/responsive.css" rel="stylesheet"> -->
	<title>사용자 헤더</title>
    <style type="text/css">
    	#userlogin {
    		max-width: 10%;
    	}
    	#mpsection {
    		font-size: 35px;
    	}
    	.menu-main>ul>li:first-child>a:before {
      		content: "";
    	}
    	#categorydrop {
    		width: 10px;
    		left: 220px;
    	}
    	#categorydrop>li:nth-child(-n+4) {
    		padding-bottom: 5px;
    	}
    	#mpdrop {
    		width: 230px;
    		left: 40px;
    	}
    	#mparrow {
    		width : 20px;
    	}
    	#userloginspan {
    		font-size: 17px;
    	}
    	#mpdrop a {
    		font-size: 18px;
    	}
    	#mpdrop>li:first-child {
			padding-bottom: 10px;
		}
		#location1>li {
			font-size: 17px;
		}
		#location1>li:nth-child(-n+5) {
			padding-bottom: 10px;
		}
/* 		#locationdrop { */
/* 			display: block; */
/* 		} */
		#location1div {
			width: 35%;
			border-right: 1px solid #D3D3D3;
		}
		#location2div {
			width: 65%;
			height: 207px;
			/* 나중에 시도에 따라 크기 바뀜 */
			overflow: auto;
		}
		#location2>li {
			font-size: 13px;
		}
		#location2>li:nth-child(-n+5) {
			padding-bottom: 2px;
		}
		#location2>li {
			padding-left: 10px;
		}
		#location1>li {
			padding-right: 10px;
		}
		#location1 span {
			float: right;
		}
		.header-info {
			width: 100%;
		}
    </style>
	
</head>
<body>

        <!-- Start Header -->
        <header>
            <div class="header-part header-on">
                <div class="header-bottom">
                    <div class="container">
                   
                    	<!-- 로고 -->
                    	<div class="logo">
                            <a href="index.html"><img src="/images/common/로고1.png" alt=""></a>
                        </div>
                        
                        <!-- 메뉴 헤더 -->
                        <div class="header-info">
                        	<div class="menu-main">
                            <ul>
                            	<!-- 먹포 -->
                            	<li class="mega-menu" id="mpsectionclass">
                            		<a id="mpsection" href="index.html"><img id="mparrow" src="/images/common/mp-arrow3.png"> 포장</a>
                                    <ul class="drop-nav" id="mpdrop">
                                        <li><a href="#">먹고갈래?</a></li>
                                        <li><a href="#">포장할래?</a></li>
                                    </ul>
                            	</li>
                            	
                            	<!-- 지역 메뉴 -->
                            	<li class="mega-menu"> 
									<a href="#">지역</a>
									<ul class="drop-nav" id="locationdrop"> 
										<li>
											<div class="drop-mega-part"> 
												<div class="row"> 
													<div class="col-md-6 col-sm-12 col-xs-12" id="location1div"> 
														<ul id="location1">
															<li> 서울<span>></span></li>
															<li> 대전<span>></span></li>
															<li> 충남<span>></span></li>
															<li> 경기<span>></span></li>
															<li> 광주<span>></span></li>
															<li> 부산<span>></span></li>
														</ul>
													</div>
													<div class="col-md-6 col-sm-12 col-xs-12" id="location2div">
                                                                <ul id="location2">
                                                                    <li><input type="checkbox" />Ready Player One</li>
                                                                    <li><input type="checkbox" />Ernest Cline</li>
                                                                    <li><input type="checkbox" />Ender's Game</li>
                                                                    <li><input type="checkbox" />Orson Scott Card</li>
                                                                    <li><input type="checkbox" />Americam God</li>
                                                                    <li><input type="checkbox" />Neil Gaiman</li>
                                                                    <li><input type="checkbox" />The Great Gatsby</li>
                                                                    <li><input type="checkbox" />The Great Gatsby</li>
                                                                    <li><input type="checkbox" />The Great Gatsby</li>
                                                                    <li><input type="checkbox" />The Great Gatsby</li>
                                                                    <li><input type="checkbox" />The Great Gatsby</li>
                                                                </ul>
                                                    </div>
												</div>
												
											</div>
										</li>
									</ul>
								</li>
								
                            	<!-- 카테고리 메뉴 -->
                                <li class="mega-menu">
                                    <a href="index.html">카테고리</a>
                                    <ul class="drop-nav" id="categorydrop">
                                        <li><input type="checkbox">음식 전체</li>
                                        <li><input type="checkbox">한식</li>
                                        <li><input type="checkbox">양식</li>
                                        <li><input type="checkbox">중식</li>
                                        <li><input type="checkbox">일식</li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                        <!-- 검색 기능 -->
							<div class="search-part">
                                <a href="#"></a>
                                <div class="search-box">
                                    <input type="text" name="txt" placeholder="Search">
                                    <input type="submit" name="submit" value=" ">
                                </div>
                            </div>
                            
                        <!-- 화면 작아질때 -->
                            <div class="header-info-inner">
                                <div class="book-table header-collect book-md">
                                    <a href="#"><img id="userlogin" src="/images/common/login.png" alt="">
                                    	<span id="userloginspan">LOGIN / JOIN</span></a>
                                </div>
                                <div class="shop-cart header-collect">
                                    <a href="#"></a>
                                </div>
                               
                            </div>
 
                        </div>
                        <!-- 메뉴헤더 끝 -->
                        
                        <div class="menu-icon">
                            <a href="#" class="hambarger">
                                <span class="bar-1"></span>
                                <span class="bar-2"></span>
                                <span class="bar-3"></span>
                            </a>
                        </div>
                        <div class="book-table header-collect book-sm">
                            <div class="header-info">
                        	<div class="menu-main">
                            <ul>
                            	<!-- 먹포 -->
                            	<li> <!-- class="has-child" -->
                            		<a id="mpsection" href="index.html">포장</a>
                                    <ul class="drop-nav">
                                        <li><input type="checkbox">음식 전체</li>
                                        <li><input type="checkbox">한식</li>
                                        <li><input type="checkbox">양식</li>
                                        <li><input type="checkbox">중식</li>
                                        <li><input type="checkbox">일식</li>
                                    </ul>
                            	</li>
                            	<!-- 지역 메뉴 -->
                            	<li class="mega-menu"> 
									<a href="#">지역</a>
									<ul class="drop-nav"> 
										<li>
											<div class="drop-mega-part"> 
												<div class="row"> 
													<div class="col-md-6 col-sm-12 col-xs-12"> 
														<ul id="location1">
															<li>> 서울</li>
															<li>> 대전</li>
															<li>> 충남</li>
															<li>> 경기</li>
															<li>> 광주</li>
															<li>> 부산</li>
														</ul>
													</div>
													<div class="col-md-6 col-sm-12 col-xs-12">
                                                                <ul id="location2">
                                                                    <li><input type="checkbox" />Ready Player One</li>
                                                                    <li><input type="checkbox" />Ernest Cline</li>
                                                                    <li><input type="checkbox" />Ender's Game</li>
                                                                    <li><input type="checkbox" />Orson Scott Card</li>
                                                                    <li><input type="checkbox" />Americam God</li>
                                                                    <li><input type="checkbox" />Neil Gaiman</li>
                                                                    <li><input type="checkbox" />The Great Gatsby</li>
                                                                </ul>
                                                    </div>
												</div>
												
											</div>
										</li>
									</ul>
								</li>
								
                            	<!-- 카테고리 메뉴 -->
                                <li class="has-child">
                                    <a href="index.html">카테고리</a>
                                    <ul class="drop-nav">
                                        <li><input type="checkbox">음식 전체</li>
                                        <li><input type="checkbox">한식</li>
                                        <li><input type="checkbox">양식</li>
                                        <li><input type="checkbox">중식</li>
                                        <li><input type="checkbox">일식</li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
							<div class="search-part">
                                <a href="#"></a>
                                <div class="search-box">
                                    <input type="text" name="txt" placeholder="Search">
                                    <input type="submit" name="submit" value=" ">
                                </div>
                            </div>
                            
                            <div class="header-info-inner">
                                <div class="book-table header-collect book-md">
                                    <a href="#"><img id="userlogin" src="/images/common/login.png" alt="">
                                    	<span id="userloginspan">LOGIN / JOIN</span></a>
                                </div>
                                <div class="shop-cart header-collect">
                                    <a href="#"></a>
                                </div>
                               
                            </div>
 
                        </div>
                        </div>

                        
                    </div>
                </div>
            </div>
        </header>
        <!-- End Header -->


<!--     <a href="#" class="top-arrow"></a> -->
<!--     <script src="/js/jquery.min.js"></script> -->
<!--     <script src="/plugin/bootstrap/bootstrap.min.js"></script> -->
<!--     <script src="/plugin/bootstrap/bootstrap-datepicker.js"></script> -->
<!--     <script src="https:/maps.googleapis.com/maps/api/js?key=AIzaSyAf6My1Jfdi1Fmj-DUmX_CcNOZ6FLkQ4Os"></script> -->
<!--     <script src="/plugin/form-field/jquery.formstyler.min.js"></script> -->
<!--     <script src="/plugin/revolution-plugin/jquery.themepunch.plugins.min.js"></script> -->
<!--     <script src="/plugin/revolution-plugin/jquery.themepunch.revolution.min.js"></script> -->
<!--     <script src="/plugin/owl-carousel/owl.carousel.min.js"></script> -->
<!--     <script src="/plugin/slick-slider/slick.min.js"></script> -->
<!--     <script src="/plugin/isotop/isotop.js"></script> -->
<!--     <script src="/plugin/isotop/packery-mode.pkgd.min.js"></script> -->
<!--     <script src="/plugin/magnific/jquery.magnific-popup.min.js"></script> -->
<!--     <script src="/plugin/scroll-bar/jquery.mCustomScrollbar.concat.min.js"></script> -->
<!--     <script src="/plugin/animation/wow.min.js"></script> -->
<!--     <script src="/plugin/parallax/jquery.stellar.js"></script> -->
<!--     <script src="/js/app.js"></script> -->
<!--     <script src="/js/script.js"></script> -->
</body>
</html>