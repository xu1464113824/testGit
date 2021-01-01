<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>商品信息</title>
</head>
<body>
<table border="1">
<tr><td>商品号</td><td>商品名</td><td>种类</td>
<td>价格</td><td>数量</td><td>是否删除</td></tr>
<c:forEach var="g" items="${alldogs}" >
   <tr><td>${g.getId() }</td>
       <td>${g.getName() }</td>
       <td>${g.getType() }</td>
       <td>${g.getPrice() }</td>
       <td>${g.getNum() }</td>
        <td><a href="del?id=${g.getId() }">删除</a></td>
       </tr>
</c:forEach>
<tr><td cospan="6"><a href="shouye.jsp"><input type="submit" value="退出"></a></td></tr>
</table>

</body>
</html>