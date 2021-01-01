<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>评价</title>

<link rel="stylesheet" href="css.css">
    <style>
    
        li{
            list-style: none;
            text-align: center;
            line-height: 24px;
        }
        a{
            text-decoration: none;
            color: orange;
            font-size: 16px;
            line-height: 30px;
             display: block; 
        }
        .nav ul li{
            width: 230px;
            height: 30px;
            float: left;
            border: 1px #333 dashed;
            color: orange;
            background:purple;
        }
        .nav ul li ul{
            display: none;
        }
        .nav ul li a:hover{
            color: #fff;
            background-color:pink;
        }
        .nav ul li:hover ul,.nav ul li a:hover ul{
            display:block;
            width: 240px;
            height: 30px;
        }
        .nav ul li ul li{
            background-color: #FEE;
            width :230px;
        }
        .nav ul ul li a:hover{
            background: #F7F7b9;
            color: #666666;
        }
        .table{border-width: 1px;border-color: black;border-style: solid;}
    
    </style>
    
      </head>
      
      <body>
        <div class="page">
<div class="banner"><img src="tupian/shouye.jpg" /></div>
  <div class ="nav">
    <ul>
        <li class="navli"><a href="shouye.jsp">首页</a> </li>
        <li class="navli"><a href="#">会员</a>
            <ul>
                <li><a href="login.jsp">会员登录</a></li>
                <li><a href="GuidanceTitle.jsp">商品浏览</a></li>
                <li><a href="radio.html">视频下载观看</a></li>
                <li><a href="assess.jsp">评价</a></li>
                
            </ul>
        </li>
        <li class="navli"><a href="#">宠物百科</a>
            <ul>
                <li><a href="gougou.html">狗狗介绍</a></li>
                <li><a href="maomi.html">猫咪介绍</a></li>
                <li><a href="xiaoxing.html">小型宠物</a></li>
            </ul>
        </li>
        <li class="navli"><a href="#">管理员注册</a>
            <ul>
                <li><a href="admin.jsp">管理员登录</a></li>
                
            </ul>
        </li>
                </div>  

	<form action="estimate" method="get">
	<table>
	<tr><td>用户名</td> <td><input type="text"  name="user" ></td></tr>
	<tr><td>评价内容</td> <td><textarea rows="10" cols="30" name="content" ></textarea></td></tr>
	<tr><td><input type="submit" value="确定"/></td></tr>
	
	</table>
	</form>
	 <u>
                    <div class="footer_statement">
                        <p>免责声明：狗铺子网所有宠物狗交易信息内容系用户自行发布，其真实性、合法性由发布人负责，该商场不提供任何保证，亦不承担任何法律责任！</p>
                        <p>张潇  Copyright © 2008 - 2020 congwushangdian.com All Rights Reserved</p>
                    </div>
                </u>
</body>
</html>