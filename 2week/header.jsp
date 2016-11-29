<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'header.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
<link href="<%=basePath %>css/style.css" rel="stylesheet" type="text/css"/>

  </head>
  
<body>
<div class="top_bar">
	<div class="logo_img"></div>
	<div id="container">
		<ul id="nav">
			<li id="selected"><a href="<%=basePath %>content/firstpage.jsp" target="content">首页</a></li>
			<li><a href="<%=basePath %>content/main.jsp" target="content">业务功能</a></li>
			<li><a href="<%=basePath %>content/sysset.jsp" target="content">系统设置</a></li>
			<li><a href="<%=basePath %>content/help.jsp" target="content">使用帮助</a></li>
			<li><a href="<%=basePath %>content/aboutus.jsp" target="content">关于我们</a></li>
		</ul>
		</div>
</div>

<script src="<%=basePath %>js/topmenu/jquery.min.js" type="text/javascript"></script>
<script type="text/javascript" src="<%=basePath %>js/topmenu/jquery-ui.min.js"></script>
<script type="text/javascript" src="<%=basePath %>js/topmenu/jquery.spasticNav.js"></script>

<script type="text/javascript">
    $('#nav').spasticNav();
</script>
</body>
</html>
