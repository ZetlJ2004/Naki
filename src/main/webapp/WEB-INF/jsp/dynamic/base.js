//获取浏览器类型
function getClientBrowser() {
	var Sys = {};
	var ua = navigator.userAgent.toLowerCase();
	var s;
	(s = ua.match(/msie ([\d.]+)/)) ? Sys.ie = s[1] : (s = ua
			.match(/firefox\/([\d.]+)/)) ? Sys.firefox = s[1] : (s = ua
			.match(/chrome\/([\d.]+)/)) ? Sys.chrome = s[1] : (s = ua
			.match(/opera.([\d.]+)/)) ? Sys.opera = s[1] : (s = ua
			.match(/version\/([\d.]+).*safari/)) ? Sys.safari = s[1] : 0;
	if (Sys.ie) {
		return "IE" + Sys.ie;
	} else {
		if (Sys.firefox) {
			return "Firefox";
		} else {
			if (Sys.chrome) {
				return "chrome";
			} else {
				if (Sys.opera) {
					return "opera";
				} else {
					if (Sys.safari) {
						return "Safari";
					} else {
						return "";
					}
				}
			}
		}
	}
}

//获取客户端操作系统类型  
function getClientOS() {
	var sUserAgent = navigator.userAgent;
	var isWin = (navigator.platform == "Win32") || (navigator.platform == "Windows");
	var isMac = (navigator.platform == "Mac68K") || (navigator.platform == "MacPPC") || (navigator.platform == "Macintosh") || (navigator.platform == "MacIntel");
	if (isMac) {
		return "Mac";
	}
	var isUnix = (navigator.platform == "X11") && !isWin && !isMac;
	if (isUnix) {
		return "Unix";
	}
	var isLinux = (String(navigator.platform).indexOf("Linux") > -1);
	if (isLinux) {
		return "Linux";
	}
	if (isWin) {
		var isWin2K = sUserAgent.indexOf("Windows NT 5.0") > -1 || sUserAgent.indexOf("Windows 2000") > -1;
		if (isWin2K) {
			return "Windows 2000";
		}
		var isWinXP = sUserAgent.indexOf("Windows NT 5.1") > -1 || sUserAgent.indexOf("Windows XP") > -1;
		if (isWinXP) {
			return "Windows XP";
		}
		var isWin2003 = sUserAgent.indexOf("Windows NT 5.2") > -1 || sUserAgent.indexOf("Windows 2003") > -1;
		if (isWin2003) {
			return "Windows 2003";
		}
		var isWin2003 = sUserAgent.indexOf("Windows NT 6.0") > -1 || sUserAgent.indexOf("Windows Vista") > -1;
		if (isWin2003) {
			return "Windows Vista";
		}
		var isWin2003 = sUserAgent.indexOf("Windows NT 6.1") > -1 || sUserAgent.indexOf("Windows 7") > -1;
		if (isWin2003) {
			return "Windows 7";
		}
	}
	return "None";
}
//浏览器语言
function getClientLanguage() {
	var language = navigator.language;
	var t = getClientBrowser();
	if (t.indexOf("IE") > -1) {//IE
		language = navigator.browserLanguage;
	}
	if (language == "zh-cn" || language == "zh-CN") {
		language = "\u4e2d\u6587(\u7b80\u4f53)";
	} else {
		if (language == "zh-tw" || language == "zh-hk") {
			language = "\u4e2d\u6587(\u7e41\u4f53)";
		} else {
			if (language == "en-us" || language == "en" || language == "en-US") {
				language = "\u82f1\u6587(\u7f8e\u56fd)";
			} else {
				language = "";
			}
		}
	}
	return language;
}
//获取url参数
function getUrlParams() {
	var params = {};
	var queryString = window.location.href.split('?')[1];
	if (queryString) {
		var paramPairs = queryString.split('&');
		for (var i = 0; i < paramPairs.length; i++) {
			var [key, value] = paramPairs[i].split('=');
			params[key] = decodeURIComponent(value);
		}
	}
	return params;
}
//生成UUID
function generateUUID() {
    var d = new Date().getTime();
    var uuid = 'xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'.replace(/[xy]/g, function(c) {
        var r = (d + Math.random() * 16) % 16 | 0;
        d = Math.floor(d / 16);
        return (c == 'x' ? r : (r & 0x3 | 0x8)).toString(16);
    });
    return uuid;
}

//0：不限制格式，1：电子邮件，2：手机号，3：数值（允许小数）
function checkMessageReg(regxType,value){
	var emailRegex = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,6}$/;
	var phoneRegex = /^1[23456789]\d{9}$/;
	var numRegex = /^\d+(\.\d)?$/;
	if(regxType==1){
		return emailRegex.test(value);
	}
	if(regxType==2){
		return phoneRegex.test(value);
	}
	if(regxType==3){
		return numRegex.test(value);
	}
}

//统计访问量
function pageView(webId, categoryId, contentId) {
	//new
	var visits_url = window.location.href;//页面连接
	var visits_from_url = document.referrer;//来源连接
	var os = getClientOS();//操作系统
	var name = getClientBrowser();//浏览器类型
	var language = getClientLanguage();
	var vscreen = screen.width + "*" + screen.height;
	var visitorsId = sessionStorage.getItem("_AndaCms_Front_VisitorsId_");
	//参数
	var param = {};
	param.type = "newsum";
	param.webId = webId;
	param.categoryId = categoryId;
	param.contentId = contentId;
	param.visits_url = visits_url;
	param.visits_from_url = visits_from_url;
	param.os = os;
	param.name = name;
	param.language = language;
	param.screen = vscreen;
	if (visitorsId == undefined || visitorsId.length == 0) {
		param.isNewVisitor = true;
	} else{
		param.isNewVisitor = false;
		param.visitorsId = visitorsId;
	}
	
	$.ajax({type: "POST", url: "/dynamic/pageView.jsp", async: true, data: param, dataType: "text", success: function(data) {
			if (data != undefined && data.length > 0) {
				sessionStorage.setItem("_AndaCms_Front_VisitorsId_", data);
			}
		}
	});
}

//
//统计杂志访问量
function magazinePageView(webId, magazineId, magazinetermId) {
	$.ajax({type:"POST", url:"/dynamic/pageView.jsp", async:true, data:{"type":"magazinesum", "webId":webId, "magazineId":magazineId, "magazinetermId":magazinetermId}, dataType:"text", success:function (data) {
	}});
}

//显示访问量
function showpageView(webId, categoryId, contentId) {
	if (webId != null) {
		$("#_spv_web_" + webId).html("0");
		$.ajax({type:"POST", url:"/dynamic/pageView.jsp", async:true, data:{"webId":webId, "type":"show"}, dataType:"text", success:function (data) {
			$("#_spv_web_" + webId).html($.trim(data));
		}});
	}
	if (categoryId != null) {
		$("#_spv_category_" + categoryId).html("0");
		$.ajax({type:"POST", url:"/dynamic/pageView.jsp", async:true, data:{"categoryId":categoryId, "type":"show"}, dataType:"text", success:function (data) {
			$("#_spv_category_" + categoryId).html($.trim(data));
		}});
	}
	if (contentId != null) {
		$("#_spv_content_" + contentId).html("0");
		$.ajax({type:"POST", url:"/dynamic/pageView.jsp", async:true, data:{"contentId":contentId, "type":"show"}, dataType:"text", success:function (data) {
			$("#_spv_content_" + contentId).html($.trim(data));
		}});
	}
}


//留言板初始化
function messageFormInit() {
	var messagesortsId = getUrlParams().messagesortsId;
	var uuid = generateUUID();
	var clientValue = sessionStorage.getItem("_AndaCms_Front_Message_VistiorId_");
	if (clientValue == undefined || clientValue.length == 0) {//如果是新人，则存储
		sessionStorage.setItem("_AndaCms_Front_Message_VistiorId_",uuid);
		$.post('/dynamic/captcha.jsp?type=message&messagesortsId=' + messagesortsId+'&visitorId='+uuid);
		clientValue = uuid;
	}
	if($("#messageCodeImg_"+messagesortsId).length>0){//启用验证码
		$("#messageCodeImg_" + messagesortsId).attr("src", '/dynamic/captcha.jsp?type=message&messagesortsId=' + messagesortsId+'&visitorId='+clientValue+'&r='+$.now());
		$("#messageCodeImg_" + messagesortsId).show();
		$("#messageCodeImg_" + messagesortsId).on("click",function(){
			$(this).attr("src", '/dynamic/captcha.jsp?type=message&messagesortsId=' + messagesortsId+'&visitorId='+clientValue+'&r='+$.now());
		});
	}
}

//留言提交(旧的)
function messageSubmit(messagesortsId) {
	var messageTitle = "";
	if ($("#messageTitle")) {
		messageTitle = $("#messageTitle").val();
		if (!messageTitle && $("#messageTitle").attr("required")) {
			alert("\u6807\u9898\u4e0d\u80fd\u4e3a\u7a7a\uff01");
			return false;
		}
	}
	var userName = "";
	if ($("#userName")) {
		userName = $("#userName").val();
		if (!userName && $("#userName").attr("required")) {
			alert("\u8bf7\u586b\u5199\u59d3\u540d\uff01");
			return false;
		}
	}
	var userPhone = "";
	if ($("#userPhone")) {
		userPhone = $("#userPhone").val();
		if (!userPhone && $("#userPhone").attr("required")) {
			alert("\u8bf7\u586b\u5199\u8054\u7cfb\u7535\u8bdd\uff01");
			return false;
		}
	}
	var messageType = "";
	if ($("#messageType")) {
		messageType = $("#messageType").val();
	}
	var userCompany = "";
	if ($("#userCompany")) {
		userCompany = $("#userCompany").val();
		if (!userCompany && $("#userCompany").attr("required")) {
			alert("\u8bf7\u586b\u5199\u5de5\u4f5c\u5355\u4f4d!");
			return false;
		}
	}
	var userSex = "";
	if ($("#userSex")) {
		userSex = $("input:radio[name='userSex']:checked").val();
	}
	var userAge = "";
	if ($("#userAge")) {
		userAge = $("#userAge").val();
		if (!userAge && $("#userAge").attr("required")) {
			alert("\u8bf7\u586b\u5199\u5e74\u9f84\uff01");
			return false;
		}
	}
	var userAddress = "";
	if ($("#userAddress")) {
		userAddress = $("#userAddress").val();
		if (!userAddress && $("#userAddress").attr("required")) {
			alert("\u8bf7\u586b\u5199\u5730\u5740\uff01");
			return false;
		}
	}
	var userZipcode = "";
	if ($("#userZipcode")) {
		userZipcode = $("#userZipcode").val();
		if (!userZipcode && $("#userZipcode").attr("required")) {
			alert("\u8bf7\u586b\u5199\u90ae\u7f16\uff01");
			return false;
		}
	}
	var userMobile = "";
	if ($("#userMobile")) {
		userMobile = $("#userMobile").val();
		if (!userMobile && $("#userMobile").attr("required")) {
			alert("\u8bf7\u586b\u5199\u624b\u673a\u53f7\u7801\uff01");
			return false;
		}
	}
	var userIdcard = "";
	if ($("#userIdcard")) {
		userIdcard = $("#userIdcard").val();
		if (!userIdcard && $("#userIdcard").attr("required")) {
			alert("\u8bf7\u586b\u5199\u8eab\u4efd\u8bc1\u53f7\uff01");
			return false;
		}
	}
	var userEmail = "";
	if ($("#userEmail")) {
		userEmail = $("#userEmail").val();
		if (!userEmail && $("#userEmail").attr("required")) {
			alert("\u8bf7\u586b\u5199\u7535\u5b50\u90ae\u7bb1\uff01");
			return false;
		}
	}
	var messageIspublic = "";
	if ($("#messageIspublic")) {
		messageIspublic = $("input:radio[name='messageIspublic']:checked").val();
	}
	var messageContent = "";
	if ($("#messageContent")) {
		messageContent = $("#messageContent").val();
		if (!messageContent && $("#messageContent").attr("required")) {
			alert("\u5185\u5bb9\u4e0d\u80fd\u4e3a\u7a7a\uff01");
			return false;
		}
	}
	var dataparam={};
	dataparam.msgTplType=8;
	dataparam.messagesortsId = messagesortsId;
	dataparam.messageTitle = messageTitle;
	dataparam.messageContent = messageContent;
	dataparam.userName = userName;
	dataparam.userPhone = userPhone;
	dataparam.messageType = messageType;
	dataparam.userCompany = userCompany;
	dataparam.userSex = userSex;
	dataparam.userAge = userAge;
	dataparam.userAddress = userAddress;
	dataparam.userZipcode = userZipcode;
	dataparam.userMobile = userMobile;
	dataparam.userIdcard = userIdcard;
	dataparam.userEmail = userEmail;
	dataparam.messageIspublic = messageIspublic;
	dataparam.userMobile = userMobile;
	$.ajax({type:"POST", url:"/dynamic/message.jsp", async:false, data:dataparam, dataType:"text", success:function (data) {
		if ($.trim(data) == "0") {
			alert("\u7559\u8a00\u63d0\u4ea4\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5\uff01");
		} else if($.trim(data) == "1"){
			alert("\u7559\u8a00\u5df2\u6210\u529f\u63d0\u4ea4\uff01");
		}
		document.getElementById("messageForm").reset();
	}});
}

//留言提交新的
function messageSubmitCustom(messagesortsId) {
	var form = $("#messageForm_"+messagesortsId);
	var values = {};
	values.messagesortsId = messagesortsId;
	values.msgTplType =9;//新的提交方式
	values.visitorsId = sessionStorage.getItem("_AndaCms_Front_Message_VistiorId_");
	var allPass = true;
	//处理input=text
	$(form).find("input[type='text']").each(function(){
		var name = $(this).attr("name");
		var value = $(this).val();
		var text = $(this).attr("text");
		var req = $(this).attr("required");
		var regx = $(this).attr("regx");
		if(req && value.length==0){//必填项验证
			alert("请输入："+text);
			allPass = false;
			return false;
		}
		if(regx!=undefined && regx!=0 && value.length>0){
			var c = checkMessageReg(regx,value);
			if(!c){
				alert(text+"：格式不正确，请重新输入！");
				allPass = false;
				return false;
			}
		}
		values[name]=value;
	});
	if(!allPass){
		return;
	}
	//处理textarea
	$(form).find("textarea").each(function(){
		var name = $(this).attr("name");
		var value = $(this).val();
		var text = $(this).attr("text");
		var req = $(this).attr("required");
		if(req && value.length==0){//必填项验证
			alert("请输入"+text);
			allPass = false;
			return false;
		}
		values[name]=value;
	});
	if(!allPass){
		return;
	}
	//处理raido,没有必填项，只处理值
	var oldName = "";
	$(form).find("input[type='radio']").each(function(){
		var name = $(this).attr("name");
		if(name===oldName){
			return;
		}else{
			oldName = name;
			values[name]=$(form).find("input:radio[name='"+name+"']:checked").val();
		}
	});
	$.ajax({type:"POST", url:"/dynamic/message.jsp", async:false, data:values, dataType:"text", success:function (data) {
		if ($.trim(data) == "-2") {
			alert("必填项不能为空！");
		} else if($.trim(data) == "-3"){
			alert("留言板不存在或留言已经关闭！");
		} else if($.trim(data) == "-1"){
			alert("数据格式不正确,请重新输入！");
		} else if($.trim(data) == "-4"){
			alert("验证码不正确,请重新输入！");
		} else if($.trim(data) == "-5"){
			alert("非法操作！");
		} else if($.trim(data) == "1"){
			alert("提交成功！");
			$("#messageForm_"+messagesortsId)[0].reset();
		}
	}});
}

//评论提交
function commentsSubmit() {
	var contentId = $("#_comments_contentId").val();
	var commentsUser = $("#_comments_commentsUser").val();
	var commentsContent = $("#_comments_commentsContent").val();
	if ($.trim(commentsUser).length == 0) {
		alert("\u8bf7\u8f93\u5165\u8bc4\u8bba\u4eba");
		return;
	}
	if ($.trim(commentsContent).length == 0) {
		alert("\u8bf7\u8f93\u5165\u8bc4\u8bba\u5185\u5bb9");
		return;
	}
	$.ajax({type:"POST", url:"/dynamic/comments.jsp", async:true, data:{"categoryId":contentId, "type":1, "commentsUser":commentsUser, "commentsContent":commentsContent}, dataType:"text", success:function (data) {
		alert("\u8bc4\u8bba\u6210\u529f,\u8bf7\u7b49\u5f85\u7ba1\u7406\u5458\u5ba1\u6838");
		document.getElementById("commentsSaveForm").reset();
	}});
}

//显示文章审核通过的评论总数
function showContentCount(contentId) {
	if (contentId != null) {
		$.ajax({type:"POST", url:"/dynamic/comments.jsp", async:false, data:{"categoryId":contentId, "type":3}, dataType:"text", success:function (data) {
			$("#_scn_content_" + contentId).html($.trim(data));
		}});
	}
}

//检查调查投票复选框选项限制
jQuery(function ($) {
	$("input:checkbox[name*=\"item\"]").click(function () {
		var subjectId = this.name.replace("item", "");
		if (this.checked) {
			var checkedid = $("input:checkbox[name*='item" + subjectId + "']:checked");
			var selectlimit = $("#selectLimite" + subjectId).val();
			if (checkedid.length > selectlimit) {
				alert("\u6700\u591a\u9009\u62e9" + selectlimit + "\u9879");
				this.checked = false;
			}
		}
	});
});


//提交投票
function submitVote() {
	var xml = "<?xml version=\"1.0\" encoding=\"gb2312\"?>";
	xml += "<root>";
	var voteId = $("#voteId").val();
	var checkedid = $("input[name*=\"item\"]:checked");
	var itemname = "";
	if (checkedid.length > 0) {
		$(checkedid).each(function () {
			if (this.name != itemname) {
				if (itemname == "") {
					xml += "<item name='" + this.name.replace("item", "") + "'>";
				} else {
					xml += "</item><item name='" + this.name.replace("item", "") + "'>";
				}
			}
			xml += "<value val='" + this.value + "'></value>";
			itemname = this.name;
		});
		xml += "</item>";
	}
	var area = $("textarea[name*=\"item\"]");
	itemname = "";
	if (area.length > 0) {
		$(area).each(function () {
			if (this.name != itemname) {
				if (itemname == "") {
					xml += "<item name='" + this.name.replace("item", "") + "'>";
				} else {
					xml += "</item><item name='" + this.name.replace("item", "") + "'>";
				}
			}
			xml += "<value val='" + this.value + "'></value>";
			itemname = this.name;
		});
		xml += "</item>";
	}
	xml += "</root>";
	$.ajax({type:"POST", url:"/dynamic/vote.jsp", async:false, data:{"voteId":voteId, "type":"submit", "xml":xml}, dataType:"text", success:function (data) {
		if (data == 1) {
			alert("\u60a8\u5df2\u6210\u529f\u63d0\u4ea4\u8c03\u67e5\u6295\u7968");
		} else {
			if (data == 0) {
				alert("\u63d0\u4ea4\u8c03\u67e5\u6295\u7968\u5931\u8d25\uff0c\u8bf7\u91cd\u65b0\u5c1d\u8bd5");
			} else {
				if (data == -1) {
					alert("\u8be5\u8c03\u67e5\u6295\u7968\u672a\u5f00\u59cb\uff01");
				} else {
					if (data == -2) {
						alert("\u8be5\u8c03\u67e5\u6295\u7968\u5df2\u5173\u95ed\uff01");
					} else {
						if (data == -3) {
							alert("\u8be5\u8c03\u67e5\u6295\u7968\u5df2\u7ed3\u675f\uff01");
						} else {
							if (data == -4) {
								alert("\u540c\u4e00IP\u4e00\u5929\u53ea\u80fd\u6295\u4e00\u6b21\u7968\uff01");
							}
						}
					}
				}
			}
		}
	}});
}

//显示投票结果
function showVoteResult(subjectId, itemId) {
	if (subjectId != null && itemId != null) {
		$.ajax({type:"POST", url:"/dynamic/vote.jsp", async:true, data:{"subjectId":subjectId, "type":"showResult", "itemId":itemId}, dataType:"text", success:function (data) {
			if (data) {
				var count = data.split(",")[0];
				var percent = data.split(",")[1];
				$("#count" + itemId).empty();
				$("#count" + itemId).append(count);
				$("#chart" + itemId).css("width", percent + "px");
				$("#percent" + itemId).empty();
				$("#percent" + itemId).append(percent + "%");
			}
		}});
	}
}


//验证前台是否登陆,如果登陆,返回用户信息,没登陆返回false;
function checkLogin(){
	var result = false;
	$.ajax({type:"POST", url:"/dynamic/login.jsp", async:false, data:{"cmd":"checkLogin"}, dataType:"text", success:function (data) {
		if (data && $.trim(data).length>0){
			if(($.trim(data))=='false'){
				result=false;
			}else{
				result=eval("("+$.trim(data)+")");
			}
		}
	}});
	return result;
}

//前台登陆,传递用户名,密码,成功返回用户信息,失败返回False
function login(username,password,rememberme){
	var result = false;
	if(username!=null && $.trim(username).length>0 && password!=null && $.trim(password).length>0){
		$.ajax({type:"POST", url:"/dynamic/login.jsp", async:false, data:{"cmd":"login", "username":username, "password":password,"rememberme":rememberme}, dataType:"text", success:function (data) {
			if (data && $.trim(data).length>0){
				if(($.trim(data))=='false'){
					result=false;
				}else{
					result=eval("("+$.trim(data)+")");
				}
			}
		}});
	}
	return result;
}
//前台注销
function logout(){
	var result = false;
	$.ajax({type:"POST", url:"/dynamic/login.jsp", async:false, data:{"cmd":"logout"}, dataType:"text", success:function (data) {
		if (data && $.trim(data).length>0){
			if(($.trim(data))=='false'){
				result=false;
			}else{
				result=true;
			}
		}
	}});
	return result;
}

//只能输入数字
function checkNum(ele){
	ele.value=ele.value.replace(/\D/g,'');
}
