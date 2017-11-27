<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
<head>
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>먹포 - 테이블 예약</title>
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
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script type="text/javascript">
    	$(function() {
    		$("#reserveTable").click(function() {
    			location.href = "reserveMPayment.do";
    		});
    	});
    </script>
</head>
<body>
<!--  <div class="modal fade booktable" id="booktable" tabindex="-1" role="dialog" aria-labelledby="booktable"> -->
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-body">
                        <button type="button" id="clo"class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>

                        <div class="table-title">
                            <h2>먹고갈꺼니?</h2>
                            <h6 class="heade-xs">잘생각 했어 b</h6>
                        </div>
                        <div class="row">
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <input type="text" name="txt" placeholder="선택 테이블" class="date-pick">
                                <input type="text" name="txt" placeholder="시간" class="date-pick">
                                <input type="text" name="txt" placeholder="인원수" class="date-pick">
                                <input type="text" name="txt" placeholder="전화번호" class="date-pick">
                                <input type="text" name="txt" placeholder="이름" class="date-pick">
                            </div>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                            	  <div>
                                <img src="/images/img2.png" style=width:400px;height:360px;>
                           		 </div>
                            </div>
                            <div class="col-md-12 col-sm-12 col-xs-12">
                             <input type="text" name="txt" placeholder="요청사항" style="width:100%;"> <br/>
                                <button id="reserveTable" style="width:100%;" class="btn-main btn-big">예약</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
<!--         </div> -->
</body>
</html>