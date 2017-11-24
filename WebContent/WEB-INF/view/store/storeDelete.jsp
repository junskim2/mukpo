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
    	
    </style>
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
                                  <h6>-매장 정보 수정</h6>
                                  <h6>-매장 삭제</h6> 
                                  <h4>메뉴 관리</h4>
                                  <h4>예약 관리</h4>
                                </div>
                            </div>
                            <div style="margin-top: 88px;"class="col-md-9 col-sm-7 col-xs-12 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="300ms">
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