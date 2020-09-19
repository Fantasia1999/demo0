<%--
  Created by IntelliJ IDEA.
  User: chenglin
  Date: 2020/9/20
  Time: 0:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Register</title>
</head>
<body>
<%
    //设置request默认字符集为utf-8，解决中文乱码问题，但是无法解决URL专递中文出现的乱码问题
    request.setCharacterEncoding("utf-8");
%>
Username: <%
    //    判断用户名是否为空
    if (request.getParameter("username") != null) {
        out.println(request.getParameter("username"));
    } else {
        out.println("The username is NULL!");
    }
%><br>
Hobby: <%
    //    判断hobby是否为空
    if (request.getParameterValues("favorite") != null) {
//        用String数组保存返回的参数，并输出
        String[] favorites = request.getParameterValues("favorite");
        for (int i = 0; i < favorites.length; i++) {
            out.println(favorites[i] + "&nbsp;&nbsp;");
        }
    } else {
//        输出非空
        out.println("hobby is null!");
    }
%>
</body>
</html>
