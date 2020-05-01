<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'MyJlsp.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.5.0/jquery.js"></script>
</head>

<body>
	<form>
		<input type="checkbox" name="choose" value="ASP" class="tab_item" />ASP
		<input type="checkbox" name="choose" value="ASP.NET" class="tab_item" />ASP.NET
		<input type="checkbox" name="choose" value="JSP" class="tab_item" />JSP
		<input type="checkbox" name="choose" value="HTML" class="tab_item" />HTML
		<input type="button" onclick="createOrder()" value = "选择" >
		<input type="text" id="order" size="50">
	</form>

	<script type="text/javascript">
		function createOrder() {
			choose = document.forms[0].choose
			txt = ""
			for (i = 0; i < choose.length; ++i) {
				if (choose[i].checked) {
					txt = txt + choose[i].value + " "
				}
			}
			if(txt != 0){
			document.getElementById("order").value = "你的选择是： " + txt
			}else{
			document.getElementById("order").value = "你没有选择 " 
			}
			
		}
	</script>
</body>
</html>
