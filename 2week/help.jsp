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
<h4>使用帮助:</h4>
<ul>
<li>一、建议使用IE8以上浏览器，推荐使用google浏览器,效果更佳</li><br/>
<li>二、如权限不足，请联系超级管理员分配权限</li><br/>
<li>三、</li><br/>
<li>四、</li><br/>
<li>五、</li><br/>
</ul>

</body>
</html>
