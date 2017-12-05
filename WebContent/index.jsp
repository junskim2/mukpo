<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="plugin/bootstrap/bootstrap.css" rel="stylesheet">
<link href="plugin/bootstrap/datepicker.css" rel="stylesheet">
<link href="plugin/font-awesome/font-awesome.css" rel="stylesheet">
<link href="plugin/form-field/jquery.formstyler.css" rel="stylesheet">
<link href="plugin/revolution-plugin/extralayers.css" rel="stylesheet">
<link href="plugin/revolution-plugin/settings.css" rel="stylesheet">
<link href="plugin/owl-carousel/owl.carousel.css" rel="stylesheet">
<link href="plugin/owl-carousel/owl.theme.default.css" rel="stylesheet">
<link href="plugin/slick-slider/slick-theme.css" rel="stylesheet">
<link href="plugin/magnific/magnific-popup.css" rel="stylesheet">
<link href="plugin/scroll-bar/jquery.mCustomScrollbar.css" rel="stylesheet">
<link href="plugin/animation/animate.min.css" rel="stylesheet">
<link href="css/theme.css" rel="stylesheet">
<link href="css/responsive.css" rel="stylesheet">

<title>먹포 - 먹고갈래? 포장할래?</title>
<style type="text/css">
#mainLogo2 {
   height: 80%;
   width: 80%;
}

#mainLogo {
   text-align: center;
}

#UserMmain {
   height: 500px;
   position: absolute;
   width: 45%;
   cursor: pointer;
}

#UserPmain {
   height: 500px;
   position: absolute;
   width: 45%;
   right: 8px;
   cursor: pointer;
}

#body {
   margin: 100px;
}

.arrow {
   width: 20px;
}

#mainLogin {
   background-color: #212130;
}

#test {
   position: absolute;
   left: 50%;
   top: -59px;
   width: 254px;
   background: url('images/pattern-dark.png') no-repeat center;
   -webkit-transform: translateX(-50%);
   -moz-transform: translateX(-50%);
   -ms-transform: translateX(-50%);
   -o-transform: translateX(-50%);
   transform: translateX(-50%);
   height: 59px;
   z-index: 30;
   text-align: center;
   padding: 10px 0 0 0;
}

#logo3 {
   width: 150px;
}

.footer-part {
   float: left;
   width: 100%;
   background: #20202f;
   position: relative;
   padding: 10px 0 0 0;
   color: #f6f0f2;
   font-family: 'Graviola-Regular';
   font-size: 15px;
}
</style>
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>
<!-- 로그인 아이디확인 -->
<input type="hidden" id="mId" name="mId" value="${ sessionScope.userName }" />
   <div id="body">
      <div id="UserMmain"></div>
      <div id="UserPmain"></div>
      <div id="mainLogo">
         <img id="mainLogo2" src="images/common/로고2.png">
      </div>
   </div>

   <!-- Start Footer -->
   <footer> <!--    data-wow-duration="1000ms" data-wow-delay="300ms" fadeInDown  wow-->
   <div class="footer-part">
 <!-- 1204 아름 로그인했을시 안보이게 시작 -->
   <c:if test="${ empty sessionScope.userName }">
      <div class="icon-find" id="test">
         <a href="#"> <img class="arrow"
            src="/images/common/down-arrow.png" alt=""> <span>로그인/회원가입</span>
         </a>
      </div>
    </c:if>
      <img src="images/common/ㄴㅇㄹ.png" id="logo3" />
      <a>ABOUT</a> &nbsp; | &nbsp; <!-- 먹포에 관한 설명 페이지로 이동 -->
      <a href="store/storeBossLogin.do">BOSS</a> &nbsp; | &nbsp;  <!-- 사장님 로그인화면으로 이동 -->
      <a id="mypage" style="cursor:pointer">MYPAGE</a> &nbsp; | &nbsp;  <!-- 로그인 안했을 경우, 로그인/회원가입 페이지로 이동 // 로그인 했을 경우 해당 사용자의 마이페이지로 이동 -->
      <a>NOTICE</a> <!-- 공지사항 페이지로 이동 -->
      
      <!-- 로그인 회원가입 클릭하면 나오는 화면 -->
      <div class="location-footer-map">
		<c:if test="${ empty sessionScope.userName  }">
         <div class="icon-find-location">         
            <a href="/#"> <img class="arrow" src="/images/common/up-arrow.png"
               alt=""> <br />
                <span>로그인/회원가입</span>
            </a>
         </div>
          </c:if>
<!-- 1204 아름 로그인했을시 안보이게 끝 -->
         <section id="mainLogin" class="home-icon login-register bg-skeen">
         <div class="container">
            <div class="row">
               <div class="col-md-6 col-sm-6 col-xs-12 wow fadeInDown"
                  data-wow-duration="1000ms" data-wow-delay="300ms">
                  <div class="login-wrap form-common">
                     <div class="title text-center">
                        <h3 class="text-coffee">Login</h3>
                     </div>
                     <form action="common/home.do" class="login-form" method="post" name="login">
                        <div class="row">
                           <div class="col-md-12 col-sm-12 col-xs-12">
                              <input type="text" name="mId"
                                 placeholder="Username or email address" class="input-fields">
                           </div>
                           <div class="col-md-12 col-sm-12 col-xs-12">
                              <input type="password" name="mPw" placeholder="********"
                                 class="input-fields">
                           </div>
                           <div class="col-md-12 col-sm-12 col-xs-12">
                              <div class="row">
                                 <div class="col-md-6 col-sm-6 col-xs-12">
                                    <label><input type="checkbox" name="chkbox">Remember
                                       me</label>
                                 </div>
                                 <div class="col-md-6 col-sm-6 col-xs-12">
                                    <a href="#" class="pull-right">Lost your password</a>
                                 </div>
                              </div>
                           </div>
                           <div class="col-md-12 col-sm-12 col-xs-12">
                              <input type="submit" name="submit" value="LOGIN"
                                 class="button-default button-default-submit">
                           </div>
                        </div>
                     </form>
                     <div class="divider-login">
                        <hr>
                        <span>Or</span>
                     </div>
                     <div class="row">
                        <div class="col-md-6 col-sm-12 col-xs-12">
                           <a href="#" class="facebook-btn btn-change button-default"><i
                              class="fa fa-facebook"></i>Facebook Connect</a>
                        </div>
                        <div class="col-md-6 col-sm-12 col-xs-12">
                           <a href="#" class="tweeter-btn btn-change button-default"><i
                              class="fa fa-twitter"></i>Twitter Connect</a>
                        </div>
                     </div>
                  </div>
               </div>
<!-- 주용 회원가입 db연결 -->
               <div class="col-md-6 col-sm-6 col-xs-12 wow fadeInDown"
                  data-wow-duration="1000ms" data-wow-delay="300ms">
                  <div class="register-wrap form-common">
                     <div class="title text-center">
                        <h3 class="text-coffee">Register</h3>
                     </div>
                     <form action="/user/insertMemberJoin.do"class="register-form" method="post" name="register">
                        <div class="row">
                           <div class="col-md-12 col-sm-12 col-xs-12">
                              <input type="text" name="mId" placeholder="아이디"
                                 class="input-fields">
                           </div>
                           <div class="col-md-12 col-sm-12 col-xs-12">
                              <input type="password" name="mPw" placeholder="비밀번호"
                                 class="input-fields">
                           </div>
                            <div class="col-md-12 col-sm-12 col-xs-12">
                              <input type="password" placeholder="비밀번호 확인"
                                 class="input-fields">
                           </div>
                           <div class="col-md-12 col-sm-12 col-xs-12">
                              <input type="text" name="mName" placeholder="이름"
                                 class="input-fields">
                           </div>
                           <div class="col-md-12 col-sm-12 col-xs-12">
                              <input type="text" name="mTel" placeholder="전화번호"
                                 class="input-fields">
                           </div>
                           <div class="col-md-12 col-sm-12 col-xs-12">
                              <input type="text" name="mBorn"
                                 placeholder="yyyy/mm/dd" class="input-fields">
                           </div>
                           <div class="col-md-12 col-sm-12 col-xs-12">
                              <input type="text" name="mEmail"
                                 placeholder="alitfn58@gmail.com" class="input-fields">
                           </div>
                           <div class="col-md-12 col-sm-12 col-xs-12">
                              <input type="submit" name="submit"
                                 class="button-default button-default-submit"
                                 value="RegIster now">
                           </div>
                        </div>
                     </form>
                  </div>
               </div>
            </div>
         </div>
         </section>
      </div>
      </div>
   </footer>
   <!-- End Footer -->

   <script src="js/jquery.min.js"></script>
   <script src="plugin/bootstrap/bootstrap.min.js"></script>
   <script src="plugin/bootstrap/bootstrap-datepicker.js"></script>
   <script
      src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAf6My1Jfdi1Fmj-DUmX_CcNOZ6FLkQ4Os"></script>
   <script src="plugin/form-field/jquery.formstyler.min.js"></script>
   <script src="plugin/revolution-plugin/jquery.themepunch.plugins.min.js"></script>
   <script
      src="plugin/revolution-plugin/jquery.themepunch.revolution.min.js"></script>
   <script src="plugin/owl-carousel/owl.carousel.min.js"></script>
   <script src="plugin/slick-slider/slick.min.js"></script>
   <script src="plugin/isotop/isotop.js"></script>
   <script src="plugin/isotop/packery-mode.pkgd.min.js"></script>
   <script src="plugin/magnific/jquery.magnific-popup.min.js"></script>
   <script src="plugin/scroll-bar/jquery.mCustomScrollbar.concat.min.js"></script>
   <script src="plugin/animation/wow.min.js"></script>
   <script src="plugin/parallax/jquery.stellar.js"></script>
   <script src="js/app.js"></script>
   <script src="js/script.js"></script>
<!-- 1204 아름 로그인여부 확인 -->
   <script src="/js/common/loginCheck.js"></script>
</body>
</html>