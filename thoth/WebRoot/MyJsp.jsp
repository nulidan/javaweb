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

<title>My JSP 'MyJsp.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script type="text/javascript" src="./js/jquery-3.3.1.min.js"></script>
</head>

<body>
	<form method="get" action="">
		<input type="checkbox" name="choose" value="ASP" class="tab_item" />ASP
		<input type="checkbox" name="choose" value="ASP.NET" class="tab_item" />ASP.NET
		<input type="checkbox" name="choose" value="JSP" class="tab_item" />JSP
		<input type="checkbox" name="choose" value="HTML" class="tab_item" />HTML
		<input type="button" onclick="getCheckValue()" value="选择">
		<p>你的选择是：</p>
		<div id="choosed"></div>
	</form>

	<br>
	<script>
	
		function getCheckValue() {
			let obj = document.getElementsByName("choose");
			let check_val = [];
			for (k in obj) {
				if (obj[k].checked)
					check_val.push(obj[k].value);
			}
	
			let node = document.createElement("div");
			let textnode = document.createTextNode(check_val);
			let tex = document.createTextNode("你没有选择");
			if (check_val != 0) {
				node.appendChild(textnode);
				document.getElementById("choosed").appendChild(node);
			} else if (check_val == 0) {
				node.appendChild(tex);
				document.getElementById("choosed").appendChild(node);
			}
	
		}
	</script>
</body>
</html>
