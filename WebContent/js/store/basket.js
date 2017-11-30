$(document).ready(function(){
	var rCIdArr =new Array();
	var cntArr =new Array();
	
	var num=0;
	
	$(".basket").click(function(){
		
		var result=$(this).attr('name');
		var mName=$(this).attr('menu');
		
		//alert("array.length:"+rCIdArr.length);
		//alert(array[0]+result)
		
		// 맨 처음 저장할 때
		if( rCIdArr.length == 0){
			rCIdArr[0] = result;
			cntArr[0] = 1;
			$('.basketform').append('<h5 name="menus"class="'+result+'" style="width:100%; text-align:center">'+mName+result+' 갯수<span class="'+result+'">1</span><input type="button" value="삭제"/></h5>');
		}else { // 이미1개 이상 저장된 상태
			var dulpChk = false;
			var idxSame = 0;
			for(var a=0; a<rCIdArr.length; a++){
				if(rCIdArr[a]==result){
					idxSame = a;
					dulpChk =true;
				}
			}
			if( dulpChk ){
				cntArr[idxSame]++;
				$("span[class='"+result+"']").text(cntArr[idxSame]);
			}else{
				rCIdArr[a] = result;
				cntArr[a] = 1;
				$('.basketform').append('<h5 name="menus"class="'+result+'" style="width:100%; text-align:center">'+mName+result+' 갯수<span class="'+result+'">1</span><input type="button" value="삭제"/></h5>');
			}				
		}
		
		alert(rCIdArr.toString() + "    <>   " + cntArr.toString());
		
//		$('.basketform').append('<h5 name="menus"class="'+result+'" style="width:100%; text-align:center">'+mName+result+' 갯수<input type="button" value="삭제"/></h5>');
		
		});
	
	
	
	//예약화면으로 가져가기
$('.basketform').click(function(){
	alert($('h5[name="menus"]').text());
});
	});