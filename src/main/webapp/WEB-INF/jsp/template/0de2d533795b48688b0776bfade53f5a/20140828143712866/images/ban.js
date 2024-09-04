  //定时器
	var timer ;
var BodyHeight,BodyWidth;
	var yon = 0;                    
	var xon = 0;
	var step = 1;
	var Hoffset = 0;                    
	var Woffset = 0; 
	$(function(){
		timer = setInterval(function(){rotateBanner(-1)},5000);
		$(".slider_menu").hover(function(){
			clearInterval(timer);
		}, function(){
			timer = setInterval(function(){rotateBanner(-1)},5000);
		});
       BodyHeight=parseInt(document.body.clientHeight);
       BodyWidth=parseInt(document.body.clientWidth);
            //alert(BodyWidth);
	});
	// begin:首页视觉区效果
	var _img = 1;
	function rotateBanner(step){
		_img+=step;
		if (_img>5) {
			_img=1;
		} else if (_img<=0) {
			_img=5;
		}
		$("#IndexBanner").stop().animate({opacity: 0},300, function(){
			$(this).css("background-image", "url(https://www.hebtu.edu.cn/template/0de2d533795b48688b0776bfade53f5a/20140828143712866/images/banner_0"+_img+".jpg)").animate({opacity: 1},300);
		});

		$(".slider").stop().animate({backgroundPositionY: 99}, 300, function(){
			$(this).css("background-image", "url(https://www.hebtu.edu.cn/template/0de2d533795b48688b0776bfade53f5a/20140828143712866/images/bar_0"+_img+".png)").animate({backgroundPositionY: 0}, 200);
		});
	}