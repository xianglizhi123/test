<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: lizhi
  Date: 2018/7/26
  Time: 10:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        .tabtop td{
            background-color:#ffffff;
            height:25px;
            align-self: left;
            font-size: 20px;
            line-height:150%;
            padding-top: 20px;
            padding-left: 20px;
            padding-right: 20px;
        }
        .btbg{background:#f3f3f3 !important;}
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
        .dropdown-content {
            display: none;
            position: absolute;
            background-color: #f9f9f9;
            min-width: 160px;
            box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
        }
        .homepage{
            display:inline-block;
            float:left;
            margin-top:28px;
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
        .orders{
            margin-left:350px;
        }
    </style>
</head>
<body>
<ul>
    <form action ="/return_home">
        <div class="homepage" >
            <a href="/return_home" style="color:white;font-size:20px;margin-top:20px">首页</a>
        </div>
    </form>
    <div class="dropdown" >
        <a class="dropbtn">用户信息</a>
        <div class="dropdown-content">
            <form action="/UF" method="post">
                <a href="/UF/history?service=${"history"}">您的订单</a>
                <a href="/UF/personalinfor?service=${"bill"}">个人账号信息</a>
            </form>
        </div>
    </div>
</ul>
<div class="orders">
<table width="60%" border="0" cellspacing="1" cellpadding="4" bgcolor="#cccccc" class="tabtop" align="left">
    <tr>
        <td colspan="2" class="btbg " align="center" ><b>您的订单</b></td>
    </tr>
<c:forEach items="${orderlist}" var="good">
    <tr>
        <td><img src="${good.addr}" style="width:200px;height:200px;"></td>
        <td>
                <p>商品名称：${good.name}</p>
                <p>商品价格：${good.price}</p>
            <p>商品编号：${good.orderid}</p>
        </td>
    </tr>
</c:forEach>
</table>
</div>
</body>
</html>
