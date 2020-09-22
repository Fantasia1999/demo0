<%@ page import="com.zhuomu.Users" %><%--
  Created by IntelliJ IDEA.
  User: chenglin
  Date: 2020/9/22
  Time: 10:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>使用普通方式创建javabean的实例</title>
</head>
<body>
<%
    Users user = new Users();
    user.setUsername("admin");/*设置用户名为admin*/
    user.setPassword("123455");/*设置密码为123456*/
%>

    <h1>使用普通方式创建javabean的实例</h1>
    <hr>
    用户名：<%=user.getUsername()%><br>
    密码：<%=user.getPassword()%><br>
</body>
</html>
