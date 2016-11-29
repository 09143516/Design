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

<center>
<br><br><br>
<table>
<tr>
<td align="left">电商14级1班<br/><br/></td>
</tr><tr>
<td align="left">李宋温流<br/><br/></td>
</tr><tr>
<td align="left">Email:1144850792@qq.com<br/><br/></td>
</tr>
</table>
<h4>
如有使用问题,请联系我们.
您的意见,将使我们进步</h4>
</center>
</body>
</html>
