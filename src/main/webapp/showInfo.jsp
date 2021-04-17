<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>

    <style>
        body {
            background-image: url("img/7.jpg");
            width: 100%;
            height: 100%;
            min-width: 1000px;
            z-index: -10;
        }
    </style>
</head>
<body>
${info}用户是:<font color="red"><%=request.getAttribute("user") %></font>

<a href="login.jsp"><input type="button" value="登录"></a>
<a href="register.jsp"><input type="button" value="注册"></a>
<table border="1">
    <tr>
        <td>id</td>
        <td>name</td>
        <td>phone</td>
        <td>other</td>
        <td>info</td>
    </tr>
    <c:forEach var="name" items="${list}">
        <tr>
            <td><font color="red">${name.id}</font></td>
            <td><font color="red">${name.username}</font></td>
            <td><font color="red">${name.password}</font></td>

            <td><a href="update.jsp">修改</a></td>
            <td><a href="delete.jsp">删除</a></td>

        </tr>
    </c:forEach>
    <input type="button" value="返回" onclick="history.go(-1)"/>
</table>
</body>
</html>