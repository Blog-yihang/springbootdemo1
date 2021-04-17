<%--
  Created by IntelliJ IDEA.
  User: zz
  Date: 2021/04/16
  Time: 下午 2:58:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 引入 Bootstrap -->
    <link href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <script href="${pageContext.request.contextPath}/bootstrap/js/bootstrap.js"></script>
    <style>
        body {
            background-image: url("img/5.jpg");
            width: 100%;
            height: 100%;
            min-width: 1000px;
            z-index: -10;
        }
    </style>
</head>
<body>
<p align="center" class="label left-button">欢迎进入登录界面</p>
<form role="form" action="register">
    <div class="col-lg-2">
        <label for="id"><font color="red"> 输入您想要注册的ID</font></label>
        <input type="text" class="form-control" id="id" name="id" placeholder="请输入账号">

        <label for="username"><font color="red">输入您的用户名</font></label>
        <input type="text" class="form-control" id="username" name="username" placeholder="请输入用户名字">

        <label for="password"><font color="red">输入您的密码</font></label>
        <input type="password" class="form-control" id="password" name="password" placeholder="请输入密码">

        <input type="submit" class="btn-default" value="提交 ">
        <a href="index.jsp"> <input type="button" class="btn-danger" value="返回 "></a>
    </div>
</form>
</body>
</html>
