<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Checkout - Laboom</title>
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
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <style type="text/css">
    	.jq-selectbox__select{height:30px; margin-left:-30px;}
    	.jq-selectbox__select-text{line-height:30px;}
    	.jq-selectbox__trigger-arrow{top:5px;}
    	.button-default{line-height:30px}
    	.select-dropbox{height:21px;}
    	.button-default{min-width:100px;padding:0px;}
    	.shop-checkout-left{padding:40px 52px 34px;} 
    	.shop-checkout-right{background-color:#F4F2ED}
    	.btn-main .modi{min-width:100px; height:30px; line-height:30px;}
    	.portfolioFilter{margin-bottom:40px;}
    	#bosstb {
   box-shadow: 5px 5px 5px 5px lightgray;
   color: #999999;
   background-color: white;
   padding: 10px;
   font-size: 10px;
   clear: both;
   border-radius: 10px;
}
.menu-list h5 span{right:-11px;}
table.shop-cart-table td {
   padding: 6px 0;
}
.menu-wrapper{
	width:130%;
}
.portfolioFilter{
margin-left:-18px;

}

.portfolioFilter-inner{
	width:76%;
}
table.shop-cart-table td {
   padding: 10px 0;
}

tr th {
   padding: 5px 10px;
   border: 1px solid #797979;
}

#addbtn {
	display: inline-block;
}
    	
    </style>
    <script src="https://code.jquery.com/jquery-3.2.1.js"></script>

<script type="text/javascript">
   $(function() {
      $('#menumanegement').click(function() {  //메뉴 관리 화면
    	  
         $('#modifymenu').css('display', 'none');   //메뉴 수정 화면
         $('#addmenu').css('display', 'none');		//메뉴 등록 화면
         $('#managere').css('display', 'none');		//예약 관리 화면
         $('#detail').css('display', 'none');		//메뉴 상세 화면
         $('#storedelete').css('display','none');	//메장 삭제 화면
         $('#storemodify').css('display','none');	//메장 수정 화면
         $('#list').css('display', 'block');		// 메뉴 관리 화면
      });
      
      $('#reservebtn').click(function() {     // 예약 관리 화면 클릭 시
    	  $('#modifymenu').css('display', 'none');   //메뉴 수정 화면
          $('#addmenu').css('display', 'none');		//메뉴 등록 화면
          $('#managere').css('display', 'block');		//예약 관리 화면
          $('#detail').css('display', 'none');		//메뉴 상세 화면
          $('#storedelete').css('display','none');	//메장 삭제 화면
          $('#storemodify').css('display','none');	//메장 수정 화면
          $('#list').css('display', 'none');		// 메뉴 관리 화면
       });
      
      $('#storedeletebtn').click(function() {     // 삭제 관리 화면  클릭시 
    	  $('#modifymenu').css('display', 'none');   //메뉴 수정 화면
          $('#addmenu').css('display', 'none');		//메뉴 등록 화면
          $('#managere').css('display', 'none');		//예약 관리 화면
          $('#detail').css('display', 'none');		//메뉴 상세 화면
          $('#storedelete').css('display','block');	//메장 삭제 화면
          $('#storemodify').css('display','none');	//메장 수정 화면
          $('#list').css('display', 'none');		// 메뉴 관리 화면
       });
      
      
      $('#storemodifybtn').click(function() {     // 수정 관리 화면 클릭시
    	  $('#modifymenu').css('display', 'none');   //메뉴 수정 화면
          $('#addmenu').css('display', 'none');		//메뉴 등록 화면
          $('#managere').css('display', 'none');		//예약 관리 화면
          $('#detail').css('display', 'none');		//메뉴 상세 화면
          $('#storedelete').css('display','none');	//메장 삭제 화면
          $('#storemodify').css('display','block');	//메장 수정 화면
          $('#list').css('display', 'none');		// 메뉴 관리 화면
       });
      $('.menu-detail').click(function() {        //메뉴 상세 보기 클릭시
    	  $('#modifymenu').css('display', 'none');   //메뉴 수정 화면
          $('#addmenu').css('display', 'none');		//메뉴 등록 화면
          $('#managere').css('display', 'none');		//예약 관리 화면
          $('#detail').css('display', 'block');		//메뉴 상세 화면
          $('#storedelete').css('display','none');	//메장 삭제 화면
          $('#storemodify').css('display','none');	//메장 수정 화면
          $('#list').css('display', 'none');		// 메뉴 관리 화면
      });
      $('#addbtn').click(function() {				//메뉴 등록 화면 클릭시
    	  $('#modifymenu').css('display', 'none');   //메뉴 수정 화면
          $('#addmenu').css('display', 'block');		//메뉴 등록 화면
          $('#managere').css('display', 'none');		//예약 관리 화면
          $('#detail').css('display', 'none');		//메뉴 상세 화면
          $('#storedelete').css('display','none');	//메장 삭제 화면
          $('#storemodify').css('display','none');	//메장 수정 화면
          $('#list').css('display', 'none');		// 메뉴 관리 화면

      });
     
      
      $('.menu-modify').click(function(){			//메뉴 수정 화면
    	  $('#modifymenu').css('display', 'block');   //메뉴 수정 화면
          $('#addmenu').css('display', 'none');		//메뉴 등록 화면
          $('#managere').css('display', 'none');		//예약 관리 화면
          $('#detail').css('display', 'none');		//메뉴 상세 화면
          $('#storedelete').css('display','none');	//메장 삭제 화면
          $('#storemodify').css('display','none');	//메장 수정 화면
          $('#list').css('display', 'none');		// 메뉴 관리 화면
      });


      $('.menu').mouseenter(function() {

         $(this).children('.menu-list').css('display', 'none');
         $(this).children('.rollover').css('display', 'block');

      });
      $('.menu').mouseleave(function() {
         $(this).children('.rollover').css('display', 'none');
         $(this).children('.menu-list').css('display', 'block');

      });

   
   });
</script>
</head>

                
<body>
    <!-- Page pre loader -->
    <div id="pre-loader">
        <div class="loader-holder">
            <div class="frame">
                <img src="images/Preloader.gif" alt="Laboom" />
            </div>
        </div>
    </div>
    <div class="wrapper">
        <!-- Start Header -->
        <!-- End Header -->
        <!-- Start Main -->
        <main>
            <div class="main-part">
                <!-- Start Breadcrumb Part -->
                
                <!-- End Breadcrumb Part -->
                <section style="background-color:white;" class="home-icon shop-cart bg-skeen">
                    
                    <div class="container">
                        
                        <div class="row"> 
                            
                            <div class="col-md-3 col-sm-5 col-xs-12 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="300ms">
<img src="images/img10.png" alt="Laboom" />  <FONT SIZE="6">매장 설정</FONT> 
                                <div style="background-color:#F4F2ED;box-shadow: 4px 4px 3px #000;" class="shop-checkout-left">
                                  <h4>매장정보관리</h4>
                                  <h6 id="storemodifybtn">-매장 정보 수정</h6>
                                  <h6 id="storedeletebtn">-매장 삭제</h6> 
                                  <h4 id="menumanegement">메뉴 관리</h4>
                                  <h4 id="reservebtn">예약 관리</h4>
                                </div>
                            </div>
                            <div style="margin-top: 88px;"class="col-md-9 col-sm-7 col-xs-12 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="300ms">
                            <div class="menu-wrapper" id="list" style="display: none">
                           <div class="portfolioFilter">
                              <input type='image' src='./images/add.png' id="addbtn"
                                 style="width: 6%; height: 6%;">&nbsp;&nbsp;
                              <div class="portfolioFilter-inner">
                                 <a href="javascript:;" data-filter="*" class="current">All</a>
                                 <a href="javascript:;" data-filter=".breakfast">BREAKFAST</a>
                                 <a href="javascript:;" data-filter=".dessert">DESSERT</a> <a
                                    href="javascript:;" data-filter=".dinner">DINNER</a> <a
                                    href="javascript:;" data-filter=".freshfood">FRESHFOOD</a> <a
                                    href="javascript:;" data-filter=".lunch">LUNCH</a>
                              </div>
                           </div>
                           <div class="portfolioContainer row"
                              style="margin-left: 8%; margin-right: 8%" id="menutot">
                              <div
                                 class="col-md-6 col-sm-6 col-xs-12 isotope-item breakfast menu">
                                 <div class="menu-list">
                                    <span class="menu-list-product"> <img
                                       src="images/img3.png" alt="">
                                    </span>
                                    <h5>
                                       LASAL CHEESE <span>$ 15.00</span>
                                    </h5>
                                    <p>Pellentesque habitant morbi tristique senectus et
                                       netus et malesuada fames</p>
                                 </div>

                                 <div class="rollover" style="display: none">
                                    <div style="height:151.8px;"class="col-md-12 col-sm-12 col-xs-12">
                                       <a href="#" class="btn-main btn-shadow menu-detail" >상세보기</a> 
                                       <a href="#" class="btn-main btn-shadow menu-modify">수정</a>
                                    </div>
                                 </div>
                              </div>
                              <div
                                 class="col-md-6 col-sm-6 col-xs-12 isotope-item lunch menu">
                                 <div class="menu-list">
                                    <span class="menu-list-product"> <img
                                       src="images/img4.png">
                                    </span>
                                    <h5>
                                       JUMBO CARB asdfasdf<span>$ 25.00</span>
                                    </h5>
                                    <p>Pellentesque habitant morbi tristique senectus et
                                       netus et malesuada fames</p>
                                 </div>
                                 <div class="rollover" style="display: none">
                                    <div style="height:151.8px;"class="col-md-12 col-sm-12 col-xs-12">
                                       <a href="#" class="btn-main btn-shadow menu-detail">상세보기</a> <a
                                          href="#" class="btn-main btn-shadow menu-modify">수정</a>
                                    </div>
                                 </div>
                              </div>
                              <div
                                 class="col-md-6 col-sm-6 col-xs-12 isotope-item dessert menu">
                                 <div class="menu-list">
                                    <span class="menu-list-product"> <img
                                       src="images/img5.png" alt="">
                                    </span>
                                    <h5>
                                       SURMAI CHILLI <span>$ 15.00</span>
                                    </h5>
                                    <p>Pellentesque habitant morbi tristique senectus et
                                       netus et malesuada fames</p>
                                 </div>
                                 <div class="rollover" style="display: none">
                                    <div style="height:151.8px;"class="col-md-12 col-sm-12 col-xs-12">
                                       <a href="#" class="btn-main btn-shadow menu-detail">상세보기</a> <a
                                          href="#" class="btn-main btn-shadow menu-modify">수정</a>
                                    </div>
                                 </div>
                              </div>
                              <div
                                 class="col-md-6 col-sm-6 col-xs-12 isotope-item dinner menu">
                                 <div class="menu-list">
                                    <span class="menu-list-product"> <img
                                       src="images/img6.png" alt="">
                                    </span>
                                    <h5>
                                       CAPO STEAK dfasasd<span>$ 45.00</span>
                                    </h5>
                                    <p>Pellentesque habitant morbi tristique senectus et
                                       netus et malesuada fames</p>
                                 </div>
                                 <div class="rollover" style="display: none">
                                    <div style="height:151.8px;"class="col-md-12 col-sm-12 col-xs-12">
                                       <a href="#" class="btn-main btn-shadow menu-detail">상세보기</a> <a
                                          href="#" class="btn-main btn-shadow menu-modify">수정</a>
                                    </div>
                                 </div>
                              </div>
                              <div
                                 class="col-md-6 col-sm-6 col-xs-12 isotope-item freshfood menu">
                                 <div class="menu-list">
                                    <span class="menu-list-product"> <img
                                       src="images/img7.png" alt="">
                                    </span>
                                    <h5>
                                       ORGANIC FRUIT<span>$ 15.00</span>
                                    </h5>
                                    <p>Pellentesque habitant morbi tristique senectus et
                                       netus et malesuada fames</p>
                                 </div>
                                 <div class="rollover" style="display: none">
                                    <div style="height:151.8px;"class="col-md-12 col-sm-12 col-xs-12">
                                       <a href="#" class="btn-main btn-shadow menu-detail">상세보기</a> <a
                                          href="#" class="btn-main btn-shadow menu-modify">수정</a>
                                    </div>
                                 </div>
                              </div>
                              <div
                                 class="col-md-6 col-sm-6 col-xs-12 isotope-item freshfood menu">
                                 <div class="menu-list">
                                    <span class="menu-list-product"> <img
                                       src="images/img8.png" alt="">
                                    </span>
                                    <h5>
                                       PRAWNS BUTTER<span>$ 15.00</span>
                                    </h5>
                                    <p>Pellentesque habitant morbi tristique senectus et
                                       netus et malesuada fames</p>
                                 </div>
                                 <div class="rollover" style="display: none">
                                    <div style="height:151.8px;"class="col-md-12 col-sm-12 col-xs-12">
                                       <a href="#" class="btn-main btn-shadow menu-detail">상세보기</a> <a
                                          href="#" class="btn-main btn-shadow menu-modify">수정</a>
                                    </div>
                                 </div>
                              </div>
                              <div
                                 class="col-md-6 col-sm-6 col-xs-12 isotope-item dessert menu">
                                 <div class="menu-list">
                                    <span class="menu-list-product"> <img
                                       src="images/img81.png" alt="">
                                    </span>
                                    <h5>
                                       CHInese Egg Cake <span>$ 15.00</span>
                                    </h5>
                                    <p>Pellentesque habitant morbi tristique senectus et
                                       netus et malesuada fames</p>
                                 </div>
                                 <div class="rollover" style="display: none">5
                                    <div style="height:151.8px;"class="col-md-12 col-sm-12 col-xs-12">
                                       <a href="#" class="btn-main btn-shadow menu-detail">상세보기</a> <a
                                          href="#" class="btn-main btn-shadow menu-modify">수정</a>
                                    </div>
                                 </div>
                              </div>
                              <div
                                 class="col-md-6 col-sm-6 col-xs-12 isotope-item dinner menu">
                                 <div class="menu-list">
                                    <span class="menu-list-product"> <img
                                       src="images/img82.png" alt="">
                                    </span>
                                    <h5>
                                       Beef SpaghettI<span>$ 45.00</span>
                                    </h5>
                                    <p>Pellentesque habitant morbi tristique senectus et
                                       netus et malesuada fames</p>
                                 </div>
                                 <div class="rollover" style="display:  none">
                                    <div style="height:151.8px;"class="col-md-12 col-sm-12 col-xs-12">
                                       <a href="#" class="btn-main btn-shadow menu-detail">상세보기</a> <a
                                          href="#" class="btn-main btn-shadow menu-modify">수정</a>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div> <!-- 메뉴상세 -->
                        <div align="center" style="display: none" id="detail">
                           <img src="images/img2.png" style="width: 400px; height: 300px;"><br>
                           <div align="center">
                              <div>

                                 <h5 style="color: #e4b95b; margin-left: 33%;">
                                    <label>CAPO STEAK</label> <span style="margin-right: 50%">&nbsp;&nbsp;$
                                       45.00</span>
                                 </h5>
                                 <hr
                                    style="display: block; border: black 0 none; border-top: black 1px dotted; height: 1px; width: 300px;">
                                 <p>여기는 음식 상세정보가 들어갈 곳</p>
                              </div>
                           </div>
                        </div> <!-- 메뉴등록 -->
                        <div id="addmenu" style="display: none">
                           <div class="modal-content">
                              <div class="modal-body" style="border: 0; outline: 0;">
                                 <div>
                                    <h3>
                                       <img src="./images/food.png"
                                          style="width: 60px; height: 60px">메뉴등록
                                    </h3>
                                    <hr />

                                 </div>

                                 <div class="col-md-6 col-sm-6 col-xs-12">
                                    <div>
                                       <!--                                 <img src="images/img2.png" class="img-circle" style=width:380px;height:330px;> -->
                                       <img src="images/img2.png" class="img-circle"
                                          onmouseover="this.src='images/insert2.png';"
                                          onmouseout="this.src='images/img2.png';"
                                          style="width: 380px; height: 330px; cursor: pointer;" />
                                       c
                                    </div>
                                 </div>
                                 <div class="row">
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                       <input type="text" class="form-control"
                                          placeholder="선택 테이블"> <input type="text"
                                          class="form-control" placeholder="메뉴명"> <input
                                          type="text" class="form-control" placeholder="가격">
                                       <textarea class="form-control" rows="3" placeholder="상세설명"
                                          style="border-radius: 80px;height:30%;"></textarea>
                                    </div>
                                 </div>
                                 <button type="button" class="btn btn-default btn-lg active"
                                    style="margin-left: 90%">등록</button>
                              </div>
                           </div>

                        </div> 
                        
                        <!-- 메뉴수정 -->
                        <div id="modifymenu" style="display: none">
                           <div class="modal-content">
                              <div class="modal-body" style="border: 0; outline: 0;">
                                 <div>
                                    <h3>
                                       <img src="./images/food.png"
                                          style="width: 60px; height: 60px">메뉴수정
                                    </h3>
                                    <hr />

                                 </div>

                                 <div class="col-md-6 col-sm-6 col-xs-12">
                                    <div>
                                       <img src="images/img2.png" class="img-circle"
                                          onmouseover="this.src='images/reverse3.png';"
                                          onmouseout="this.src='images/img2.png';"
                                          style="width: 380px; height: 330px; cursor: pointer;" />
                                       c
                                    </div>
                                 </div>
                                 <div class="row">
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                       <input type="text" class="form-control"
                                          placeholder="선택 테이블"> <input type="text"
                                          class="form-control" placeholder="메뉴명"> <input
                                          type="text" class="form-control" placeholder="가격">
                                       <textarea class="form-control" rows="3" placeholder="상세설명"
                                          style="border-radius: 80px;"></textarea>
                                    </div>
                                 </div>
                                 <button type="button" class="btn btn-default btn-lg active"
                                    style="margin-left: 90%">등록</button>
                              </div>
                           </div>

                        </div> 
                        
                        
                        <!-- 예약관리 -->
                        <div id="managere" style="display: none;">
                           <table class="shop-cart-table"
                              style="margin-left: 20px; width: 95%;">
                              <thead>
                                 <tr>
                                    <th style="font-size: 15px; text-align: center;">회원ID</th>
                                    <th style="font-size: 15px; text-align: center;">예약 유형</th>
                                    <th style="font-size: 15px; text-align: center;">예약 현황</th>
                                    <th style="font-size: 15px; text-align: center;">예약 날짜</th>
                                    <th style="font-size: 15px; text-align: center;">인원 수</th>
                                    <th style="font-size: 15px; text-align: center;">테이블 번호</th>
                                    <th style="font-size: 15px; text-align: center;">예약 상태</th>
                                 </tr>
                              </thead>
                              <tbody>
                                 <tr>
                                    <td style="font-size: 13px; text-align: center;">신주용</td>
                                    <td style="font-size: 13px; text-align: center;">테이블</td>

                                    <td style="font-size: 13px; text-align: center;">M</td>
                                    <td style="font-size: 13px; text-align: center;">2017-11-24</td>
                                    <td style="font-size: 13px; text-align: center;">5명</td>
                                    <td style="font-size: 13px; text-align: center;">3번</td>
                                    <td style="font-size: 13px; text-align: center;">Y</td>
                                 </tr>
                                 <tr style='text-align: right; margin-right: 2%;'>
                                    <td style='height: 17px;' colspan="7">
                                       <button class="btn btn-primary btn-lg active"
                                          style='font-size: 13px; padding: 5px;'>수락</button>
                                       <button class="btn btn-primary btn-lg active"
                                          style='font-size: 13px; padding: 5px;'>취소</button>
                                    </td>
                                 </tr>
                              </tbody>
                           </table>
                        </div>
                        
                        
                        
                        <!--매장 삭제 화면 -->
                        <div id="storedelete" style="display:none; margin-top: 88px;"class="col-md-9 col-sm-7 col-xs-12 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="300ms">
                                <div style="box-shadow: 4px 4px 3px #000;" class="shop-checkout-right">
                                <h3>매장 삭제</h3> 
                                <FONT SIZE="4">안녕하세요! 밍키사장님,</FONT><br/> 
                                <FONT SIZE="4">매장을 삭제하려고 하신다니 아쉽네요.</FONT>
                                <br/>
                                <h4>삭제하기 전에 이유를 알려주세요.</h4>
                                <div class="col-md-5 col-sm-12 col-xs-12">
                                                <select style="margin-left:-30px" class="select-dropbox">
                                                    <option>--</option>
                                                    <option>폐업을 하게 되었어요.</option>
                                                    <option>서비스를 그만 이용하고 싶어요.</option>
                                                    <option>다른 계정을 사용해요.</option>
                                                    <option>서비스에 문제가 많아요.</option>
                                                    <option>기타</option>
                                                </select>
                                            </div>
                                             <div class="col-md-5 col-sm-12 col-xs-12">
                                             <input style="margin-left:70%" name="submit" class="btn-black" type="button" value="삭제"/>
                                             </div>
                                </div>
                            </div>
                            
                            
                            
                  				<!--매장 수정 화면 -->
                                <div id="storemodify"style="box-shadow: 4px 4px 3px #000; display:block;" class="shop-checkout-right">
                                
                                 <div style="text-align:center;"class="col-md-3 col-sm-4 col-xs-12 breakfast dessert dinner wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="300ms">
                               <div style="padding:3px; text-align:center"class="shop-checkout-left">
                               <img class="shop-checkout-left" src="images/plus.png" alt=""/>
                                
                            </div>
                            <FONT SIZE="4">사진 수정</FONT>
                            </div>
                            
                             <div class="col-md-9 col-sm-4 col-xs-12 breakfast dessert dinner wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="300ms">
                              <h7>사장 ID :  밍키</h7> 
                              <div style="border:gray solid 1px;background-color:white" class="shop-checkout-right">
                              
                               <div class="col-md-5 col-sm-12 col-xs-12">
                                    <input style="height:30px; margin-bottom:20px;margin-left:-30px; font-size:15px;" type="text" name="txt" placeholder="사업자 등록 번호" class="input-fields">
                               </div>
								<p style="text-align:center">시간 설정</p>
                                <div class="col-md-5 col-sm-12 col-xs-12">
                                    <input style="height:30px; margin-bottom:20px;margin-left:-30px; font-size:15px;" type="text" name="txt" placeholder="업소명" class="input-fields">
                               </div>
                                <div style="text-align:center" class="col-md-7 col-sm-12 col-xs-12">
                                    <input style="width:60%;height:30px; margin-bottom:20px;margin-left:17px;font-size:15px;" type="text" name="txt" placeholder="오픈 시간" class="input-fields">
                               </div>
                                <div class="col-md-5 col-sm-12 col-xs-12">
                                    <input style="height:30px; margin-bottom:20px;margin-left:-30px; font-size:15px;" type="text" name="txt" placeholder="전화번호" class="input-fields">
                               </div>
                               <div style="text-align:center" class="col-md-7 col-sm-12 col-xs-12">
                                    <input style="width:60%;height:30px; margin-bottom:20px;margin-left:17px;font-size:15px;" type="text" name="txt" placeholder="마감 시간" class="input-fields">
                               </div>
                               <div class="col-md-5 col-sm-12 col-xs-12">
                                                <select style="margin-left:-30px" class="select-dropbox">
                                                    <option>먹포 구분</option>
                                                    <option>먹고 간다.</option>
                                                    <option>포장 한다.</option>
                                                </select>
                                            </div>
                                            <div class="col-md-4 col-sm-12 col-xs-12">
                                            <input style="height:30px; margin-bottom:20px;margin-left:-5px; font-size:15px;" type="text" name="txt" placeholder="우편번호" class="input-fields">
                                            </div>
                                            <div class="col-md-3 col-sm-12 col-xs-12">
                                            <input style="width:127%;height:30px; margin-bottom:20px;margin-left:-30px; font-size:11px;" type="button" name="button" value="우편번호 검색" class="button-default">
                                            </div>
                                            
                              				<div class="col-md-5 col-sm-12 col-xs-12">
                                                <select style="margin-left:-30px" class="select-dropbox">
                                                    <option>카테고리</option>
                                                    <option>마구간</option>
                                                    <option>불꽃남자</option>
                                                    <option>주온</option>
                                                    <option>BGM</option>
                                                    <option>해물이</option>
                                                </select>
                                            </div>
                                              <div class="col-md-7 col-sm-12 col-xs-12">
                                    <input style="width:100%;height:30px; margin-bottom:20px;margin-left:-5px;font-size:15px;" type="text" name="txt" placeholder="주소" class="input-fields">
                               </div>  
                               <div class="col-md-12 col-sm-12 col-xs-12"> 
                                    <input style="width:56%;height:30px; margin-bottom:20px;margin-left:202px;font-size:15px;" type="text" name="txt" placeholder="상세 주소" class="input-fields">
                               </div>
                                <div class="col-md-12 col-sm-12 col-xs-12"> 
                                    <a href="#" class="btn-main btn-shadow modi">수정</a>
                                    <a href="#" class="btn-main btn-shadow modi">취소</a> 
                               </div>
                                </div>
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
    <script src="js/jquery.min.js"></script>
    <script src="plugin/bootstrap/bootstrap.min.js"></script>
    <script src="plugin/bootstrap/bootstrap-datepicker.js"></script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAf6My1Jfdi1Fmj-DUmX_CcNOZ6FLkQ4Os"></script>
    <script src="plugin/form-field/jquery.formstyler.min.js"></script>
    <script src="plugin/revolution-plugin/jquery.themepunch.plugins.min.js"></script>
    <script src="plugin/revolution-plugin/jquery.themepunch.revolution.min.js"></script>
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
</body>

</html>