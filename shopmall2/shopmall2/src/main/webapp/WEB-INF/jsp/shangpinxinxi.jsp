<%--
  Created by IntelliJ IDEA.
  User: lizhi
  Date: 2018/7/26
  Time: 15:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
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
            margin-top:20px;
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
        .goodsinfor{
            margin-top:2%;
        }
        .tabtop td{
            background-color:#ffffff;
            height:25px;
            line-height:150%;
            padding-top: 20px;
            padding-left: 20px;
            padding-right: 20px;
        }
        .buy{
            margin-top:2%;
            margin-left:50%;
        }
        .btbg{background:#f3f3f3 !important;}
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
    <title>商品信息如下</title>
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
                <a href="/UF/personalinfor?service=${"personalinfor"}">个人账号信息</a>
            </form>
        </div>
    </div>
</ul>
<div class="goodsinfor">
<table width="60%" border="0" cellspacing="1" cellpadding="4" bgcolor="#cccccc" class="tabtop" align="center">
    <tr>
        <td colspan="2" class="btbg " align="center" ><b>商品信息</b></td>
    </tr>
    <tr>
        <td width="20%"  class="btbg" align="center">商品编号：</td><td>${goodinfor.id}</td>
    </tr>
    <tr>
        <td width="20%"  class="btbg" align="center">商品名称：</td><td>${goodinfor.name}</td>
    </tr>
    <tr>
        <td width="20%"  class="btbg" align="center">商品价格：</td><td>${goodinfor.price}</td>
    </tr>
    <tr>
        <td width="20%"  class="btbg" align="center"></td><td>     </td>
    </tr>
    <tr>
        <td width="20%"  class="btbg" align="center"></td><td>     </td>
    </tr>
    <tr>
        <td width="20%"  class="btbg" align="center"></td><td>     </td>
    </tr>
    <tr>
        <td width="20%"  class="btbg" align="center"></td><td>     </td>
    </tr>
</table>
</div>
<div class="buy">
    <a href="/confirm_buy"><button>购买</button></a>
</div>
</body>
</html>
