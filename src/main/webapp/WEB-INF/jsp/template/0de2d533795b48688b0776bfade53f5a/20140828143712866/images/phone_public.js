$(function(){
	//手机端导航
		$(".headers .index").click(function () {
			$(".fh_dh").show();
		
			$(".fh_dh").animate(
				{ right: "0px" }, 800
			)
			$(".fh_bc").show();
		});
		$(".fh_bc").click(function () {
			$(".fh_dh").animate(
				{ right: "-180px", display: "none" }, 800
			);
			$(this).hide();
		});
		
		$(".fh_dh ul .yj_li").click(function () {
			$(".fh_dh ul .yj_li").removeClass("on");
			$(this).addClass("on");
			$(this).siblings().children(".yj_a").removeClass("up");
			$(this).children(".yj_a").toggleClass("up");
			$(this).siblings().children(".ej").hide();
			$(this).children(".ej").toggle();
		});
		/*选项卡*/
			$(".tabLink>b:first-child").addClass("active");
			$(".xxk>.tabItem:first-child").show();
			$(".content .xxk").each(function(){
				var obj = $(this);
				$(obj).find(".tabLink").find("b").hover(function(){
					var index = $(this).attr('dataIndex');
					$(this).addClass("active").siblings('b').removeClass("active");
					$(obj).find('.more' + index).show().siblings('.more').hide();
					$(obj).find(".tabItem").hide();
					$(obj).find(".tabItem").eq(index).show();
				});
			});
		
		var w=document.body.clientWidth;
		var wideScreen = false;	
		if(w <= 800){
			//banner
			//var H1=$(".banner").width()*0.45;
			var H1=$(".banner").width()*0.64;
			$(".banner").css("height",H1);
			$(".sj_ban").css("height",H1);
			$(".a7-dimensions").css("height",H1);
			$(".video-js").css("height",H1);
			//foot
			var H2=$(".foot_logo").width();
			$(".phone_foot").css("padding-top",H2*0.5-7);
			$(".foot_txt").css("padding-top",H2*0.5-17);
			//校园风光
			var H3=$(".sjd_xyfg ul li a img").width()*0.72;
			$(".sjd_xyfg ul li a img").css("height",H3);
		}
		
	
	
	
	
});



