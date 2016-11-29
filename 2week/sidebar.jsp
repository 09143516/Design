<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="com.neusoft.power.dao.*,com.neusoft.power.dao.impl.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'sidebar.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
 
	<link rel="stylesheet" href="<%=basePath%>css/style2.css" type="text/css" media="screen" />

<style type="text/css">
body{
	width:150px;
	margin:0 auto;
	color:#00ccff;
}
.footer
{
	margin-top:50px;
	text-align:left;
	color:#00ccff;
	font:bold 14px Arial
}
.footer a
{
	color:#00ccff;
	text-decoration:none
}
#wrapper-100{
	width:150px;
	margin:0 auto;
}
</style>

<meta name="robots" content="noindex,follow" />

</head>
<body bgcolor="gray">
<div id="wrapper-100">
  	<ul class="accordion">
  	<%
  		List<Menu> menuIs=(List<Menu>)request.getAttribute("menui");
  		List<Menu> menuIIs=(List<Menu>)request.getAttribute("menuii");
  		
  		for(Menu menui:menuIs){ 
  			String menuIndex=(String)request.getAttribute("menuIndex");
 
  			int count=0;
  			int count2=0;
  			for(int i=0;i<20;i++)
  			{
  				if(menuIndex.charAt(i)=='1' && menuIndex.charAt(i)==menui.getMenuURL().charAt(menuIIs.get(i).getMenuIndex()-1))
						count++;
  			}
  	%>
  			<li id="four" class="sign"> <a href="#four"><%=menui.getMenuName()%><span><%=count %></span></a>
  			<ul class="sub-menu">
  	<%
  			for(int i=0;i<20;i++)
  			{
  				if(menuIndex.charAt(i)=='1' && menuIndex.charAt(i)==menui.getMenuURL().charAt(menuIIs.get(i).getMenuIndex()-1)){
  					count2++;
  	%>
			 <li><a href="<%=basePath%><%=menuIIs.get(i).getMenuURL() %>" target="content">
        		<%=count2 %>&nbsp;&nbsp;<%=menuIIs.get(i).getMenuName()%></a></li>
        	<%}} %>
      </ul>
    </li>
	<% }%>
  </ul>
</div>

<script type="text/javascript"  src="<%=basePath %>js/jquery.min.js"></script>
<script type="text/javascript">
		$(document).ready(function() {
			// Store variables
			var accordion_head = $('.accordion > li > a'),
				accordion_body = $('.accordion li > .sub-menu');
			// Open the first tab on load
			accordion_head.first().addClass('active').next().slideDown('normal');
			// Click function
			accordion_head.on('click', function(event) {
				// Disable header links
				event.preventDefault();
				// Show and hide the tabs on click
				if ($(this).attr('class') != 'active'){
					accordion_body.slideUp('normal');
					$(this).next().stop(true,true).slideToggle('normal');
					accordion_head.removeClass('active');
					$(this).addClass('active');
				}
			});
		});
	</script>
</body>
</html>