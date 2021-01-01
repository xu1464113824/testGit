<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="myTag"  uri="www.zhangxiao.com"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>宠物首页</title>
<link rel="stylesheet" type="text/css" href="css.css">
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
        <h4>时间日期：<myTag:LocalDate /></h4>
        

<div class="zuo">
<img src="tupian/shouyezuo.jpg" width="220" height="250"/>
<div class="liaojie"><h1>了解宠物</h1><p>    以前宠物只是单指人们为了消除孤寂或出于娱乐目的而豢养的动物。<br/>    现今宠物定义为，出于非经济目的而豢养的动植物。<br/>    宠物是为了精神的目的而豢养的动植物。<br/>    一般为了消除孤寂，或娱乐而豢养，以前的宠物一般是哺乳纲或鸟纲的动物，因为这些动物脑子比较发达，容易和人交流。<br/>    如今，除了广为人知的活体宠物外，还有诸多的虚拟宠物。</p>
</div>
       
</div>


<div class="you">
<div class="jieshao"><h1>宠物简介</h1>
<p><img src="tupian/shouyeyou.jpg" width="240" height="180" style="float:left; margin-right:19px;" />　　　在所有动物类宠物中，普遍流行的主要为狗和猫，另外有鸟、鱼、虫、仓鼠、土拨鼠、刺猬、兔子等较为广泛。<br />
国际爱护动物基金会认为，猫和狗经过漫长的进化演变，已经脱离了自然界的生物链，不再存在于生态平衡之中，是适合人类家庭的动物，广泛存在于人们的生活、工作之中。在国外，新的趋势是称呼猫和狗为伴侣动物，体现它们在人类社会中的作用。虽然一般宠物在主人那里会受到很好的对待，但由于对宠物的需求，导致宠物市场的出现，为了赢利，从野生到达市场之前，会有许多动物导致不必要的死亡。而且会对当地的生态平衡造成威胁，甚至带来物种的灭绝。随着现在宠物饲养的盛行，以及人民经济水平的增长，宠物行业已经悄然兴起，并在国民经济增长上占有了一定的比例。其中尤其以犬、猫、鱼、植物宠物饲养，消费为主。

</p>
  </div>

<div class="jieshao"><h1>宠物分类</h1>
<p>哺乳类动物</p>
<p>鸟类</p>
<p>两栖类</p>
</div>

</div>
<u>
            <div class="footer_statement">
	            <p>免责声明：狗铺子网所有宠物狗交易信息内容系用户自行发布，其真实性、合法性由发布人负责，该商场不提供任何保证，亦不承担任何法律责任！</p>
	            <p>Copyright © 2008 - 2020 congwushangdian.com All Rights Reserved</p>
            </div>
        </u>

</div>
</body>
</html>
    