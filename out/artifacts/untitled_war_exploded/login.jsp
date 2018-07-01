
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!doctype html>


<html >
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>log-in</title>
    <link rel="stylesheet" type="text/css" href="css/common_form.css">
    <script src="js/common_form_test.js"></script>
</head>
<body>
<header>
    <div class="header-line"></div>
</header>
<div class="content">
    <img class="content-logo" src="images/form_logo.png" alt="logo">
    <h1 class="content-title">登陆</h1>
    <div class="content-form">
        <form  method="post" action="login"  onsubmit="return submitTest()">
            <div id="change_margin_1">
                <input class="user" type="text" name="user" id="user" placeholder= "请输入用户名"onblur="oBlur_1()" onfocus="oFocus_1()">
            </div>
            <!-- input��valueΪ��ʱ�������� -->
            <p id="remind_1"></p>
            <div id="change_margin_2">
                <input class="password" type="password" name="password" id="password"  placeholder="请输入密码" onblur="oBlur_2()" onfocus="oFocus_2()">
            </div>

            <!-- input��valueΪ��ʱ�������� -->
            <p id="remind_2"></p>
            <div id="change_margin_3">
                <input class="content-form-signup" type="submit" value="登陆" onclick="submitTest()">
            </div>
        </form>
    </div>
</div>
<script src="js/common_form_test.js"></script>
</body>
</html>