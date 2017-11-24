<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
    <style type="text/css">
    
.btn-main{min-width:100px; height:30px; line-height:30px;}
</style>
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
<script type="text/javascript">
function ShowTabex(val){
  for (i=0; i<5; i++) {
    var tb = document.getElementById('tab_' + i);
    if (i != val) tb.style.display = "none";
    else tb.style.display = "block";
  }
}
</script>

</head>
<body>
<section class="home-icon shop-cart bg-skeen">
<div class="container">
                        <div class="row">
                            <div class="col-md-7 col-sm-7 col-xs-12 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="300ms">
                                <div class="shop-checkout-left">
<div style="text-align: center;">
  <div style="border: 1px solid orange; border-radius:2em;">
  <span onclick="ShowTabex('0')" style="padding: 0pt 5px; cursor: pointer;">Cate1</span>
  <span onclick="ShowTabex('1')" style="padding: 0pt 5px; cursor: pointer;">Cate2</span>
  <span onclick="ShowTabex('2')" style="padding: 0pt 5px; cursor: pointer;">Cate3</span>
  <span onclick="ShowTabex('3')" style="padding: 0pt 5px; cursor: pointer;">Cate4</span>
  <span onclick="ShowTabex('4')" style="padding: 0pt 5px; cursor: pointer;">Cate5</span>
  </div>
</div>
					
<div style="text-align: center;">
  <div id="tab_0" style="width: 100%; display: block;">
   <div class="col-md-4 col-sm-4 col-xs-12 breakfast dessert dinner wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="300ms">
                                <div class="shop-main-list">
                                    <div class="shop-product">
                                        <img src="images/table1.png" alt="">
                                        <div class="cart-overlay-wrap">
                                            <div class="cart-overlay">
                                                <a href="#" class="shop-cart-btn">ADD TO TABLE</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4 col-sm-4 col-xs-12 breakfast dessert dinner wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="300ms">
                                <div class="shop-main-list">
                                    <div class="shop-product">
                                        <img src="images/table1.png" alt="">
                                        <div class="cart-overlay-wrap">
                                            <div class="cart-overlay">
                                                <a href="#" class="shop-cart-btn">ADD TO TABLE</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4 col-sm-4 col-xs-12 breakfast dessert dinner wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="300ms">
                                <div class="shop-main-list">
                                    <div class="shop-product">
                                        <img src="images/table1.png" alt="">
                                        <div class="cart-overlay-wrap">
                                            <div class="cart-overlay">
                                                <a href="#" class="shop-cart-btn">ADD TO TABLE</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
  </div>
  <div id="tab_1" style="width: 100%; display: none;">
    <div class="col-md-4 col-sm-4 col-xs-12 breakfast dessert dinner wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="300ms">
                                <div class="shop-main-list">
                                    <div class="shop-product">
                                        <img src="images/table1.png" alt="">
                                        <div class="cart-overlay-wrap">
                                            <div class="cart-overlay">
                                                <a href="#" class="shop-cart-btn">ADD TO TABLE</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4 col-sm-4 col-xs-12 breakfast dessert dinner wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="300ms">
                                <div class="shop-main-list">
                                    <div class="shop-product">
                                        <img src="images/table1.png" alt="">
                                        <div class="cart-overlay-wrap">
                                            <div class="cart-overlay">
                                                <a href="#" class="shop-cart-btn">ADD TO TABLE</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4 col-sm-4 col-xs-12 breakfast dessert dinner wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="300ms">
                                <div class="shop-main-list">
                                    <div class="shop-product">
                                        <img src="images/table1.png" alt="">
                                        <div class="cart-overlay-wrap">
                                            <div class="cart-overlay">
                                                <a href="#" class="shop-cart-btn">ADD TO TABLE</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4 col-sm-4 col-xs-12 breakfast dessert dinner wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="300ms">
                                <div class="shop-main-list">
                                    <div class="shop-product">
                                        <img src="images/table1.png" alt="">
                                        <div class="cart-overlay-wrap">
                                            <div class="cart-overlay">
                                                <a href="#" class="shop-cart-btn">ADD TO TABLE</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
  </div>
  <div id="tab_2" style="width: 100%; display: none;">
    <div class="col-md-4 col-sm-4 col-xs-12 breakfast dessert dinner wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="300ms">
                                <div class="shop-main-list">
                                    <div class="shop-product">
                                        <img src="images/table1.png" alt="">
                                        <div class="cart-overlay-wrap">
                                            <div class="cart-overlay">
                                                <a href="#" class="shop-cart-btn">ADD TO TABLE</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4 col-sm-4 col-xs-12 breakfast dessert dinner wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="300ms">
                                <div class="shop-main-list">
                                    <div class="shop-product">
                                        <img src="images/table1.png" alt="">
                                        <div class="cart-overlay-wrap">
                                            <div class="cart-overlay">
                                                <a href="#" class="shop-cart-btn">ADD TO TABLE</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4 col-sm-4 col-xs-12 breakfast dessert dinner wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="300ms">
                                <div class="shop-main-list">
                                    <div class="shop-product">
                                        <img src="images/table1.png" alt="">
                                        <div class="cart-overlay-wrap">
                                            <div class="cart-overlay">
                                                <a href="#" class="shop-cart-btn">ADD TO TABLE</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
  </div>
   <div id="tab_3" style="width: 100%; display: none;">
    <div class="col-md-4 col-sm-4 col-xs-12 breakfast dessert dinner wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="300ms">
                                <div class="shop-main-list">
                                    <div class="shop-product">
                                        <img src="images/table1.png" alt="">
                                        <div class="cart-overlay-wrap">
                                            <div class="cart-overlay">
                                                <a href="#" class="shop-cart-btn">ADD TO TABLE</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4 col-sm-4 col-xs-12 breakfast dessert dinner wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="300ms">
                                <div class="shop-main-list">
                                    <div class="shop-product">
                                        <img src="images/table1.png" alt="">
                                        <div class="cart-overlay-wrap">
                                            <div class="cart-overlay">
                                                <a href="#" class="shop-cart-btn">ADD TO TABLE</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
  </div>
   <div id="tab_4" style="width: 100%; display: none;">
  <div class="col-md-4 col-sm-4 col-xs-12 breakfast dessert dinner wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="300ms">
                                <div class="shop-main-list">
                                    <div class="shop-product">
                                        <img src="images/table1.png" alt="">
                                        <div class="cart-overlay-wrap">
                                            <div class="cart-overlay">
                                                <a href="#" class="shop-cart-btn">ADD TO TABLE</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
  </div>
</div> 
</div>
</div>

<div class="col-md-4 col-sm-5 col-xs-12 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="300ms">
                                <div style="text-align:center" class="shop-checkout-right">
                                <div style="border: 1px solid orange; border-radius:2em;" class="shop-checkout-box">
                                        <div class="shop-checkout-title">
                                            <h6>상품명 &nbsp;&nbsp;&nbsp; 단가 &nbsp;&nbsp;&nbsp;  수량</h6>
                                        </div>
                                            <p><span>Rocha Sleeve Sweater</span> x1 <small>$140.00</small></p>
                                            <p><span>Mauris Tincidunt</span> x6 <small>$140.00</small></p>
                                            <p>총 수량 : </p>
                                            <p>총 금액 : </p>
                                            
                                            <input class="button-default"type="button" value="초기화" style="background-color:skyblue" />
                                            <input class="button-default" type="button" value="주문하기" /><br/>
                                            
                                             <div class="col-md-12 col-sm-12 col-xs-12"> 
                                    <a href="#" class="btn-main btn-shadow">수정</a>
                                    <a href="#" class="btn-main btn-shadow">취소</a> 
                               </div>
                                        </div>
                                </div>
                                
 </div>

</div>
</div>
</section>
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
