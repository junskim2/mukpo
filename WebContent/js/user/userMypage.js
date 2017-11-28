/**
 * 
 */

$(function() {

//	 $(".row>div").hover(function() {
//	
//	 $(".row>div").find("img").attr("src").replace("_hover", "");
//	 $(".row>div").find("h5").css("color", "#A9A9A9");
//	 var img = $(this).find("img");
//	 var font = $(this).find("h5");
//	 var src = img.attr("src").match(/[^\.]+/) + "_hover.png";
//	 font.css("color", "#e4b95b");
//	 img.attr("src", src);
//	 }, function() {
//	
//	 var img = $(this).find("img");
//	 var font = $(this).find("h5");
//	 var src = img.attr("src").replace("_hover", "");
//	 font.css("color", "#A9A9A9");
//	 img.attr("src", src);
//	 });

	var thankyou;
	$(".row>div").click(
			function() {
				if (thankyou === undefined) {
					var img = $(this).find("img");
					var font = $(this).find("h5");
					var src = img.attr("src").match(/[^\.]+/) + "_hover.png";
					font.css("color", "#e4b95b");
					img.attr("src", src);
					thankyou = $(this).attr('id');
				} else {

					var resrc = $("#" + thankyou).find("img").attr("src")
							.match(/[^\_]+/)
							+ ".png";
					$("#" + thankyou).find("img").attr("src", resrc);

					$("#" + thankyou).find("h5").css("color", "#A9A9A9");
					var img = $(this).find("img");
					var font = $(this).find("h5");

					var src = img.attr("src").match(/[^\.]+/) + "_hover.png";
					font.css("color", "#e4b95b");
					img.attr("src", src);
					thankyou = $(this).attr('id');

				}
			});

});