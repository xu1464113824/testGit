<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
            width: 200px;
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
            width :200px;
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
                    
<br>  
<br> 
<br> 
                <h2>热门狗狗</h2>
             
            <div class="guidance_picwrap clearfix">
            <div class="guidance_picin">
                <a href="samoye.jsp"><img src="tupian/中：萨摩耶.png" width="80" height="80" alt="萨摩耶"></a>	
                	<h2><a  href="samoye.jsp">萨摩耶</a></h2>
            </div>
            <div class="guidance_picin"> 
                <a href="keji.jsp"><img src="tupian/小：柯基.png" width="80" height="80" alt="柯基"></a>
                <h2><a  href="keji.jsp">柯基</a></h2>				
            </div>
            <div class="guidance_picin">
                <a href="alasijia.jsp"><img src="tupian/大：阿拉斯加.png" width="80" height="80" alt="阿拉斯加"></a>
            <h2><a  href="alasijia.jsp">阿拉斯加</a></h2>
            </div>
            <div class="guidance_picin">
                <a href="jinmao.jsp"><img src="tupian/中：金毛.png" width="80" height="80" alt="金毛"></a>
            <h2><a  href="jinmao.jsp">金毛</a></h2>
            </div>
            <div class="guidance_picin">
                <a href="taidi.jsp"><img src="tupian/小：泰迪.png" width="80" height="80" alt="泰迪"></a>
            <h2><a  href="taidi.jsp">泰迪</a></h2>
            </div>
            <div class="guidance_picin">
                <a href="hashiqi.jsp"><img src="tupian/大：哈士奇.png" width="80" height="80" alt="哈士奇"></a>
            <h2><a  href="hashiqi.jsp">哈士奇</a></h2>
            </div>
            </div>
            <u>
            <div class="footer_statement">
	            <p>免责声明：狗铺子网所有宠物狗交易信息内容系用户自行发布，其真实性、合法性由发布人负责，该商场不提供任何保证，亦不承担任何法律责任！</p>
	            <p>张潇 Copyright © 2008 - 2020 congwushangdian.com All Rights Reserved</p>
            </div>
        </u>
</body>
</html>
            
</html>