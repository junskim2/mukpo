$(document).ready(function(){
	$("input[value='회원가입']").click(function(){
		alert('회원가입');
	});
	
	$("input[value='로그인']").click(function(){
		alert('로그인');
		$('form[class="login-form"]').submit();
	});
});