<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.model.*,java.util.*" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>购物车信息</title>
</head>
<body>
<%	// 从会话作用域中取出购物车对象cart
			ShoppingCart cart2 = (ShoppingCart) session.getAttribute("car");
			// 从购物车中取出每件商品并存储在ArrayList中
			ArrayList<DogsItem> items = new ArrayList<DogsItem>(cart2.getItems());
			session.setAttribute("items", items);
%>			
<table border="1">
<tr><td>商品号</td><td>商品名</td><td>种类</td>
<td>价格</td><td>数量</td><td>是否删除</td></tr>
<%
  // 显示购物车中每件商品信息
  for (DogsItem goodsItem : items) {
    Dog dog = goodsItem.getDog();
%> 
  <tr><td><%=dog.getId() %></td>
  <td><%=dog.getName() %></td>
 <td><%=dog.getType() %></td>
  <td><%=dog.getPrice() %></td>
  <td><%=goodsItem.getQuantity()%></td>
  <td><a href="deleteItem?id=<%=dog.getId() %>">删除</a></td>
 </tr>
<%
    }
%> 
</table>
<p><a href="success">确认支付</a></p><p><a href="GuidanceTitle.jsp">返回继续购物</a></p>
</body>
</html>