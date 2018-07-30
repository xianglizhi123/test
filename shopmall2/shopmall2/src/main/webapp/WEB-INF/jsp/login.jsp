<%--
  Created by IntelliJ IDEA.
  User: lizhi
  Date: 2018/7/25
  Time: 17:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>登陆</title>
    <style>
        div.img {
            margin: 0px auto;
            border: 0px solid #ccc;
            float:left;
            width: 150px;
            height: 150px;
            padding-left: 10px;
            padding-top: 10px;
            padding-bottom: 30px;
        }
        div.mainframe{
            width:600px;
            height:800px;
            top:30%;
            left:50%;
            margin-left:350px;
        }
        div.img:hover {
            border: 0px solid #777;
        }
        div.img img {
            width: 100%;
            height: 100%;
        }
        ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
            overflow: hidden;
            background-color: #333;
        }
        li {
            float:left;
        }

        li a, .dropbtn {
            display: inline-block;
            color: white;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
        }
        li a:hover, .dropdown:hover .dropbtn {
            background-color: #111;

        }
        .dropdown {
            display: inline-block;
            float: right;
        }
        .homepage{
            display:inline-block;
            float:left;
            margin-top:28px;
        }
        .dropdown-content {
            display: none;
            position: absolute;
            background-color: #f9f9f9;
            min-width: 160px;
            box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
        }
        .dropdown-content a {
            color: black;
            padding: 12px 16px;
            text-decoration: none;
            display: block;
        }
        .dropdown-content a:hover {background-color: #f1f1f1}
        .dropdown:hover .dropdown-content {
            display: block;
        }
    </style>
</head>
<body background="/resources/mallhome.jpg" style=" background-repeat:no-repeat ;background-size:100% 100%; background-attachment: fixed;" >
<ul>
        <div class="homepage" >
            <a href="/SignUp" style="color:white;font-size:20px;margin-top:20px">立即注册</a>
        </div>
</ul>
<h2 align="center">请先登陆</h2>
<table align="center">
    <form action="/Login">
        <tr>
            <td>用户名</td>
            <td><input type=text name="username" /></td>
        </tr>
        <tr>
            <td>密码</td>
            <td><input type=text name="password" /></td>
        <tr/>
        <tr>
            <td colspan="2" align="center"><input type="submit" value="登陆" /></td>
        </tr>
    </form>
</table>
</body>
</html>
