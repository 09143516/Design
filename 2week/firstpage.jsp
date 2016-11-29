<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'footer.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="<%=basePath %>/css/main.css"/>

  </head>
  
<body>
<br/>
<h3>首页:</h3>
<ul>
	<center><h1>Welcome</h1></center><br/>
	<ul>
	<li><a href="servlet/ShowAllRolesServlet">显示所有角色</a></li><br/>
    <li><a href="servlet/ShowAllPowerServlet">显示所有职员</a></li><br/>
    <li><a href="servlet/ShowAllMenu">进入菜单</a></li><br/>
    <li><a href="<%=basePath %>content/index.jsp">进入门户</a></li><br/>
    <li><a href="<%=basePath %>content/login.jsp">登陆</a></li><br/>
</ul></ul>
</body>
</html>
