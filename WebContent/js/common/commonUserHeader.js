/**
 * commonUserHeader.js
 */

$(function() {
		// 로그인 버튼
		$("#headerLoginJoin>img").click(function() {
			location.href="/user/userLogin.do";
		});
		
		// 검색 버튼
		$("#headerSearch>img").click(function() {
			$("#searchdrop").slideToggle();
		});
	
		// 먹포에 손올렸을 때
		$("#headerMP").hover(function() {
			$("#mpdrop").slideDown();
		}, function() {
			$("#mpdrop").slideUp();
		});
		
		// 로고 클릭
		$("#headerLogo>img").click(function() {
			location.href="/a/index.jsp";
		});
	});