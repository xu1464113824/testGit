<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>商品信息</title>
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
        table{
            margin-left: 50px;
        }
        
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
                            <li><a href="login.html">会员登录</a></li>
                            <li><a href="shangpinliulan.html">商品浏览</a></li>
                            <li><a href="gouwuche.html">购物车</a></li>
                            <li><a href="#">评价</a></li>
                            <li><a href="#">视频观看下载</a></li>
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
                            <li><a href="#">管理员登录</a></li>
                            <li><a href="#">宠物管理</a></li>
                        </ul>
                    </li>
                </div>
        </div>
        
            </div>
            <div id="container">
                <div class="float">
                </div>
                <c:forEach var="s" items="${ statements}">
                <div id="float">
                    <div class="content">
                        <p>用户名:${s.getUser() }</p>
                        ${s.getContent() }
                    </div>
                </div>
                </c:forEach>
        </div>
            
            <u>
                <div class="footer_statement">
                    <p>免责声明：狗铺子网所有宠物狗交易信息内容系用户自行发布，其真实性、合法性由发布人负责，该商场不提供任何保证，亦不承担任何法律责任！</p>
                    <p>Copyright © 2008 - 2020 congwushangdian.com All Rights Reserved</p>
                </div>
            </u>
        </body>
        </html>
                    
        </html>