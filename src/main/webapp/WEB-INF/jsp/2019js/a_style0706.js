// JavaScript Document

// JavaScript Document

/*document.onkeydown = function(){
	if(window.event && window.event.keyCode == 123) {
		event.keyCode=0;
		event.returnValue=false;
	}
	if(window.event && window.event.keyCode == 13) {
		window.event.keyCode = 505;
	}
	if(window.event && window.event.keyCode == 8) {
		window.event.returnValue=false;
	}
}

document.oncontextmenu = function (event){
	if(window.event){
	event = window.event;
	}try{
	var the = event.srcElement;
	if (!((the.tagName == "INPUT" && the.type.toLowerCase() == "text") || the.tagName == "TEXTAREA")){
	return false;
	}
	return true;
	}catch (e){
	return false;
	}
}


//屏蔽键盘事件
document.onkeydown = function (){
	var e = window.event || arguments[0];
	//F12
	if(e.keyCode == 123){
		return false;
	//Ctrl+Shift+I
	}else if((e.ctrlKey) && (e.shiftKey) && (e.keyCode == 73)){
		return false;
	//Shift+F10
	}else if((e.shiftKey) && (e.keyCode == 121)){
		return false;
	//Ctrl+U
	}else if((e.ctrlKey) && (e.keyCode == 85)){
		setTimeout(function(){
		  },1);
		return false;
	}
};
//屏蔽鼠标右键
document.oncontextmenu = function (){
	setTimeout(function(){
	  },1);
	return false;
}*/

$(function(){
	$(window).on('scroll', function(){
		if($(window).scrollTop() > 1){
			$('header').addClass('fixed');
			$('.a_body').addClass('on');

		} else {
			$('header').removeClass('fixed');
			$('.a_body').removeClass('on');
		}
	});
	
	$("header .right .top .sousuo a").click(function(){
		$(this).next(".search").slideToggle();
	});
	
	$(".nav>ul>li").hover(function() {
		$(this).find('.sub').stop().slideDown(300);
	}, function() {
		$(this).find('.sub').stop().slideUp(300);
	});
	





    var bannerSwiper = new Swiper('.banner-scroll', {
      spaceBetween: 0,
      centeredSlides: true,
      speed:800,
      loop:true,
      autoplay: {
        delay: 4000,
        disableOnInteraction: false,
      },
      pagination: {
        el: '.miso-dots',
        clickable: true,
      },
      on:{
        init: function(swiper){
            if($(".banner-scroll .swiper-slide-active").find(".videosrc").text().indexOf(".mp4")!=-1){
                $(".swiper-slide-active video").attr("src",$(".banner-scroll .swiper-slide-active").find(".videosrc").text())
                var boxVideo = $(".swiper-slide-active video")[0]
                setTimeout(function(){
                $(".swiper-slide-active .banner-img").show();
                boxVideo.play();

                $(".swiper-slide-active .banner-video").show();
                $(".swiper-slide-active .banner-img").hide();
                    bannerSwiper.autoplay.stop();
                    boxVideo.addEventListener('ended', function () { 
                        bannerSwiper.autoplay.start();
                        bannerSwiper.slideNext();
                    }, false);
                },500);
            }

        },
        transitionStart: function(swiper){
                $(".swiper-slide-active .banner-img").show();
            if($(".banner-scroll .swiper-slide-active").find(".videosrc").text().indexOf(".mp4")!=-1){
              setTimeout(function(){
                bannerSwiper.autoplay.stop();
              },1000);
                $(".swiper-slide-active video").attr("src",$(".banner-scroll .swiper-slide-active").find(".videosrc").text())


                var boxVideo = $(".swiper-slide-active video")[0]


                boxVideo.play();
  //boxVideo.currentTime=0;

                $(".swiper-slide-active .banner-video").show();
                $(".swiper-slide-active .banner-img").hide();
                boxVideo.addEventListener('ended', function () { 
                    bannerSwiper.autoplay.start();
                    bannerSwiper.slideNext();
                    boxVideo.pause();
                }, false);
            }
        }
    },
    });


	
	$(".container01 .left ul").miso({
	  autoplaySpeed: 4000,
	  autoplay: true,
	  speed: 800,
	  fade: true,
	  slidesToShow: 1,
	  slidesToScroll: 1,
	  arrows: false,
	  dots: true,
	  focusOnSelect: true
	});
	
	$(".container01 .right ul li").mouseover(function(){
		$(".container01 .right ul li").removeClass("on");
	});
	$(".container01 .right ul li").mouseout(function(){
		$(".container01 .right ul li:first-child").addClass("on");
	});
	
	$(".container02 .right .box ul").miso({
	  autoplaySpeed: 4000,
	  autoplay: true,
	  speed: 800,
	  fade: true,
	  slidesToShow: 1,
	  slidesToScroll: 1,
	  arrows: false,
	  dots: true,
	  focusOnSelect: true
	});
	
	$(".container04 ul").miso({
	  autoplaySpeed: 4000,
	  autoplay: true,
	  speed: 800,
	  slidesToShow: 7,
	  slidesToScroll: 1,
	  arrows: true,
	  dots: false,
	  focusOnSelect: true
	});
	
	$(".piaofu ul li:nth-child(1),.piaofu ul li:nth-child(2),.piaofu ul li:nth-child(3),.piaofu ul li:nth-child(4),.piaofu ul li:nth-child(5),.piaofu ul li:nth-child(6),.piaofu ul li:last-child").css("display","block");
	$(".piaofu ul li:last-child a").attr("href","javascript:;");
	$(".piaofu ul li:last-child").click(function(){
		$(".piaofu ul li").siblings().toggleClass("on");
		$(".piaofu").toggleClass("on");
	});
	
	
	$(".sousuo").hover(function(){
		$(".sousuo").toggleClass("on");
	});
});