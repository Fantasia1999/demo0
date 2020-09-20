<%@ page import="java.io.PrintWriter" %><%--
  Created by IntelliJ IDEA.
  User: chenglin
  Date: 2020/9/20
  Time: 9:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>response</title>
</head>
<body>
<%
    response.setContentType("text/html;charset=utf-8");/*设置响应的MIMI类型*/

    out.println("<h1>response内置对象</h1>");
    out.println("<hr>");
//    out.flush();

    PrintWriter outer = response.getWriter();/*获得输出流对象*/
    out.println("大家好，我是response对象生成的输出流outer对象");
//    response.sendRedirect("reg.jsp");/*请求重定向*/

//    请求重定向
    response.sendRedirect("reg.jsp");
    /*在request中提交表单到response.jsp中，
    然后在response.jsp中请求重定向到reg.jsp中，看是否可以收到参数，
    如果收到，那么是保存了上次的请求，如果收不到，说明是一次新的请求*/


//    请求转发
    request.getRequestDispatcher("reg.jsp").forward(request, response);
%>
</body>
</html>
