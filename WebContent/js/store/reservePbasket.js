$(document).ready(function(){			//김민우 추가
	 var mIdArr = new Array();
	//메뉴 추가 버튼
	$(".shop-cart-btn").click(function(){
		var mName = $('h5>center[class="'+$(this).attr('name')+'"]').text();  
		var mPrice = $('h5>span[class="'+$(this).attr('name')+'"]').text();
		var mId=$(this).attr('name');
		
		if(mIdArr[0] == undefined){
			mIdArr[0]=mId;
			$(".shop-cart-table tbody").append(
					  '<tr>'
					+ '<th>PRODUCT</th>'
					+ '<td>'
					+ '<div class="product-cart-title"><span>'+mName+'</span></div>'
					+ '</td>'
					+ '<th>PRICE</th>'
					+ '<td><strong>'+ mPrice+'</strong></td>'
					+ '<th>QUANTITY</th>'
					+ '<td><div class="price-textbox"><span class="minus-text"><i class="icon-minus"></i></span><input type="hidden" name="mName" value="'+mName+'"/>'
					+ '<input type="hidden" name="mPrice" value="'+mPrice+'"/>'
					+ '<input name="mCnt" type="text" value="1"><span class="plus-text"><i class="icon-plus"></i></span></div></td>'
					+ '<th>TOTAL</th>'
					+ '<td id="totalPrice" class="totalPrice">'+mPrice+'</td>'
					+ '<td class="shop-cart-close"><i class="icon-cancel-5" name="'+mId+'"></i></td>'
					+ '</tr>');
		}else{
			var dulpChk = false;
			var idxSame = 0;
			for(var a=0; a<mIdArr.length; a++){
				if(mIdArr[a]==mId){
					idxSame = a;
					dulpChk =true;
				}
			}
			if(dulpChk==false){
				mIdArr[mIdArr.length]=mId;	
				$(".shop-cart-table tbody").append(
						  '<tr>'
						+ '<th>PRODUCT</th>'
						+ '<td>'
						+ '<div class="product-cart-title"><span>'+mName+'</span></div>'
						+ '</td>'
						+ '<th>PRICE</th>'
						+ '<td><strong>'+ mPrice+'</strong></td>'
						+ '<th>QUANTITY</th>'
						+ '<td><div class="price-textbox"><span class="minus-text"><i class="icon-minus"></i></span><input type="hidden" name="mName" value="'+mName+'"/>'
						+ '<input type="hidden" name="mPrice" value="'+mPrice+'"/>'
						+ '<input name="mCnt" type="text" value="1"><span class="plus-text"><i class="icon-plus"></i></span></div></td>'
						+ '<th>TOTAL</th>'
						+ '<td id="totalPrice" class="totalPrice">'+mPrice+'</td>'
						+ '<td class="shop-cart-close"><i class="icon-cancel-5" name="'+mId+'"></i></td>'
						+ '</tr>');
			}
		}
		
		
	});
	$('#goClear').click(function(){ //장바구니 clear시키기
		$(".shop-cart-table tbody>tr>td").text(""); //장바구니 카트 값 클리어
	});
	
	$('#payClear').click(function(){ //결제내역 clear시키기
		$("#shop-checkout-orderlist").text(""); //주문내역 clear
		$("#shop-checkout-price").text(""); //주문금액 clear
		$("#shop-checkout-totalPrice").text(""); //총 결제금액 clear
	});
	
	//선택한 매뉴의 갯수 빼기
	$(document).on("click","span[class='minus-text']",function(){
		var mPrice = $(this).parent().parent().prev().prev().children().text(); //원가
		
		$(this).next().next().next().val($(this).next().next().next().val()-1);
		$(this).parent().parent().next().next().text(mPrice*$(this).next().next().next().val());
	});
	//선택한 매뉴의 갯수 더하기
	$(document).on("click","span[class='plus-text']",function(){
		var mPrice = $(this).parent().parent().prev().prev().children().text(); //원가
		
		var tt = $(this).prev().val();
		tt = Number(tt); //숫자 형변환
		$(this).prev().val(tt+1);
		
		$(this).parent().parent().next().next().text(mPrice*$(this).prev().val());
	});
	// 선택한 메뉴 삭제 
	$(document).on("click","i[class='icon-cancel-5']",function(){
			mIdArr.splice(mIdArr.indexOf(($(this).attr('name')),1));
			$(this).parent().parent().remove();
	});

	//장바구니 최종선택 클릭시 결제정보로 이동  --진행중
		$("#goPayment").bind("click",function(){
			var orderlist = $('.product-cart-title').text();
			
			var total = 0; //금액 합계
			var Price = 0;
			
			for(var i=0; i<mIdArr.length; i++){
				Price = parseInt($('.totalPrice').eq(i).text());
				total = total + Price;
			}
			$('#shop-checkout-orderlist').text(orderlist); //주문내역
			$('#shop-checkout-price').text(total); //총금액
			
			var deposit = Number($('#checkout-deposit').text())+total;
			$('#shop-checkout-totalPrice').text(deposit);

		}); //end of #goPayment
	}); // end of $(document).ready