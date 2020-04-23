<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>登录</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<link rel="stylesheet" type="text/css" href="./css/index1.css" />
</head>

<body>
	<div class="mask"></div>
	<div class="login">
		
		<form class="mui-input-group" id="form1" action="index1CheckServlet" 
			 method="get">
			<div class="mui-group">

				<div class="mui-input-row">
					<label> <input type="text" id="phone" name="phone"
						class="mui-input-clear" placeholder="输入账号" value="hello,world"
						>
					</label>
				</div>
				<div class="mui-input-row">
					<label> <input id="pwd" name="password" class="mui-input-clear"
								type="password" placeholder="密码" value="123456" />
					</label>
				</div>
				<br> <br>
				<div class="mui-but-group">
					<input  class="btn" type="submit"
								value="登录"  name="login" id="login" />
				</div>
				<br>
				<div class="item">
					<a href="" class="forget">忘记密码?</a>
				</div>
				<br>
				<div class="mui-reg-group">
					<span>没有账号？<a onClick="reg()" class="link">注册</a></span>
				</div>
			</div>
		</form>
	</div>
	<script src="./js/jquery-3.3.1.min.js"></script>
	<script>
		function index() {
			location.href = "sy";
		}
		function reg() {
			location.href = "index2";
		}
	
	
	
		function login() {
		console.log("--------")
		var phone = document.getElementById("phone").value;
		var pwd = document.getElementById("pwd").value;
		console.log(phone + "==" + pwd)
		$.ajax({
			type : "post",
			url : "sy",
			data : $('#form1').serialize(),
			dataType : "json",
			success : function(mess) {
				//console.log(mess.id+"---"+mess.mess);
				location.href = "sy";
			},
			error : function(mess) {
				alert("请联系客服");
			}
		});
	}
	</script>
</body>
</html>
