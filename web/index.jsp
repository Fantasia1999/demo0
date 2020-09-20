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

</body>
</html>
