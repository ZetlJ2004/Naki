<%--
  Created by IntelliJ IDEA.
  User: 13746
  Date: 2024/7/14
  Time: 20:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <c:url var="base" value="/"/>
    <base href="${base}">
    <meta charset="UTF-8">
    <title>东北林业大学软件工程专业</title>


    <script type="text/javascript">$(function(){pageView('f872c80d7f2d4ecc861bc461b6f94096','','');});</script>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,Chrome=1" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
    <script type="text/javascript" src="https://www.hebtu.edu.cn/template/0de2d533795b48688b0776bfade53f5a/20140828143712866/images/jquery-1.8.2.min.js"></script>

    <link rel="stylesheet" type="text/css" href="https://www.hebtu.edu.cn/template/0de2d533795b48688b0776bfade53f5a/20140828143712866/images/new2021_index.css">
    <link rel="stylesheet" type="text/css" href="https://www.hebtu.edu.cn/template/0de2d533795b48688b0776bfade53f5a/20140828143712866/images/ban.css">
    <link rel="stylesheet" type="text/css" href="https://www.hebtu.edu.cn/template/0de2d533795b48688b0776bfade53f5a/20140828143712866/images/video-js.min.css">
    <link rel="stylesheet" type="text/css" href="https://www.hebtu.edu.cn/template/0de2d533795b48688b0776bfade53f5a/20140828143712866/images/phone_index.css?v=20220531">

    <script type="text/javascript" src="https://www.hebtu.edu.cn/template/0de2d533795b48688b0776bfade53f5a/20140828143712866/images/nav.js"></script>
    <script type="text/javascript" src="https://www.hebtu.edu.cn/template/0de2d533795b48688b0776bfade53f5a/20140828143712866/images/video.min.js"></script>
    <script type="text/javascript" src="https://www.hebtu.edu.cn/template/0de2d533795b48688b0776bfade53f5a/20140828143712866/images/new2021_index.js"></script>
    <script type="text/javascript" src="https://www.hebtu.edu.cn/template/0de2d533795b48688b0776bfade53f5a/20140828143712866/images/ban.js?v=20220531"></script>
    <script type="text/javascript" src="https://www.hebtu.edu.cn/template/0de2d533795b48688b0776bfade53f5a/20140828143712866/images/phone_public.js"></script>
    <!--[if IE 6]>
            <script type="text/javascript" src="https://www.hebtu.edu.cn/template/0de2d533795b48688b0776bfade53f5a/20140828143712866/images/DD_belatedPNG.js"></script>
            <script type="text/javascript">
                DD_belatedPNG.fix("*");
            $(function(){
                //IE6提示
                var _ie6 ="<div class='_ie6_div' style='position:absolute;top:0;left:0;background:#F8EFB4;z-index:999;width:100%;font-size:12px;text-align:center;border-bottom:1px solid #EED64D;'>";
                _ie6=_ie6+"<div style='position:relative;width:1000px;margin:0 auto;height:50px;line-height:50px;text-align:left;padding-left:50px;background:url(ie6.jpg) 10px 10px no-repeat;color:#503708;'>";
                _ie6=_ie6+"您的浏览器版本过低，大部分网站已经不兼容且存在安全隐患，建议您升级为 Chrome浏览器";
                _ie6=_ie6+"&nbsp;&nbsp;<a style='color:blue;' href='https://www.google.cn/intl/zh-CN/chrome/'>Chrome浏览器下载</a>&nbsp;/&nbsp;";
                _ie6=_ie6+"</div>";
                _ie6=_ie6+"</div>";
                $(".con").before(_ie6);

            });
            </script>

        <![endif]-->
    <script type="text/javascript">
        $(function($){
            $("#search").focus(function(){
                var va = $(this).val();
                if(va=="搜索"){
                    $(this).val("");
                }
            });
            $("#search").blur(function(){
                var va = $(this).val().replace(/(^\s*)|(\s*$)/g, "");
                if(va==""){
                    $(this).val("搜索");
                }
            });
        });


    </script>

</head>
<style>
    .index_con2{height:400px;}
    .index_con_pic img{margin-top:13px;margin-right:5px;}
    .sj_ban{width: 100%; height: 533px;}
    @media(max-width:800px){
        .pc_piaochuang{display: none;}
        .sj_ban,.banner{height: 200px;}
        .listCon li{position: relative; overflow: hidden; padding-right: 40px;}
        .listCon li span{display: inline-block; height: 50px; line-height: 50px; position: absolute; right: 0;color: #999999; font-size: 14px;}
        .listCon li a{display: inline-block;}
        .listCon2 li{padding-right: 0; padding-bottom: 25px;}
        .listCon2 li{height: 75px;}
        .listCon2 li span{display: block; bottom: 0; height: 25px; line-height: 25px; font-size:14px; color: #999999;white-space:nowrap;text-overflow:ellipsis; overflow: hidden; right: auto;}
    }
</style>
<body>
<div class="top">
    <div class="logo">
        <img src="img/85719845a6e26248c253cba09cc277fc.png">
    </div>
    <div class="top_right">
        <div class="englishT">

            <p>Eng Lan</p>
        </div>
        <div style="margin:0;padding:0;">  	<form action="" method="post">

            <input name="keyword" type="text" class="search" id="search" value="搜索"/>
            <input name="" type="submit" class="btn_search" value=""/>

        </form>
        </div>

    </div>
    <div class="nav">
        <style>
            #easynav li a{width:100px;}
        </style>
        <ul id="easynav">
            <li><a href="main">首页</a></li>
            <li><a >专业简介<div class="spic"></div></a>
                <ul>
                    <li><a href="intru.html">专业简介</a></li>
                    <li><a href="waytru.html">方向简介</a></li>

                </ul>
            </li>
            <li><a>实验室<span class="spic"></span></a>
                <ul>
                    <li><a href="923.html">923创新实验室</a></li>
                    <li><a href="925.html">925移动实验室</a></li>
                    <li><a href="9925.html">923实验室</a></li>
                </ul>
            </li>
            <li><a >教师队伍<span class="spic"></span></a>
                <ul>
                    <li><a href="professor.html">教授</a></li>
                    <li><a href="Fprofessor.html">副教授</a></li>
                    <li><a href="teacher.html">讲师</a></li>
                    <li>
                </ul>
            </li>
            <li><a >新闻公告<span class="spic"></span></a>
                <ul>
                    <li><a href="allnews">新闻</a></li>
                    <li><a href="allnotices">公告</a></li>
                </ul>
            </li>
            <li><a >就业指南</a>
            <li><a ><span style="visibility: hidden">人才招聘</span></a>
            </li>
            <li><a ><span style="visibility: hidden">人才招聘</span></a>
            <li>        <li><a ><span style="visibility: hidden">人才招聘</span></a>

            <li><a href="filter/manger">后台管理系统</a></li>
        </ul>
        <script>
            $(function(){
                $('.top>.top_right>.englishT>a:last-child').attr('href','');
            });
        </script>
    </div>
</div>


<!-- 视频轮播图 -->
<div class="banner">
    <div id="slide" class="slide" data-slide='{"action":"click","fn":"banner_ext","time":"500000"}'>
        <div class="ban_c album">
            <a href="" videoSrc="" videoId="a2">
                <img class="m_img" src="img/1rxqn.png"  />
                <div class="shadow">青春如火，初心似炬！</div>
            </a>
        </div>
        <div class="ban_c album">
            <a href="" videoSrc="" videoId="a1">
                <img class="m_img" src="img/1920x655.jpg"  />
                <div class="shadow">扎实开展党纪学习教育</div>
            </a>
        </div>
        <div class="ban_c album">
            <a href="" videoSrc="" videoId="a2">
                <img class="m_img" src="img/1rxqn.png"  />
                <div class="shadow">青春如火，初心似炬！</div>
            </a>
        </div>
        <div class="ban_c album">
            <a href="" videoSrc="" videoId="a3">
                <img class="m_img" src="img/dtl.png"  />
                <div class="shadow">东北林业大学教育思想与高质量发展大讨论动员大会</div>
            </a>
        </div>

    </div>
    <div class="ban_nav"></div>
</div>

</div>



<div class="content">
    <div class="index_con">
        <h1 class="index_h1">
            新闻       <span><a href="allnews" target="_blank">更多</a></span>
        </h1>
        <div class="index_con_news">
            <ul>
                <c:forEach items="${Newses}" var="u" end="4">
                    <li><span>${u.updateTime}</span><a  href="shownews?id=${u.id}">${u.title}</a></li>
                </c:forEach>
            </ul>
        </div>
    </div>
    <div class="index_con2 tzgg">
        <h1 class="index_h1">
            公告<span><a href="allnotices" target="_blank">更多</a></span>
        </h1>
        <div class="index_con_news">

            <ul>
                <c:forEach items="${Notices}" var="u" end="4">
                    <li><span>${u.updateTime}</span><a  href="shownotices?id=${u.id}">${u.title}</a></li>
                </c:forEach>

            </ul>

        </div>

    </div>
    <div class="index_con">
        <h1 class="index_h1">
            学术活动
        </h1>

        <div class="index_top_news2">

            <span class="index_top_span2"  style="width:70px;margin-left:15px;color:#b3b3b3;font-weight:normal;">07-15</span>
            <span class="index_top_span3" style="width:490px;line-height:20px;color:#727272;height:360px;"><h1 class="index_h2"  style="font-size:15px;font-weight:normal;"><a title="123）" href="">WEBWEBWEB...</a></h1>


                    <div style="overflow:hidden;zoom:1;"><div style="float:left;width:100%;font-size:14px;line-height:20px;white-space:nowrap;overflow:hidden; text-overflow: ellipsis;" title="">主讲人：BO</div><div style="float:left;width:100%;font-size:14px;line-height:20px; overflow: hidden; text-overflow: ellipsis; white-space: nowrap;">主办单位：计控学院</div></div></span>
        </div>

        <div class="index_top_news2">

            <span class="index_top_span2"  style="width:70px;margin-left:15px;color:#b3b3b3;font-weight:normal;">07-15</span>
            <span class="index_top_span3" style="width:490px;line-height:20px;color:#727272;height:360px;"><h1 class="index_h2"  style="font-size:15px;font-weight:normal;"><a title="123）" href="">WEBWEBWEB...</a></h1>


                    <div style="overflow:hidden;zoom:1;"><div style="float:left;width:100%;font-size:14px;line-height:20px;white-space:nowrap;overflow:hidden; text-overflow: ellipsis;" title="">主讲人：BO</div><div style="float:left;width:100%;font-size:14px;line-height:20px; overflow: hidden; text-overflow: ellipsis; white-space: nowrap;">主办单位：计控学院</div></div></span>
        </div>

        <div class="index_top_news2">

            <span class="index_top_span2"  style="width:70px;margin-left:15px;color:#b3b3b3;font-weight:normal;">07-15</span>
            <span class="index_top_span3" style="width:490px;line-height:20px;color:#727272;height:360px;"><h1 class="index_h2"  style="font-size:15px;font-weight:normal;"><a title="123）" href="">WEBWEBWEB...</a></h1>


                    <div style="overflow:hidden;zoom:1;"><div style="float:left;width:100%;font-size:14px;line-height:20px;white-space:nowrap;overflow:hidden; text-overflow: ellipsis;" title="">主讲人：BO</div><div style="float:left;width:100%;font-size:14px;line-height:20px; overflow: hidden; text-overflow: ellipsis; white-space: nowrap;">主办单位：计控学院</div></div></span>
        </div>

        <div class="index_top_news2">

            <span class="index_top_span2"  style="width:70px;margin-left:15px;color:#b3b3b3;font-weight:normal;">07-13</span>
            <span class="index_top_span3" style="width:490px;line-height:20px;color:#727272;height:360px;"><h1 class="index_h2"  style="font-size:15px;font-weight:normal;"><a title="123）" href="">WEBWEBWEB...</a></h1>


                    <div style="overflow:hidden;zoom:1;"><div style="float:left;width:100%;font-size:14px;line-height:20px;white-space:nowrap;overflow:hidden; text-overflow: ellipsis;" title="">主讲人：BO</div><div style="float:left;width:100%;font-size:14px;line-height:20px; overflow: hidden; text-overflow: ellipsis; white-space: nowrap;">主办单位：计控学院</div></div></span>
        </div>

        <div class="index_top_news2">

            <span class="index_top_span2"  style="width:70px;margin-left:15px;color:#b3b3b3;font-weight:normal;">07-11</span>
            <span class="index_top_span3" style="width:490px;line-height:20px;color:#727272;height:360px;"><h1 class="index_h2"  style="font-size:15px;font-weight:normal;"><a title="123）" href="">WEBWEBWEB...</a></h1>


                    <div style="overflow:hidden;zoom:1;"><div style="float:left;width:100%;font-size:14px;line-height:20px;white-space:nowrap;overflow:hidden; text-overflow: ellipsis;" title="">主讲人：BO</div><div style="float:left;width:100%;font-size:14px;line-height:20px; overflow: hidden; text-overflow: ellipsis; white-space: nowrap;">主办单位：计控学院</div></div></span>
        </div>

    </div>


    <div class="index_con2 sj_index_top">
        <h1 class="index_h1" style="margin-bottom: 0;">
            专题活动
        </h1>
        <div class="index_con_pic">

            <a href=""><img src="img/1.jpg"/></a>

            <a href=""><img src="img/2.jpg"/></a>

            <a href=""><img src="img/3.jpg"/></a>

            <a href=""><img src="img/4.jpg"/></a>

            <a href=""><img src="img/5.png"/></a>

            <a href=""><img src="img/6.jpg"/></a>

            <a href=""><img src="img/7.jpg"/></a>

            <a href=""><img src="img/8.jpg"/></a>

            <a href=""><img src="img/9.jpg"/></a>


        </div>

        <div class="sj_index_top">
            <h1 class="index_h2" style="height:32px; line-height:45px; margin-top: 2px;">
                快速通道
            </h1>
            <style>
                .index_con_pic .index_h2{height: 32px; line-height: 40px;}
                .index_con_pic ul{overflow: hidden; width: 553px;}
                .index_con_pic ul li{width:138px;padding-left:0px;line-height:16px;}
                .index_con_pic img{margin-right:2px;}
            </style>

            <div class="index_con_pic sj_pic2">
                <ul>
                    <li><a href=""><img src="img/arrow_right.gif"/>信息门户</a></li>
                    <li><a href=""><img src="img/arrow_right.gif"/>书记校长信箱</a></li>
                    <li><a href=""><img src="img/arrow_right.gif"/>教务管理</a></li>
                    <li><a href=""><img src="img/arrow_right.gif"/>课程在线</a></li>
                    <li><a href=""><img src="img/arrow_right.gif"/>邮箱登录</a></li>
                    <li><a href=""><img src="img/arrow_right.gif"/>图 书 馆</a></li>
                    <li><a href=""><img src="img/arrow_right.gif"/>校园网关</a></li>
                    <li><a href=""><img src="img/arrow_right.gif"/>校　　历</a></li>
                </ul></br>
            </div>
        </div>
    </div></div>
<div style="clear:both;">
</div>

<div class="footer">
    <div class="foot">
        <ul>
            <li class="foot_wei"><a>专业简介</a></li>
            <li><a>专业简介</a></li>
            <li><a >方向简介</a></li>
        </ul>
        <ul>
            <li class="foot_wei"><a>实验室</a></li>
            <li><a>923创新实验室</a></li>
            <li><a >925移动实验室</a></li>
            <li><a >923实验室</a></li>
        </ul>
        <ul>
            <li class="foot_wei"><a>教师队伍</a></li>
            <li><a>教授</a></li>
            <li><a >副教授</a></li>
            <li><a >讲师</a></li>
        </ul>
        <ul>
            <li class="foot_wei"><a>新闻公告</a></li>
            <li><a>新闻</a></li>
            <li><a >公告</a></li>
        </ul>
    </div>
</div>

<div class="copy">
    <p>2022级张津麟WEB课程设计</p>
</div>





</body>
</html>
