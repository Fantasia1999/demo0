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
    <title>request</title>
</head>
<body>
<%--3-7 request对象（上）--%>
<h1>request内置对象</h1>
<%--跳转到reg.jsp页面--%>
<form action="response.jsp" name="username" method="get">
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
</body>
</html>
