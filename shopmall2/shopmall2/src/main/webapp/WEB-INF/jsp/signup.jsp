<%--
  Created by IntelliJ IDEA.
  User: lizhi
  Date: 2018/7/26
  Time: 19:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>register</title>
</head>
<body>
<h2 align="center">注册页面</h2>
    <table align="center" >
        <form action="/Register">
           <tr>
            <td>用户名：</td>
            <td><input type="text" name="username" /></td>
           </tr>
           <tr>
            <td>密码：</td>
            <td><input type="text" name="password" /></td>
           </tr>
           <tr>
            <td colspan="2" align="center"><input type="submit" value="注册" /></td>
           </tr>
        </form>
          </table>
</body>
</html>

