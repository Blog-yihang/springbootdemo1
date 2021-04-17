<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<!-- script -->
<!-- Bootstrap core CSS-->
<html>
<head>
    <title>JSP - Hello World</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 引入 Bootstrap -->
    <link href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <script href="${pageContext.request.contextPath}/bootstrap/js/bootstrap.js"></script>
    <style>
        h1 {
            float: left;
        }

        a:hover {
            text-decoration: none;
        }

        body {
            background-image: url("img/4.jpg");
            width: 100%;
            height: 100%;
            min-width: 1000px;
            z-index: -10;
        }
    </style>
</head>
<body>
<%--<h1><%= "Hello World!" %>--%>
<%--</h1>--%>
<%--<div class="jumbotron">--%>
<%--    <h1>Bootstrap 页面</h1>--%>
<%--</div>--%>
<div>
    <h1><a href="login.jsp"><span class="label label-danger">欢迎登录</span></a></h1>
    <h1><a href="register.jsp"><span class="label label-primary">欢迎注册</span></a></h1>
</div>
</body>
</html>