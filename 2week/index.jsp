<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

	<title>设备维修管理</title>
	<!--
	--@name    :showList
	--@version :v1.0.13012814
	--@author  :Jacksun
	-->
</head>
	<!-- 头框架,像素 -->
	<frameset rows="125,*,50">
		<frame  src="<%=basePath%>content/header.jsp" scrolling="no" noresize="noresize" />
		<!-- 左列表 -->
		<frameset cols="150,*">
			<frame src="<%=basePath%>servlet/ShowAllMenu?roleid=<%=request.getAttribute("roleid") %>"  scrolling="no" noresize="noresize"  />
			<frame src="<%=basePath%>content/firstpage.jsp" name="content" />
		</frameset>s
		<frame src="<%=basePath%>content/footer.jsp" scrolling="no" noresize="noresize"/>
	</frameset>
</html>
