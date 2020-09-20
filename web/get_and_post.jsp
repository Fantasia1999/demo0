<%--
  Created by IntelliJ IDEA.
  User: chenglin
  Date: 2020/9/20
  Time: 9:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>get和post练习</title>
</head>
<body>
<%--get和post练习--%>
<hr>
<h1>用户登录</h1>
<form action="dologin.jsp" name="loginForm" method="get">
    <table>
        <tr>
            <%--用户名--%>
            <td>Username:</td>
            <td><input type="text" name="username"></td>
        </tr>
        <tr>
            <%--密码--%>
            <td>Password:</td>
            <td><input type="password" name="password"></td>
        </tr>
        <tr>
            <%--logoin按钮--%>
            <td colspan="2"><input type="submit" value="login"></td>
        </tr>
    </table>
</form>
<hr>
</body>
</html>
