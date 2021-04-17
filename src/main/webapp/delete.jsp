<%--
  Created by IntelliJ IDEA.
  User: zz
  Date: 2021/04/16
  Time: 下午 8:08:34
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
    <script>

    </script>
</head>
<body>
<form action="delete" method="post">
    <div class="col-lg-3">
        <label>删除用户</label>
        <input type="text" name="id" class="form-control">
        <input type="submit" value="删除">
        <input type="button" class="btn-default" value="返回" onclick="history.go(-1)"/>
    </div>
</form>

</body>
</html>
