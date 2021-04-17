<%--
  Created by IntelliJ IDEA.
  User: zz
  Date: 2021/04/15
  Time: 下午 2:31:14
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
            background-image: url("img/1.jpg");
            width: 100%;
            height: 100%;
            min-width: 1000px;
            z-index: -10;
        }
    </style>
</head>
<body>
<form action="login" role="form">
    <div class="col-lg-3">
        <label for="name">输入您的名称</label>
        <input type="text" class="form-control" id="name" name="username" placeholder="请输入账号">
        <label for="pwd">输入您的密码</label>
        <input type="password" class="form-control" id="pwd" name="password" placeholder="请输入密码">
        <input type="submit" class="btn-default" value="提交 ">
        <a href="index.jsp"> <input type="button" class="btn-danger" value="返回 "></a>
    </div>
</form>

</body>
</html>
