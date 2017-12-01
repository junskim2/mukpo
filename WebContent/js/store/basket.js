$(document).ready(function(){			//윤경식 
	var rCIdArr =new Array();
	var cntArr =new Array();
	
	var num=0;
	
	$(".basket").click(function(){
		
		var result=$(this).attr('name');  	//수량 가져오기
		var mName=$(this).attr('menu');		//메뉴명 가져오기
		var mPrice=$(this).attr('price');	//메뉴가격 가져오기
		
		//alert("array.length:"+rCIdArr.length);
		//alert(array[0]+result)
		
		// 맨 처음 저장할 때
		if( rCIdArr.length == 0){
			rCIdArr[0] = result;
			cntArr[0] = 1;
			$('.basketform').append('<input type="hidden" name="price" value="'+mPrice+'"/><input type="hidden" name="name" value="'+mName+'"/><input class="'+result+'" type="hidden" name="result" value="1"/> <h5 name="menus" class="'+result+'" style="width:100%; text-align:center">'+mName+result+' 갯수<span class="'+result+'">1</span><input type="button" value="삭제"/></h5>');
		}else { // 이미1개 이상 저장된 상태
			var dulpChk = false;
			var idxSame = 0;
			for(var a=0; a<rCIdArr.length; a++){
				if(rCIdArr[a]==result){
					idxSame = a;
					dulpChk =true;
				}
			}
			if( dulpChk ){	//수량 늘어남
				cntArr[idxSame]++;
				$("span[class='"+result+"']").text(cntArr[idxSame]);
				$("input[class='"+result+"']").val(cntArr[idxSame]);
			}else{	//하나 중복 되지 않을때
				rCIdArr[a] = result;
				cntArr[a] = 1;
				//                                           파라미터로 메뉴 이름 넘기기                                                                                  파라미터로 메뉴 갯수 넘기기                                                                                                
				$('.basketform').append('<input type="hidden" name="price" value="'+mPrice+'"/><input type="hidden" name="name" value="'+mName+'"/> <input class="'+result+'" type="hidden" name="result" value="1"/> <h5 name="menus" class="'+result+'" style="width:100%; text-align:center">'+mName+result+' 갯수<span class="'+result+'">1</span><input type="button" value="삭제"/></h5>');
				// <input type="hidden" name="'+result+'name" value="'+mName+'"/>
				// hidden name='yyyyy' value='111'
			}
			
		}
		
//		alert(rCIdArr.toString() + "    <>   " + cntArr.toString());
		
//		$('.basketform').append('<h5 name="menus"class="'+result+'" style="width:100%; text-align:center">'+mName+result+' 갯수<input type="button" value="삭제"/></h5>');
		
		});
	
	
	
	//예약화면으로 가져가기
$('.basketform').click(function(){
	alert($('h5[name="menus"]').text());
});
	});