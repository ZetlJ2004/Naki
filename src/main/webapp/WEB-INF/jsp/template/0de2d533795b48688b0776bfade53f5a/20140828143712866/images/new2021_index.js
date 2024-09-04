$(function() {
	
	//首頁視頻
	if($(".slide") != undefined) {
		//视频参数
		var videoSetings = {
			"autoplay": true,
			"controls": false,
			"muted": true,
			"width": "1200",
			"height": "533",
			"loop": false,
			"sources": []
		};
		//videojs.options.flash.swf = "video/video-js.swf";
		var current = 0; //当前的
		function pointIndex(i){
			$(".ban_nav").children('a').eq(i).addClass('on');
			$(".ban_nav").children('a').eq(i-1).removeClass('on');
		}
		var max = $(".slide").children(".ban_c").length; //个数
		for(var i=1; i<=max; i++){
			var ban_nav_a="<a></a>";
			$(".ban_nav").append(ban_nav_a)
		}
		var playOne = function(i) {
			$(".slide .ban_c").hide();
			var one = $($(".slide .ban_c")[i]);
			var videoSrc = one.find("a").attr("videoSrc");
			var videoId = one.find("a").attr("videoId");
			if(videoSrc.length > 0) {
				clearInterval(window.indexTimer); //清空全局定时器
				videoSetings.sources = [];
				videoSetings.sources.push({
					src: videoSrc,
					type: "video/mp4"
				});
				var html = "<video id='"+videoId+"' class='video-js' muted autoplay ></video>";
				one.find("div").before(html);
				videojs(videoId, videoSetings,function(){
					this.on("ended",function(){
						this.dispose();
						window.indexTimer = window.setInterval(autoRun, 5000);
						autoRun();
					});
				});	
			} else {
				one.find("img").show();
			}
			one.fadeIn("slow");
		}
		
		$(".ban_nav a").click(function(){
       		$(this).addClass("on").siblings("a").removeClass("on");
            var index=$(this).index();
            current=index;
            playOne(current);
       });
       
		var autoRun = function() {
			current++;
			if(current == max) {
				current = 0;
			}
			playOne(current);
			pointIndex(current);
		}
		window.indexTimer = window.setInterval(autoRun, 5000);
		playOne(current);
		pointIndex(current);
	}

});