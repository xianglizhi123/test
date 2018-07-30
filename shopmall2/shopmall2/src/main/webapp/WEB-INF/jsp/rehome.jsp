<%@ page import="com.lizhi.model.Good" %>
<%@ page import="com.lizhi.model.User" %><%--
  Created by IntelliJ IDEA.
  User: lizhi
  Date: 2018/7/28
  Time: 11:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" session="true" isELIgnored="false" %>
<html>
<head>
    <title>rehome</title>
</head>
<body>
<%
    User usr=(User)session.getAttribute("user");
    String name=usr.getId();
%>
<%=name%> <br> <br>
</body>
</html>
