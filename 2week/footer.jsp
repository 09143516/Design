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
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style>
	#right_style{line-height:16px;font-size:12px;color:#fff;font-family:Arial, Helvetica, sans-serif;}
	li{list-style:none;}
	</style>

  </head>
  
<body  background="<%=basePath %>source/footer.png">
 <center>
    <ul>
    <li id="right_style">CopyRight &copy; By Neusoft 2013-2014</li>
    <li id="right_style">PowerBy lswl</li>
    </ul></center>
</body>
</html>
