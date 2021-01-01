<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>萨摩耶</title>
</head>
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
    
    </style>
    
      </head>
      
      <body>
        <div class="page">
<div class="banner"><img src="tupian/shouye.jpg" /></div>
  <div class ="nav">
    <ul>
        <li class="navli"><a href="shouye.html">首页</a> </li>
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
                <style>
                    .table11_3 table {
                        width:100%;
                        margin-top: 30px;
                        margin-left: 100px;
                        width: 100%;top:100px;left:100px;position: absolute;
                    }
                    .table11_3 th {
                        background-color:#fec6d1
                        /* color:#FFFFFF; */
                    }
                    .table11_3,.table11_3 th,.table11_3 td {
                        font-size:0.95em;
                        text-align:center;
                        padding:4px;
                        border-collapse:collapse;
                    }
                    .table11_3 th,.table11_3 td {
                        border: 1px solid #fec6d1;
                        border-width:1px 0 1px 0;
                        border:2px inset #ffffff;
                    }
                    .table11_3 tr {
                        border: 1px solid #ffffff;
                    }
                    .table11_3 tr:nth-child(odd){
                        background-color:#fec6d1;
                    }
                    .table11_3 tr:nth-child(even){
                        background-color:#ffffff;
                    }
                
                </style>
                <div>
                <table class=table11_3>
                    <tr>
                        <th>狗狗种类</th><th>年龄</th><th>价格</th><th>颜色</th><th>狗狗小名</th><th>免疫驱虫</th><th>宠物体型</th><th>掉毛</th><th>喜叫程度</th><th>对人友好度</th><th>看家能力</th><th>体味程度</th><th>是否加入购物车</th>
                    </tr>
                    <c:forEach var="t" items="${samoye }">
                    	<tr><td>${t.getType() }</td><td>${t.getAge() }</td><td>${t.getPrice() }</td><td>${t.getColor() }</td><td>${t.getName() }</td><td>${t.getImmunity() }</td><td>${t.getShape() }</td><td>${t.getHair() }</td><td>${t.getLike() }</td><td>${t.getKind() }</td><td>${t.getHome() }</td><td>${t.getBody() }</td><td><a href="addcar?id=${t.getId() }">是</a></td></tr>
                    </c:forEach>
                </table>
            </div>
                <u>
                    <div class="footer_statement">
                        <p>免责声明：狗铺子网所有宠物狗交易信息内容系用户自行发布，其真实性、合法性由发布人负责，该商场不提供任何保证，亦不承担任何法律责任！</p>
                        <p>张潇  Copyright © 2008 - 2020 congwushangdian.com All Rights Reserved</p>
                    </div>
                </u>
    </div>
</body>
</html>