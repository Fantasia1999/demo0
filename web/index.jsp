<%--
  Created by IntelliJ IDEA.
  User: chenglin
  Date: 2020/9/19
  Time: 16:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>我的demo站点</title>
</head>
<body>
<h1>测试站点</h1>
<hr>
<h2>Hello World!</h2>
<%
    out.println("<h2>静夜思</h2>");
    out.println("床前明月光<br>");
    out.println("疑是地上霜<br>");
    out.println("举头望明月<br>");
    out.println("低头思故乡<br>");
%>

缓冲区大小：<%=out.getBufferSize()%> byte<br>
缓冲区剩余大小：<%=out.getRemaining()%> byte<br>
是否自动清空缓冲区：<%=out.isAutoFlush()%>.

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


<%--3-7 request对象（上）--%>
<h1>request内置对象</h1>
<%--跳转到reg.jsp页面--%>
<form action="reg.jsp" name="username" method="get">
    <table>
        <%--用户名--%>
        <tr>
            <td>Username:</td>
            <td><input type="text" name="username"></td>
        </tr>
        <%--爱好--%>
        <tr>
            <td>Hobby:</td>
            <td>
                <%--用checkbox复选框来对这几个选项进行选择--%>
                <input type="checkbox" name="favorite" value="read">读书
                <input type="checkbox" name="favorite" value="music">音乐
                <input type="checkbox" name="favorite" value="movie">电影
                <input type="checkbox" name="favoirte" value="internet">上网
            </td>
        </tr>
        <tr>
            <td colspan="2"><input type="submit" value="submit"></td>
        </tr>
    </table>
</form>
<br>
<a href="reg.jsp?username=李四">测试URL传参数</a>
<hr>


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
