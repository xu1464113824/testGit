<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>会员</title>
    <link rel="stylesheet" type="text/css" href="css/css.css">
    
 <style>
   div{
       width: 200px;height:150px;
       background-color:floralwhite;
       font-size: 12px;
        margin: 30px;
        text-align: center;
        position: fixed;left:200px;right: 100px;bottom: 60px;top: 60px;
        border-width: 1px;border-color: black;border-style: solid;
   }
</style>
</head>
<body>

      <div>
     <form action="userServlet" method="post">
       <input type="hidden" name="type" value="admin"/>
          <table>
                <tr>
                    <td >用户名</td>
                     <td><input type="text" required="required" name="username"/></td>
                </tr>
                <tr>
                    <td>密码</td>
                     <td><input type="password" required="required" name="userpassword"/></td>
                </tr>
                
          </table>
          <input type="submit" value="提交">&nbsp;&nbsp;&nbsp; <input type="reset" value="重置">
      </from>
    </div>
</body>
</html>