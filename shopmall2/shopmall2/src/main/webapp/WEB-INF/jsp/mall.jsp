<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <meta charset="UTF-8">
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
            width:750px;
            height:800px;
            margin-top:4%;
            left:50%;
            margin-left:300px;
        }
        div.mainframe2{
            width:600px;
            height:190px;
            top:30%;
            left:50%;
            margin-left:300px;
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
<body background="/resources/mallhome.jpg" style=" background-repeat:no-repeat ;background-size:100% 100%; background-attachment: fixed;">
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
<div class="mainframe2">
    <div class="img">
        <p>抢购商品</p>
        <img src="/resources/2.jpg">
        <table align="center">
            <tr>
                <form action="/Goodinfor">
                    <td>
                        <input type="submit" value="商品详情">
                    </td>
                </form>
                <td>
                    <a href="/confirm_buy" target="_blank"><button>购买</button></a>
                </td>
            <tr/>
        </table>
    </div>
</div>
<p></p>
<p></p>
<div class="mainframe">
    <p>&nbsp;&nbsp;普通商品</p>
<c:forEach items="${goodlist}" var="good">
<div class="img">
    <img src="${good.addr}"  width="50" height="50">
    <table align="center">
        <tr>
            <form action="/Goodinfor">
                <td>
                    <input type="submit" value="商品详情">
                </td>
            </form>
                <td>
                    <a href="/confirm_buy" target="_blank"><button>购买</button></a>
                </td>
        <tr/>
    </table>
</div>
    </c:forEach>
</div>
</body>
</html>
