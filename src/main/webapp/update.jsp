<%--
  Created by IntelliJ IDEA.
  User: zz
  Date: 2021/04/16
  Time: 下午 7:35:37
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
        label {
            font-family: "Helvetica Neue", Helvetica, Arial, sans-serif, red;

        }
    </style>
</head>
<body>
<form role="form" action="update">
    <div class="col-lg-3">
        <label>请输入您要修改的账号</label>
        <input type="text" id="id" name="id" placeholder="请输入修改的账号">

        <label>请输入您要修改的名字</label>
        <input type="text" id="username" name="username" placeholder="请输入修改的名字">

        <label>请输入您要修改的密码</label>
        <input type="text" id="password" name="password" placeholder="请输入修改的密码">

        <input type="submit" class="btn-default" value="提交">
        <input type="button" class="btn-default" value="返回" onclick="history.go(-1)"/>
    </div>
</form>

</body>
</html>
