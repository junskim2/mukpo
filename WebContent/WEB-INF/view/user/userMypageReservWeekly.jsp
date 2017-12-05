<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib  uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%> 

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
<%-- <link type="text/css" href="<%=cp %>/css/custom-theme/jquery-ui-1.8.23.custom.css" rel="stylesheet" /> --%>
<%-- <script type="text/javascript" src="<%=cp %>/js/jquery-1.8.0.min.js" ></script> --%>
<%-- <script type="text/javascript" src="<%=cp %>/js/jquery-ui-1.8.23.custom.min.js" ></script> --%>
<%-- <script type="text/javascript" src="<%=cp %>/js/jquery.ui.datepicker-ko.js" ></script> --%>
<script src="/js/jquery.min.js"></script>
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
    <link href="/css/responsive.css" rel="stylesheet">
    <link href="/plugin/bootstrap/minwoo.css" rel="stylesheet">
<style type="text/css">
html,body{
height:100%;
}

</style>
<script type="text/javascript">
$( document ).ready(function() {
	$("#search").bind("click",function(){
		var keyword = $('#term').val();
		if($('#term').val()==""){
			alert('검색값을 입력하세요');
		}
	    $.ajax({
	        url : "/user/ReservWeeklySearch.do",
	        type: "POST",
	        dataType:"json",
	        data : {
               "search" : keyword
             },
	        success : function(data){	        	
	        	if(data != null){
	        		$('#searchList').html("");
	        		$(data).each(function(index, item) {
	        	var tag="";
	        	tag += 
				 "<input type='hidden' name='rCid' value="+ this.sRcid +" />"
				+ "<div class='store col-md-6 col-sm-6 col-xs-12 wow fadeInDown' data-wow-duration='1000ms' data-wow-delay='300ms'>"
				+ "<div class='blog-right-listing'>"
				+ "<div class='feature-img'>"
				+ "<img src=" + this.sUrl + " />"
				+ "<h3>"+ this.sName +"</h3>"
				+ "<div>" + this.sAddress + "</div>"
				+ "<div>" + this.sTel + "</div>"
				+ "<div>" + this.sClose + "</div>"
				+ "</div>"
				+ "</div>"
		  		+ "</div>";

 	        	$('#searchList').append(tag);
	        	});
	        }
	        },
	    	error: function(error) {
	    		alert("error" + error); 
    		}
		});
	});
});
</script>
</head>
<body>
        <!-- Start Mypage Header -->
        	<jsp:include page="/WEB-INF/view/common/commonUserMypageHeader.jsp"></jsp:include>
        <!-- End Mypage Header -->

		        <!-- 날짜선택 -->
                <section id="reach-to" data-wow-duration="1000ms" data-wow-delay="300ms" style="width:40%; margin-left:20%; padding:30px 0;">
                        <div class="content-middle" style="margin-left:30%;">
<!--                                 <div class="col-md-6 col-sm-6 col-xs-12"> -->
<!--                                     <input type="text" name="txt" placeholder="날짜검색" class="date-pick">     -->
                <!-- 날짜선택 끝 -->
                <!-- 매장검색 -->
                                    <input type="text" id="term" placeholder="매장검색" style="width:70%;"/>
                                    <img src="/images/icon-zoom-blue.png" name="search" id="search" style="margin-bottom:5%; margin-left:2%;"> 
                    	            <table class="tblList" border="1"></table> <!-- 매장리스트 띄워주는 테이블 -->
                        </div>
                </section>	
				<!-- 매장검색 끝-->
				         
		</div>
		<!-- Start Blog List -->
			<section
				class="home-icon blog-main-section text-center blog-main-2col wow fadeInDown"
				data-wow-duration="1000ms" data-wow-delay="300ms">
				<div class="container">
					<div class="portfolioFilter">
					</div>
					<div class="row">
						<div class="col-md-12 col-sm-12 col-xs-12">
							<div class="blog-right-section">
								<div class="row" id="searchList">
<%-- 										<input type="hidden" name="rCid" value="${ list.rCid }" /> --%>
										
<!-- 										<div class="store col-md-6 col-sm-6 col-xs-12 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="300ms"> -->
<!-- 											<div class="blog-right-listing"> -->
<!-- 												<div class="feature-img"> -->
<%-- 													<img src="${ list.sUrl }" alt="" /> --%>
<%-- 													<h3>${ list.sName }</h3> --%>
<%-- 													<div>${ list.sAddress }</div> --%>
<%-- 													<div>${ list.sTel }</div> --%>
<%-- 													<div>${ list.sClose }</div> --%>
<!-- 												</div> -->
<!-- 											</div> -->
<!-- 								  	</div> -->
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
									<!-- 매장 목록 값 끝 -->
		
		<!-- 예약 달력 -->
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
        <!-- 예약 달력 끝 -->
        
         <!-- Back To Top Arrow -->
    <a href="#" class="top-arrow"></a>
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <script src="/js/jquery.min.js"></script>
    <script src="/plugin/bootstrap/bootstrap.min.js"></script>
    <script src="/plugin/bootstrap/bootstrap-datepicker.js"></script>
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