<%--
  Created by IntelliJ IDEA.
  User: 13746
  Date: 2024/7/16
  Time: 21:10
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
    <title>修改新闻</title>
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
    body {
        font-family: Arial, sans-serif;
        display: flex;
        justify-content: center;
        align-items: center;
        flex-direction: column;
        height: 100vh;
        margin: 0;
    }
    .editor-container {
        text-align: center;
        width: 800px;
    }
    .toolbar {
        display: flex;
        justify-content: center;
        flex-wrap: wrap;
        margin-bottom: 10px;
    }
    .toolbar button, .toolbar select {
        border: 1px solid #ccc;
        background-color: #f9f9f9;
        padding: 5px 10px;
        margin: 0 2px;
        border-radius: 5px;
        cursor: pointer;
    }
    .color-option {
        width: 20px;
        height: 20px;
        display: inline-block;
        margin: 0 2px;
        border: 1px solid #ccc;
        cursor: pointer;
    }
    #editor {
        width: 100%;
        height: 500px;
        border: 1px solid #ccc;
        padding: 10px;
        font-size: 14px;
        margin-bottom: 10px;
    }
    form {
        text-align: center;
    }
    input[type="submit"] {
        border: 1px solid #ccc;
        background-color: #4CAF50;
        color: white;
        padding: 10px 20px;
        border-radius: 5px;
        cursor: pointer;
    }
    input[type="text"] {
        width: 100%;
        padding: 10px;
        margin-bottom: 10px;
        border: 1px solid #ccc;
        border-radius: 5px;
    }
</style>
<body>

<div class="top">
    <div class="logo">
        <img src="img/85719845a6e26248c253cba09cc277fc.png">
    </div>
    <hr>
    <div class="top_right">
        <div class="englishT">

            <p>Eng Lan</p>
        </div>

        <script>
            $(function(){
                $('.top>.top_right>.englishT>a:last-child').attr('href','');
            });
        </script>
    </div>
</div>
<hr>
<div class="editor-container">
    <div class="editor-container">
        <h2>修改新闻</h2>
        <input type="text" id="title" name="title" placeholder="标题" value="<%= request.getAttribute("title")%>">
        <div class="toolbar">
            <button onclick="formatText('bold')"><b>B</b></button>
            <button onclick="formatText('italic')"><i>I</i></button>
            <button onclick="formatText('underline')"><u>U</u></button>
            <button onclick="formatText('strikethrough')"><s>S</s></button>
            <button onclick="insertLink()">Insert Link</button>
            <select onchange="formatText('fontSize', this.value)">
                <option value="">Font Size</option>
                <option value="10px">10px</option>
                <option value="12px">12px</option>
                <option value="14px">14px</option>
                <option value="16px">16px</option>
                <option value="18px">18px</option>
                <option value="20px">20px</option>
                <option value="24px">24px</option>
                <option value="28px">28px</option>
                <option value="32px">32px</option>
                <option value="36px">36px</option>
            </select>
            <select onchange="formatText('foreColor', this.value)">
                <option value="">Font Color</option>
                <option value="black" style="background-color: black; color: white;">Black</option>
                <option value="red" style="background-color: red; color: white;">Red</option>
                <option value="blue" style="background-color: blue; color: white;">Blue</option>
                <option value="green" style="background-color: green; color: white;">Green</option>
                <option value="yellow" style="background-color: yellow; color: black;">Yellow</option>
                <option value="purple" style="background-color: purple; color: white;">Purple</option>
            </select>
            <select onchange="formatText(this.value)">
                <option value="">Text Align</option>
                <option value="justifyLeft">Left Align</option>
                <option value="justifyCenter">Center Align</option>
                <option value="justifyRight">Right Align</option>
            </select>
        </div>
        <div id="editor" contenteditable="true"><%= request.getAttribute("content")%></div>
        <form action="editnew" method="post" onsubmit="prepareContent()">
            <input type="hidden" id="content" name="content">
            <input type="hidden" id="submittedTitle" name="title">
            <input type="hidden" name="id" value="<%= request.getAttribute("id")%>">
            <input type="submit" value="提交">
        </form>
    </div>

    <script>
        function formatText(command, value = null) {
            if (command === 'fontSize') {
                document.execCommand('fontSize', false, '7');
                document.querySelectorAll('#editor *').forEach(node => {
                    if (node.style.fontSize === 'xxx-large') {
                        node.style.fontSize = value;
                    }
                });
            } else {
                document.execCommand(command, false, value);
            }
        }

        function insertLink() {
            var url = prompt("Enter the URL");
            document.execCommand('createLink', false, url);
        }

        function prepareContent() {
            var editorContent = document.getElementById('editor').innerHTML;
            var titleContent = document.getElementById('title').value;
            document.getElementById('content').value = editorContent;
            document.getElementById('submittedTitle').value = titleContent;
        }
    </script>
</div>
</body>
<div class="copy">
    <p>2022级张津麟WEB课程设计</p>
</div>
</html>
