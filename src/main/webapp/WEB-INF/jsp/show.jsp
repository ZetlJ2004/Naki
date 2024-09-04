<%--
  Created by IntelliJ IDEA.
  User: 13746
  Date: 2024/7/16
  Time: 23:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <c:url var="base" value="/"/>
    <base href="${base}">
    <meta charset="UTF-8">
    <title>详情</title>


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
    <style>

        .title {
            text-align: center;
            font-size: 2em;
            margin-bottom: 10px;
        }
        .time {
            text-align: center;
            color: gray;
            font-size: 0.9em;
            margin-bottom: 10px;
        }

        .content {
            padding: 20px;
            font-size: 1em;
            line-height: 1.6;
        }
    </style>
</head>
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
<div >
    <div class="banner_img">
        <img src="img/轮播图底.png" class="banner_img"/>
    </div>
</div>

    <div class="title">
        <%= request.getAttribute("title") %>
    </div>
    <div class="time">
        <%= request.getAttribute("insertTime") %>
    </div>
    <br>
    <div class="content">
        <%= request.getAttribute("content") %>
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
