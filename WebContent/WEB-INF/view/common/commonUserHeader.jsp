<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<title>사용자 헤더</title>
    <style type="text/css">
    	#userlogin {
    		max-width: 10%;
    	}
    	#mpsection {
    	/* 현희 a태그 제거 */
    		font-size: 35px;
    		display: block;
		    position: relative;
		    color: #ffffff;
		    margin: 0;
		    vertical-align: baseline;
		    outline: none;
		    text-decoration: none;
		    cursor: pointer;
		    padding: 15px;
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
		#logo1 {
			/* 로고크기때문에 */
			max-width : 50%;
			position:static;
		}
		.header-part {
			float: none;
		}
		.menu-main {
			/* 수정 검색창과 메뉴들 간격줄이기 위해 */
			width: 50%;
		}
		.menu-main li a {
			/* 수정 메뉴 헤더들 간격 주기위해 */
			padding: 15px 15px 15px 15px;			
			/* 메뉴 헤더 글씨크기 수정 */
			font-size: 20px;
			/* 마진 수정 */
			margin-left : 20px;
		}
		.menu-main li.mega-menu .drop-nav {
			width:450px;
			top:70px;
			/* top: 100%; */
		}
		.menu-main li.mega-menu .drop-nav li a {
			/* 수정 글씨 위치때문 */
			/* margin-bottom: 12px; */
			margin-bottom: 0px;
		}
		.logo>a {
			/* position: absolute; */
			position:static;
		}
		.header-info {
			float: left;
			/* 수정 검색 추가하려고 늘려놓음 */
			width : 80%;
		}
		.header-info-inner {
			/* 수정 로그인 위치 수정 */
		    padding: 15px;
		}
		.search-part {
			/* 수정 패딩 주기 위해 마진죽임 */
			padding : 10px;
		    /* 마진 수정 */
		    margin-left : 10px;
		}
		.search-box {
			/* 왼쪽정렬..ㅎㅎ 수정 */
			right: auto;
			/* right: 0px; */
			left : 0px;
			
			/* 검색창에 맞춰 크기 줄임 추후 또 수정할꺼 */
			/* width: 100%; */
			width : 59%; 
		}
		.drop-nav li{
			font-size : 17px;
		}
/* 1130 현희 css추가 */
		/* 지역, 카테고리 css */
		.menuname {
			padding : 15px;
			font-size : 20px;
			margin-left : 20px;
			display : block;
			position : relative;
			color : #ffffff;
			cursor: pointer;
		}
		.menuname:before {
			/* content 수정 */
		    content: "ㆍ";
		    position: absolute;
		    top: 50%;
		    -webkit-transform: translateY(-50%);
		    -moz-transform: translateY(-50%);
		    -ms-transform: translateY(-50%);
		    -o-transform: translateY(-50%);
		    transform: translateY(-50%);
		    color: #e4b95b;
		    left: 0px;
		}
		/* 마우스 오버 해제 클릭추가 */
		.menu-main ul>li:hover>.drop-nav { 
		     display: none;
		 }
		 /* 먹포만 마우스오버 가능하게  */
		 #mpsectionclass:hover>.drop-nav { 
		     display: block;
		 } 
		 /* 지역 선택할 때 css 변하게 하려고 */
		 .selectLocal {
		 	color : #e4b95b;
		 }
/* 1130 현희 지역 확인버튼  */
		 #btnLocation, #btnCate {
		 	width : 100%;
		 	margin: 15px 0px;
		 	min-width: 0px;
		 }
		#categorydrop, #locationdrop {
/* 1130 현희 버튼 추가함으로써 패딩값 추가 */
			padding-bottom: 0px;
		}
/* 1130 현희 돋보기에 클래스 추가하면서 땡그라미 없앰 */
		.searchIcon:before {
			content : "";
		}
    </style>
    
    <script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script type="text/javascript">
// 1130 현희 스크립트 추가
	$(function() {
// 1130 현희 한개만 열리게
		// 지역, 카테고리 클릭하면 하단메뉴 뜨게 하는 소스
		$(".menuname").on("click",function() {
			var drop = $(".menuname").parent().find(">.drop-nav");
			if(drop.is(":visible")) {
				$(".menuname").parent().find(">.drop-nav").css("display","none");
				$(this).parent().find(">.drop-nav").css("display","block");
			} else {
				$(this).parent().find(">.drop-nav").css("display","block");
			}
			
		}); // END .menuname each
		
		// 음식 전체를 선택하면
		$("#cateAll").click(function() {
			alert(this.cheched);
			$(".cate").prop("checked", this.checked);
		});

		// 지역 선택했을때 시군구 나오게 하려고
		$("#location1>li").click(function() {
// 1130 현희 클릭하면 색깔변함
			$("#location1>li").removeClass("selectLocal"); // 색깔 가지고 있는 애 없애고
			$(this).addClass("selectLocal"); // 클릭한 아이가 색깔가져가기
			
		}); // END #location1>li click
//주용 지역 확인 버튼 클릭시 사라짐		
	$("#btnLocation").click(function() {
		
			$("#locationdrop").css("display", "none");
		});
//주용 카테고리 확인 버튼 클릭시 사라짐				
	$("#btnCate").click(function() {
			$("#categorydrop").css("display", "none");
		});
		
//1201 주용 메뉴 카테고리 전체선택
		$('.cateAll').bind('change',function(event){
			event.preventDefault();
			event.stopPropagation();
			
			//전체선택 조건식
			if( $(this).is(":checked") ){
				$('.foodchk').addClass('checked');
				$('.foodchk').prop("checked",true);
			}else{
				$('.foodchk').removeClass('checked');
				$('.foodchk').prop("checked",false);
			}
			
		});
		// 주용 미완성...
		if($('input:checkbox[name=sCate2]').length!=8){
			$('.cateAll').prop(":checked",false);
			$('.cateAll').removeClass('checked');
		}
	}); // END function
	
// 1204 현희 스크롤 링크 확인
	var link = document.location.href;
	alert(link);
	$(window).scroll(function() {
		var sc = $(window).scrollTop();
		if( sc > 10 ) {
			$("header > div.header-part").addClass("scroll");
		} else {
			$("header > div.header-part").removeClass("scroll");
		}
	});
	</script>
</head>
<body>
	<!-- Start Header -->
	<header>
		<div class="header-part header-on">
			<div class="header-bottom">
				<div class="container">
					       
					<!-- 로고 -->
					<div class="logo">
						<a href="#"><img id="logo1" src="/images/common/로고1.png" alt=""></a>
					</div>
					                        
					<!-- 메뉴 헤더 -->
					<!-- 현희 헤더(먹포 지역 카테고리) a태그-> span 으로 수정 -->
					<div class="header-info">
						<form method="post" action="/store/storeList.do">
							<div class="menu-main">
								<ul>
									<!-- 먹포 -->
									<li class="mega-menu" id="mpsectionclass">
										<span id="mpsection">
											<img id="mparrow" src="/images/common/mp-arrow3.png">
<!-- 1130 현희 sPM -> sMp 이름통일 -->
											<c:if test="${ sMp == 'M' }"> 테이블 </c:if>
											<c:if test="${ sMp == 'P' }"> 포장 </c:if>
<!-- 1130 현희 sPM -> sMp 이름통일  끝 -->
										</span>
										<ul class="drop-nav" id="mpdrop">
											<li><a href="/common/userMmain.do">먹고갈래?</a></li>
											<li><a href="/common/userPmain.do">포장할래?</a></li>
										</ul>
									</li>
									
									<!-- 지역 메뉴 -->
									<li class="mega-menu"> 
										<span class="menuname">지역</span>
										<ul class="drop-nav" id="locationdrop"> 
											<li>
												<div class="drop-mega-part"> 
													<div class="row"> 
														<!-- 시도 출력 -->
															<div class="col-md-6 col-sm-12 col-xs-12"
															id="location1div">
															 <!-- 경기도 값 넘기기 -->
															<input type="hidden" value="경기도" name="sSido"/>
															<ul id="location1">
																<li id="selecgg">서울<span>></span></li>
																<li>경기<span>></span></li>
																<li>충남<span>></span></li>
																<li>대전<span>></span></li>
																<li>광주<span>></span></li>
																<li>부산<span>></span></li>
															</ul>
														</div>
													
														<!-- 해당 시군구 출력 -->
														<div class="col-md-6 col-sm-12 col-xs-12" id="location2div">
															<ul id="location2">
																<li><input type="checkbox" name="sSigungu2"
																	value="의정부시" />의정부시</li>
																<li><input type="checkbox" name="sSigungu2"
																	value="이천시" />이천시</li>
																<li><input type="checkbox" name="sSigungu2"
																	value="평택시" />평택시</li>
																<li><input type="checkbox" name="sSigungu2"
																	value="금천구" />금천구</li>
																<li><input type="checkbox" name="sSigungu2"
																	value="광명시" />광명시</li>
																<li><input type="checkbox" name="sSigungu2"
																	value="과천시" />과천시</li>
																<li><input type="checkbox" name="sSigungu2"
																	value="남양주시" />남양주시</li>
																<li><input type="checkbox" name="sSigungu2"
																	value="동두천시" />동두천시</li>
																<li><input type="checkbox" name="sSigungu2"
																	value="연천군" />연천군</li>
																<li><input type="checkbox" name="sSigungu2"
																	value="구리시" />구리시</li>
																<li><input type="checkbox" name="sSigungu2"
																	value="성남시" />성남시</li>
																<li><input type="checkbox" name="sSigungu2"
																	value="광주시" />광주시</li>
																<li><input type="checkbox" name="sSigungu2"
																	value="양평군" />양평군</li>
																<li><input type="checkbox" name="sSigungu2"
																	value="여주시" />여주시</li>
																<li><input type="checkbox" name="sSigungu2"
																	value="고양시" />고양시</li>
																<li><input type="checkbox" name="sSigungu2"
																	value="수원시" />수원시</li>
																<li><input type="checkbox" name="sSigungu2"
																	value="가평군" />가평군</li>
																<li><input type="checkbox" name="sSigungu2"
																	value="오산시" />오산시</li>
																<li><input type="checkbox" name="sSigungu2"
																	value="안양시" />안양시</li>
																<li><input type="checkbox" name="sSigungu2"
																	value="부천시" />부천시</li>
																<li><input type="checkbox" name="sSigungu2"
																	value="군포시" />군포시</li>
																<li><input type="checkbox" name="sSigungu2"
																	value="김포시" />김포시</li>
																<li><input type="checkbox" name="sSigungu2"
																	value="시흥시" />시흥시</li>
																<li><input type="checkbox" name="sSigungu2"
																	value="안산시" />안산시</li>
																<li><input type="checkbox" name="sSigungu2"
																	value="용인시" />용인시</li>
																<li><input type="checkbox" name="sSigungu2"
																	value="의왕시" />의왕시</li>
																<li><input type="checkbox" name="sSigungu2"
																	value="파주시" />파주시</li>
																<li><input type="checkbox" name="sSigungu2"
																	value="안성시" />안성시</li>
																<li><input type="checkbox" name="sSigungu2"
																	value="양주시" />양주시</li>
																<li><input type="checkbox" name="sSigungu2"
																	value="청주시" />청주시</li>
																
															</ul>
														</div>
													</div>
												</div>
											</li>
<!-- 1130 현희 버튼 추가 -->						
											<div id="btnLocation" class="btn-black send_message">확인</div>
										</ul>
									</li>
									
<!-- 1130 현희 카테고리 내용 수정 -->									
									<!-- 카테고리 메뉴 -->
									<li class="mega-menu"><span class="menuname">카테고리</span>
										<ul class="drop-nav" id="categorydrop">
											<li id="cataAll2"><input type="checkbox" id="cateAll" class='cateAll'
												value="음식전체"/>음식 전체</li>
											<li><input type="checkbox" name="sCate2" class='foodchk'
												value="뷔페식"/>뷔페식</li>
											<li><input type="checkbox" name="sCate2" class='foodchk'
												value="탕류"/>탕류</li>
											<li><input type="checkbox" name="sCate2" class='foodchk'
												value="카페"/>키페</li>
											<li><input type="checkbox" name="sCate2" class='foodchk'
												value="한식"/>한식</li>
											<li><input type="checkbox" name="sCate2" class='foodchk'
												value="일식"/>일식</li>
											<li><input type="checkbox" name="sCate2" class='foodchk'
												value="패스트푸드"/>패스트푸드</li>
											<li><input type="checkbox" name="sCate2" class='foodchk'
												value="중국식"/>중국식</li>
											<li><input type="checkbox" name="sCate2" class='foodchk'
												value="BGM"/>BGM</li>
<!-- 1130 현희 버튼 추가 -->
											<div id="btnCate" class="btn-black send_message test">확인</div>
										</ul>
										</li>
								</ul>
							</div>
							
							<!-- 검색 기능 -->
							<div class="search-part">
<!-- 1130 현희 class 추가  -->
								<a class="menuname searchIcon" href="#"></a> <!-- 처음 돋보기 -->
								<div class="search-box"> <!-- 돋보기 클릭 후 입력창 -->
									<input id="txtSearch" type="text" name="txt" placeholder="Search" />
									<input type="hidden" name="sMp" value="${ sMp }" />
									<input id="btnSearch" type="submit" name="submit" value=" " />
								</div>
							</div>
							
							<!-- 로그인/회원가입 버튼 -->
							<div class="header-info-inner">
								<div class="book-table header-collect book-md">
									<a href="/user/userLogin.do">
										<img id="userlogin" src="/images/common/login.png" alt="">
										<span id="userloginspan">LOGIN / JOIN</span>
									</a>
								</div>
								<div class="shop-cart header-collect">
									<a href="#"></a>
								</div> 
							</div>
							
						</form>
					
					</div>
					<!-- 메뉴헤더 끝 -->
					
					<!-- 나중에 반응형 수정  -->
<!-- 					<div class="menu-icon"> -->
<!-- 						<a href="#" class="hambarger"> -->
<!-- 						<span class="bar-1"></span> -->
<!-- 						<span class="bar-2"></span> -->
<!-- 						<span class="bar-3"></span> -->
<!-- 						</a> -->
<!-- 					</div> -->
<!-- 					<div class="book-table header-collect book-sm"> -->
<!-- 						<div class="header-info"> -->
<!-- 							<div class="menu-main"> -->
<!-- 								<ul> -->
<!-- 									먹포 -->
<!-- 									<li class="has-child" > -->
<!-- 										<a id="mpsection" href="index.html">포장</a> -->
<!-- 										<ul class="drop-nav"> -->
<!-- 											<li><input type="checkbox">음식 전체</li> -->
<!-- 											<li><input type="checkbox">한식</li> -->
<!-- 											<li><input type="checkbox">양식</li> -->
<!-- 											<li><input type="checkbox">중식</li> -->
<!-- 											<li><input type="checkbox">일식</li> -->
<!-- 										</ul> -->
<!-- 									</li> -->
<!-- 									지역 메뉴 -->
<!-- 									<li class="mega-menu">  -->
<!-- 										<a href="#">지역</a> -->
<!-- 										<ul class="drop-nav">  -->
<!-- 											<li> -->
<!-- 												<div class="drop-mega-part">  -->
<!-- 													<div class="row">  -->
<!-- 														<div class="col-md-6 col-sm-12 col-xs-12">  -->
<!-- 															<ul id="location1"> -->
<!-- 																<li>> 서울</li> -->
<!-- 																<li>> 대전</li> -->
<!-- 																<li>> 충남</li> -->
<!-- 																<li>> 경기</li> -->
<!-- 																<li>> 광주</li> -->
<!-- 																<li>> 부산</li> -->
<!-- 															</ul> -->
<!-- 														</div> -->
<!-- 														<div class="col-md-6 col-sm-12 col-xs-12"> -->
<!-- 															<ul id="location2"> -->
<!-- 															<li><input type="checkbox" />Ready Player One</li> -->
<!-- 															<li><input type="checkbox" />Ernest Cline</li> -->
<!-- 															<li><input type="checkbox" />Ender's Game</li> -->
<!-- 															<li><input type="checkbox" />Orson Scott Card</li> -->
<!-- 															<li><input type="checkbox" />Americam God</li> -->
<!-- 															<li><input type="checkbox" />Neil Gaiman</li> -->
<!-- 															<li><input type="checkbox" />The Great Gatsby</li> -->
<!-- 															</ul> -->
<!-- 														</div> -->
<!-- 													</div> -->
<!-- 												</div> -->
<!-- 											</li> -->
<!-- 										</ul> -->
<!-- 									</li> -->
								
<!-- 									카테고리 메뉴 -->
<!-- 									<li class="has-child"> -->
<!-- 										<a href="index.html">카테고리</a> -->
<!-- 										<ul class="drop-nav"> -->
<!-- 											<li><input type="checkbox">음식 전체</li> -->
<!-- 											<li><input type="checkbox">한식</li> -->
<!-- 											<li><input type="checkbox">양식</li> -->
<!-- 											<li><input type="checkbox">중식</li> -->
<!-- 											<li><input type="checkbox">일식</li> -->
<!-- 										</ul> -->
<!-- 									</li> -->
<!-- 								</ul> -->
<!-- 							</div> -->
<!-- 							<div class="search-part"> -->
<!-- 								<a href="#"></a> -->
<!-- 								<div class="search-box"> -->
<!-- 									<input type="text" name="txt" placeholder="Search"> -->
<!-- 									<input type="button" name="submit" value=" "> -->
<!-- 								</div> -->
<!-- 							</div> -->
							 
<!-- 							<div class="header-info-inner"> -->
<!-- 								<div class="book-table header-collect book-md"> -->
<!-- 									<a href="#"> -->
<!-- 										<img id="userlogin" src="/images/common/login.png" alt=""> -->
<!-- 										<span id="userloginspan">LOGIN / JOIN</span> -->
<!-- 									</a> -->
<!-- 								</div> -->
<!-- 								<div class="shop-cart header-collect"> -->
<!-- 									<a href="#"></a> -->
<!-- 								</div> -->
<!-- 							</div> -->
<!-- 						</div> -->
<!-- 					</div>					 -->
					<!-- 반응형 메뉴 끝 -->
					
				</div>
			</div>
		</div>
	</header>
	<!-- End Header -->

</body>
</html>