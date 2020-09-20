<%--
  Created by IntelliJ IDEA.
  User: chenglin
  Date: 2020/9/20
  Time: 9:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>request2</title>
</head>
<body>
<%--3-8 request对象（下）--%>
<%
    request.setAttribute("password", "123456");
%>
Password:<%=request.getAttribute("password")%><br>
请求体的MIME类型:<%=request.getContentType()%><br>
协议类型版本号：<%=request.getProtocol()%><br>
服务器主机名：<%=request.getServerName()%><br>
服务器端口号：<%=request.getServerPort()%><br>
请求文件的长度：<%=request.getContentLength()%><br>
请求客户端的IP地址：<%=request.getRemoteAddr()%><br>
请求的真实路径：<%=request.getRealPath("index.jsp")%><br>
请求的上下文路径：<%=request.getContextPath()%><br>
</body>
</html>
