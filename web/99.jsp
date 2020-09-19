<%@ page import="java.io.IOException" %><%--
  Created by IntelliJ IDEA.
  User: chenglin
  Date: 2020/9/19
  Time: 17:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>九九乘法表</title>
</head>
<body>
<%!
//    返回九九乘法表对应的HTML代码，通过表达式来调用，在页面上显示
    String printMultiTable(){
        String s = "";
        for (int i = 0; i <=9; i++) {
            for (int j = 0; j <=i ; j++) {
                s+= i+" * "+j+" = "+(i*j)+(j!=i?"&nbsp;&nbsp;&nbsp;&nbsp;":"");
            }
            s+= "<br>";/*追加换行标签*/
        }
        return s;
    }

//    JSP内置out对象，使用脚本方式调用，打印九九乘法表
    void printMultiTable2(JspWriter out) throws IOException {
        String s = "";
        for (int i = 0; i <=9; i++) {
            for (int j = 0; j <=i ; j++) {
                out.println( i+" * "+j+" = "+(i*j)+(j!=i?"&nbsp;&nbsp;&nbsp;&nbsp;":"") );
            }
            out.println("<br>");/*追加换行标签*/
        }
    }
%>


    <h1>九九乘法表</h1>
    <br>
    <%=printMultiTable()%>
    <hr>
    <%
        printMultiTable2(out);
    %>
</body>
</html>
