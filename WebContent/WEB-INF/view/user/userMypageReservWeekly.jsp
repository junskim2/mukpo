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
    <link href="/css/common/jquery.auto-complete.css" rel="stylesheet">
    <link href="/css/responsive.css" rel="stylesheet">

    
   
    <link href="/plugin/bootstrap/minwoo.css" rel="stylesheet">
<style type="text/css">
html,body{
height:100%;
}

</style>
		<!-- UserMypageHeader 시작 -->
<%-- 			<jsp:include page="/WEB-INF/view/common/commonUserMypageHeader.jsp"></jsp:include> --%>
		<!-- UserMypageHeader 끝 -->
		
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
	        		$('.tblList').html("");
	        		$(data).each(function(index, item) {
	        	var tag="";
	        	tag += "<tr><td>"+ this.sName +"</tr></td>";
 	        	$('.tblList').append(tag);
	        	});
	        }
	        },
	    	error: function(error) {
	    		alert("error" + error); 
    		}
		});
	});
});

<%--  자동완성 autocomplete 라이브러리 안먹힘
$(function(){
//  var source = ['난누군가','또여긴어딘가','누가날불러?'];
    // 자동으로 /ajax/auato 주소로 term 이란 파라미터가 전송된다.
    // 응답은 [{label:~~~,value:~~~},{label:~~~,value:~~~}] 형태가 된다.
   $('#term').autocomplete({"source":"<%=cp%>/ajax/auto"});
    $('#term').autocomplete({"source":function(request,response){
           $.getJSON("<%=cp%>/user/auto",{"term":request.term},
                   function(result) {
        	   				alert("result : "+ result );
                          return response($.map(result, function(item){
                                  var l = item.label.replace(request.term,
                                                 "<span style='color:red'>"+request.term+"</span>");
                                  return {label:l, value:item.value};
                          }));
           });
    }});
});
 --%> 
 
/*  현희 ajax
		$('#term').keyup(function() {
			var data = $("#term").val();
			console.log(data);
			$.ajax({
				type:"POST",
				url:"/user/userSelectStoreAJAX.jsp",
				data: { "context" : $("#term").val() },
				dataType:"text",
				success : function(data) {
// 					alert(data);
// 					var jsonData = JSON.stringify(data.dd);
// 					console.log("성공:" + data);
					
				},
				error : function(err) {
					console.log("에러" + err);
				}
			});
		});
});
 */
</script>
</head>
<body>
		<div class="weekly_form1">
		        <!-- 날짜선택 -->
                <section id="reach-to" class="col-md-6 col-sm-6 col-xs-12 table-part booktable wow fadeInUp" 
                data-wow-duration="1000ms" data-wow-delay="300ms" style="width:40%; margin-left:20%; padding:30px 0;">
                        <div class="content-middle">
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <input type="text" name="txt" placeholder="날짜검색" class="date-pick">    
                <!-- 날짜선택 끝 -->
                <!-- 매장검색 -->
                                    <input type="text" id="term" placeholder="매장검색"/>  
                                  </div>
                              <table class="tblList" border="1"></table> <!-- 매장리스트 띄워주는 테이블 -->
                        </div>
                         
                </section>	
				<!-- 매장검색 끝-->
				<input type="button" name="search" id="search" value="검색" style="margin-top:2%;"/>
                                    
		<div class="weekly_form2">
		<div>예약내역</div>
		<div>예약내용</div>
		</div>
		</div>
		
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
    <script src="/js/common/jquery.auto-complete.js"></script>
    <script src="/js/common/jquery.auto-complete.min.js"></script>
    <script src="/js/jquery.min.js"></script>
    <script src="/plugin/bootstrap/bootstrap.min.js"></script>
    <script src="/plugin/bootstrap/bootstrap-datepicker.js"></script>
    <script src="/https://maps.googleapis.com/maps/api/js?key=AIzaSyAf6My1Jfdi1Fmj-DUmX_CcNOZ6FLkQ4Os"></script>
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