<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- <link href="/plugin/bootstrap/bootstrap.css" rel="stylesheet"/> -->
<link href="/plugin/bootstrap/minwoo.css" rel="stylesheet"/>
<script src="/js/jquery.min.js"></script>
 <script type="text/javascript">
        $(document).ready(function(){
        	$('img').on({ 
        	    'click': function() { 
        	         var src = ($(this).attr('src') === '/images/favorite.png') 
        	            ? '/images/favorite_none.png' 
        	            : '/images/favorite.png'; 
        	         $(this).attr('src', src); 
        	    } 
        	});
        });
    </script>
</head>
<body>
	<table class="FavoriteList">
		<tr>
			<td rowspan="2">사진</td>
			<td>업소명</td>
			<td>기며니의 와따큰 피자 가산점</td>
			<td rowspan="2"><img id="favorite_on" src="/images/favorite.png"/></td>
		</tr>
		<tr>
			<td>위치</td>
			<td>서울특별시 금천구 가산동</td>
		</tr>
	</table>
</body>
</html>