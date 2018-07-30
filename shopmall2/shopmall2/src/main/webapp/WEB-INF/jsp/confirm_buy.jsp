<%--
  Created by IntelliJ IDEA.
  User: lizhi
  Date: 2018/7/30
  Time: 13:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>购买</title>
    <style>
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
        .homepage{
            display:inline-block;
            float:left;
            margin-top:20px;
        }
        div.img {
            margin: 0px auto;
            border: 0px solid #ccc;
            float:left;
            width: 280px;
            height: 400px;
            padding-left: 20px;
            padding-top: 20px;
            padding-bottom: 30px;
        }

        div.img:hover {
            border: 0px solid #777;
        }

        div.img img {
            width: 100%;
            height: 100%;
        }
        .td {
            width:100px;
            height:50px;
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
                <a href="/UF/personalinfor?service=${"personalinfor"}">个人账号信息</a>
            </form>
</ul>
<h2 align="center">确认订单</h2>
<hr>
<form name="pay" action="#" method="post">
    <table border="0"  cellpadding="2px" cellspacing="2px" align="center">
        <tr>
            <td class="td" align="center">收货人:</td>
            <td class="td"><input type="text" name="username"></td>
        </tr>
        <br>
        <tr>
            <td class="td" align="center">联系方式:</td>
            <td class="td"><input type="text" name="mobile"></td>
        </tr>
        <tr>
            <td align="center">收货地址:</td>
            <td class="td"><input type="text" name="usernameaddr"></td>
        </tr>
        <tr>
            <td align="center">信用卡:</td>
            <td class="td"><input type="text" name="idcard"></td>
        </tr>

        <tr>
            <td class="td" colspan="2" align="center"><input type="button" name="close" value="取消" onclick="window.close();" />&nbsp;&nbsp;&nbsp;<input type="submit" value="确认订单" /></td>
        </tr>
    </table>

</form>
</body>
</html>