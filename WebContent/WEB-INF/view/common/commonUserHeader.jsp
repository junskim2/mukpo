<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	width: 20px;
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
	max-width: 50%;
	position: static;
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
	margin-left: 20px;
}

.menu-main li.mega-menu .drop-nav {
	width: 450px;
	top: 70px;
	/* top: 100%; */
}

.menu-main li.mega-menu .drop-nav li a {
	/* 수정 글씨 위치때문 */
	/* margin-bottom: 12px; */
	margin-bottom: 0px;
}

.logo>a {
	/* position: absolute; */
	position: static;
}

.header-info {
	float: left;
	/* 수정 검색 추가하려고 늘려놓음 */
	width: 80%;
}

.header-info-inner {
	/* 수정 로그인 위치 수정 */
	padding: 15px;
}

.search-part {
	/* 수정 패딩 주기 위해 마진죽임 */
	padding: 10px;
	/* 마진 수정 */
	margin-left: 10px;
}

.search-box {
	/* 왼쪽정렬..ㅎㅎ 수정 */
	right: auto;
	/* right: 0px; */
	left: 0px;
	/* 검색창에 맞춰 크기 줄임 추후 또 수정할꺼 */
	/* width: 100%; */
	width: 59%;
}

.drop-nav li {
	font-size: 17px;
}
/* 1130 현희 css추가 */
/* 지역, 카테고리 css */
.menuname {
	padding: 15px;
	font-size: 20px;
	margin-left: 20px;
	display: block;
	position: relative;
	color: #ffffff;
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
	color: #e4b95b;
}
/* 1130 현희 지역 확인버튼  */
#btnLocation, #btnCate {
	width: 100%;
	margin: 15px 0px;
	min-width: 0px;
}

#categorydrop, #locationdrop {
	/* 1130 현희 버튼 추가함으로써 패딩값 추가 */
	padding-bottom: 0px;
}
/* 1130 현희 돋보기에 클래스 추가하면서 땡그라미 없앰 */
.searchIcon:before {
	content: "";
}
/* 신주용 다른 지역 */
.another {
	display: none;
}
/* 1203 현희 헤더 스크롤 고정 */
header {
	position: sticky;
	z-index: 9999;
	width: 100%;
	top : 0;
}

.header-part.header-on {
	left: unset;
	top: unset;
	position: unset;
}
/* 1204 현희 스크롤 내렸을 때 추가될 클래스 */
.header-part.header-on.mainscroll {
	top: -60px;
}

nav {
	width: 100%;
}
/* 1204 현희 메인 아닐 때 추가될 클래스 */
.header-part.header-on.otherscroll {
	top: 0px;
	left: 0px;
	background-color: black;
}
.header-bottom {
	float: unset;
	position : unset;
}
.header-part .container {
	position: unset;
}
.header-on {
	background-color: wheat;
	border-radius: 15px;
}
.map-address {
	margin-top: 50px;
}
</style>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript">
	// 1130 현희 스크립트 추가
	$(function() {
		// 1130 현희 한개만 열리게
		// 지역, 카테고리 클릭하면 하단메뉴 뜨게 하는 소스
		$(".menuname").on(
				"click",
				function() {
					var drop = $(".menuname").parent().find(">.drop-nav");
					if (drop.is(":visible")) {
						$(".menuname").parent().find(">.drop-nav").css(
								"display", "none");
						$(this).parent().find(">.drop-nav").css("display",
								"block");
					} else {
						$(this).parent().find(">.drop-nav").css("display",
								"block");
					}

				}); // END .menuname each

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
		$('.cateAll').bind('change', function(event) {
			event.preventDefault();
			event.stopPropagation();

			//전체선택 조건식
			if ($(this).is(":checked")) {
				$('.foodchk').addClass('checked');
				$('.foodchk').prop("checked", true);
			} else {
				$('.foodchk').removeClass('checked');
				$('.foodchk').prop("checked", false);
			}

		});

		// 전체 선택이 되어있지 않을경우 전체선택 체크박스 해제됨
		$('.foodchk').click(function(){
		if ($('input:checkbox[name=sCate2]:checked').length != 8) {
			$('.cateAll').removeClass('checked');
			$('.cateAll').prop(":checked", false);
			}
			
		});
		
		//신주용 추가 지역 클릭시 해당 시군구 표시
		//서울
		$("#selecgg").click(function() {
			$(".selecgg").css("display", "block");
			$(".Gyeonggi").css("display", "none");
			$(".Chungcheongnam").css("display", "none");
			$(".Daejeon").css("display", "none");
			$(".Gwangju").css("display", "none");
			$(".Busan").css("display", "none");
		});
		//경기
		$("#Gyeonggi")
				.click(
						function() {
							//경기도 시군구 불러오기
							$.ajax({ url : "/store/sigunguSelect.do", //controll에 보낼 url주소
									 type : "POST", //post방식으로 보내겠다
									 dataType : "json", //제이슨 형식으로 받아오겠다
									 data : {"sSido" : "경기도"},
									 success : function(data) {//값을 성공적으로 받아왔을 때를 기술. (data) 값들이 담겨있다.
									if (data != null) {
									$('#location2').html("");
									$(data).each(function(index,item) {
									var tag = ""; //var tag 선언 주용1206 수정
									tag += "<li><div class='jq-checkbox' unselectable='on' style='user-select: none; display: inline-block; position: relative; '><input type='checkbox' class='sigungu' name='sSigungu2' value='"+this.sSigungu+"' style='position: absolute; z-index: -1; opacity: 0; margin: 0px; padding: 0px;'><div class='jq-checkbox__div'></div></div>"
									+this.sSigungu+"</li>";
									$('#location2').append(tag); //#tblList에 tag값을 붙임
										
									
									});
									}
										
										
											$(".Gyeonggi").css("display", "block");
											$(".selecgg").css("display", "none");
											$(".Chungcheongnam").css("display", "none");
											$(".Daejeon").css("display", "none");
											$(".Gwangju").css("display", "none");
											$(".Busan").css("display", "none");
											
											//1206 주용 시군구 클릭시 체크 체크 이벤트
											$('#location2 > li').on('click', function(){
												$(this).find('div').addClass('checked');
												$(this).find('input').prop("checked",true);
											});
											
										},
										error : function(error) {
											alert("error" + error); //에러 던지기
										}
									});

						
						});
		//충남
		$("#Chungcheongnam").click(function() {
			$(".Chungcheongnam").css("display", "block");
			$(".Gyeonggi").css("display", "none");
			$(".selecgg").css("display", "none");
			$(".Daejeon").css("display", "none");
			$(".Gwangju").css("display", "none");
			$(".Busan").css("display", "none");
		});
		//대전
		$("#Daejeon").click(function() {
			$(".Daejeon").css("display", "block");
			$(".Chungcheongnam").css("display", "none");
			$(".Gyeonggi").css("display", "none");
			$(".selecgg").css("display", "none");
			$(".Gwangju").css("display", "none");
			$(".Busan").css("display", "none");
		});
		$("#Gwangju").click(function() {
			$(".Gwangju").css("display", "block");
			$(".Daejeon").css("display", "none");
			$(".Chungcheongnam").css("display", "none");
			$(".Gyeonggi").css("display", "none");
			$(".selecgg").css("display", "none");
			$(".Busan").css("display", "none");
		});
		$("#Busan").click(function() {
			$(".Busan").css("display", "block");
			$(".Gwangju").css("display", "none");
			$(".Daejeon").css("display", "none");
			$(".Chungcheongnam").css("display", "none");
			$(".Gyeonggi").css("display", "none");
			$(".selecgg").css("display", "none");
		});
		// 1204 현희 스크롤
		var link = document.location.href; // 주소 전체 받아오기
		var mainlink = link.split("/"); // /를 기준으로 나누기
		var mainurl = mainlink[mainlink.length - 1]; // 마지막 userPmain.do 이 부분을 가져오기
		if (mainurl == "userPmain.do" || mainurl == "userMmain.do") { // 메인일 때
			$("header > div.header-part").removeClass("otherscroll");
			$(window).scroll(function() {
				var sc = $(window).scrollTop();
				if (sc > 10) {
					$("header > div.header-part").addClass("mainscroll");
				} else {
					$("header > div.header-part").removeClass("mainscroll");
				}
			});
		} else { // 메인이 아닐 때
			$(function() {
				// 			alert("?");
				$("header > div.header-part").addClass("otherscroll");
			});

		}
	}); // END function
	

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
						<a href="#"><img id="logo1" src="/images/common/로고1.png"
							alt=""></a>
					</div>

					<!-- 메뉴 헤더 -->
					<!-- 현희 헤더(먹포 지역 카테고리) a태그-> span 으로 수정 -->
					<div class="header-info">
						<form method="post" action="/store/storeList.do">
							<div class="menu-main">
								<ul>
									<!-- 먹포 -->
									<li class="mega-menu" id="mpsectionclass"><span
										id="mpsection"> <img id="mparrow"
											src="/images/common/mp-arrow3.png"> <!-- 1130 현희 sPM -> sMp 이름통일 -->
											<c:if test="${ sMp == 'M' }"> 테이블 </c:if> <c:if
												test="${ sMp == 'P' }"> 포장 </c:if> <!-- 1130 현희 sPM -> sMp 이름통일  끝 -->
									</span>
										<ul class="drop-nav" id="mpdrop">
											<li><a href="/common/userMmain.do">먹고갈래?</a></li>
											<li><a href="/common/userPmain.do">포장할래?</a></li>
										</ul></li>

									<!-- 지역 메뉴 -->
									<li class="mega-menu"><span class="menuname">지역</span>
										<ul class="drop-nav" id="locationdrop">
											<li>
												<div class="drop-mega-part">
													<div class="row">
<!-- 1205 주용추가 -->													
															<!-- 시도 출력 -->
														<div class="col-md-6 col-sm-12 col-xs-12"
															id="location1div">
															<input type="hidden" value="경기도" name="sSido" />
															<ul id="location1">
																<li id="selecgg">서울<span>></span></li>
																<li id="Gyeonggi">경기<span>></span></li>
																<li id="Chungcheongnam">충남<span>></span></li>
																<li id="Daejeon">대전<span>></span></li>
																<li id="Gwangju">광주<span>></span></li>
																<li id="Busan">부산<span>></span></li>
															</ul>
														</div>
														<!-- 1201 주용 경기도 시군구 추가-->
														<div class="col-md-6 col-sm-12 col-xs-12 another Gyeonggi"
															id="location2div">
															<ul id="location2">


															</ul>
														</div>

														<div class="col-md-6 col-sm-12 col-xs-12 selecgg"
															id="location2div">
															<ul>
																<li><input type="checkbox" name="" value="" />서울전체</li>

															</ul>
														</div>
														<div
															class="col-md-6 col-sm-12 col-xs-12 another Chungcheongnam"
															id="location2div">
															<ul>
																<li><input type="checkbox" name="" value="" />충남전체</li>

															</ul>
														</div>
														<div class="col-md-6 col-sm-12 col-xs-12 another Daejeon"
															id="location2div">
															<ul>
																<li><input type="checkbox" name="" value="" />대전전체</li>

															</ul>
														</div>
														<div class="col-md-6 col-sm-12 col-xs-12 another Gwangju"
															id="location2div">
															<ul>
																<li><input type="checkbox" name="" value="" />광주</li>

															</ul>
														</div>
														<div class="col-md-6 col-sm-12 col-xs-12 another Busan"
															id="location2div">
															<ul>
																<li><input type="checkbox" name="" value="" />부산</li>

															</ul>
														</div>

													</div>
												</div>
											</li>
											<!-- 1130 현희 버튼 추가 -->
											<div id="btnLocation" class="btn-black send_message">확인</div>
										</ul></li>

									<!-- 1130 현희 카테고리 내용 수정 -->
									<!-- 카테고리 메뉴 -->
									<li class="mega-menu"><span class="menuname">카테고리</span>
										<ul class="drop-nav" id="categorydrop">
											<li id="cataAll2"><input type="checkbox" id="cateAll"
												class='cateAll' value="음식전체" />음식 전체</li>
											<li><input type="checkbox" name="sCate2" class='foodchk'
												value="뷔페식" />뷔페식</li>
											<li><input type="checkbox" name="sCate2" class='foodchk'
												value="탕류" />탕류</li>
											<li><input type="checkbox" name="sCate2" class='foodchk'
												value="카페" />키페</li>
											<li><input type="checkbox" name="sCate2" class='foodchk'
												value="한식" />한식</li>
											<li><input type="checkbox" name="sCate2" class='foodchk'
												value="일식" />일식</li>
											<li><input type="checkbox" name="sCate2" class='foodchk'
												value="패스트푸드" />패스트푸드</li>
											<li><input type="checkbox" name="sCate2" class='foodchk'
												value="중국식" />중국식</li>
											<li><input type="checkbox" name="sCate2" class='foodchk'
												value="BGM" />BGM</li>
											<!-- 1130 현희 버튼 추가 -->
											<div id="btnCate" class="btn-black send_message test">확인</div>
										</ul></li>
								</ul>
							</div>

							<!-- 검색 기능 -->
							<div class="search-part">
								<!-- 1130 현희 class 추가  -->
								<a class="menuname searchIcon" href="#"></a>
								<!-- 처음 돋보기 -->
								<div class="search-box">
									<!-- 돋보기 클릭 후 입력창 -->
									<input id="txtSearch" type="text" name="sName"
										placeholder="Search" /> <input type="hidden" name="sMp"
										value="${ sMp }" /> <input id="btnSearch" type="submit"
										name="submit" value=" " />
								</div>
							</div>

							<!-- 로그인/회원가입 버튼 -->
							<div class="header-info-inner">
								<div class="book-table header-collect book-md">
									<a href="/user/userLogin.do"> <img id="userlogin"
										src="/images/common/login.png" alt=""> <span
										id="userloginspan">LOGIN / JOIN</span>
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