$(document).ready(function() {
	// 1206 시간 선택
	$('#disableTimeRangesExample').timepicker({
		'disableTimeRanges' : [ [ '1am', '2am' ], [ '3am', '4:01am' ] ]
	});

	$('#disableTimeRangesExample').keydown(function() {
		$(this).val("");
	});

	var toast = new ax5.ui.toast({
		containerPosition : "top-right",
		onStateChanged : function() {
			console.log(this);
		}
	});

	// 1206 아름 input click 막기
	$("#rDate").click(function() {
		toast.push('예약할 날짜는 달력에서 클릭해주세요.', function() {
			console.log(this);
		});
	});

	// 1206 아름 지난 날짜 선택 못하게
	$('#calendar').on('click', '.fc-past', function() {
		toast.push('예약 가능한 날짜가 아닙니다.', function() {
			console.log(this);
		});
	});

	// 선택한 날짜
	$('#calendar').on('click', '.fc-today', function() {
		// alert($(this).attr('data-date'));
		$("#rDate").val($(this).attr('data-date'));
	});
	$('#calendar').on('click', '.fc-future', function() {
		// alert($(this).attr('data-date'));
		$("#rDate").val($(this).attr('data-date'));

	});
	
	$(".reservebtn").click(function(){
		$("#modalrTnum").val($(this).attr('name'));
	});
});
