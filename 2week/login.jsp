<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'login.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="<%=basePath %>css/login.css"/>
	<script lang="javascript" src="<%=basePath %>js/checklogin.js"></script>

  </head>
  
<body>
<div class="main_logo"></div>
<div class="main_login">
<form id="login_form" name="login" method="post" action="servlet/LoginServlet">
<table>
<tr height="60">
	<td>
		<font class="login_font">用户名:</font>
	</td>
	<td>
		<input class="input_tp" type="text" name="user_name"/></li>
	</td>
</tr>
<tr height="60">
	<td>
		<font class="login_font">密&nbsp;&nbsp;码:</font>
	</td>
	<td>
		<input class="input_tp" type="password" name="user_pwd"/>
	</td>
</tr>
</table>
<input class="login_but" type="submit" value=""/>
</form>
</div>
<p class="notice"><font class="login_font" color="red">请输入您的用户名和密码进行登录，如果您还没有账号，请联系系统管理员<font></p>

</body>
</html>
