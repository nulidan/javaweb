<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>注册</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/index1.css" />
  </head>
  
  <body>
    <div class="mask"></div>
		<div class="login">
			<div id="" class="goback1">
				<a href="index1.jsp">
					<input type="button" name="goback" value="返回" class="goback" />
				</a>
			</div>
			<form class="mui-input-group" action="sy" name="logins" method="post">
				<div class="mui-group">

					<div class="mui-input-row">
						<label>

							<input type="text" class="mui-input-clear" placeholder="输入账号" >
						</label>
					</div>
					<div class="mui-input-row">
						<label>

							<input type="password"  class="mui-input-psw" placeholder="输入密码" maxlength="10" >
						</label>
					</div>
					<br>
					<br>
					<div class="mui-but-group">
						 <input type="button" name="login1" id="login" value="注册"  onclick="getLogin()"/> 
						<!-- <button onclick="login()">login</button> -->
						
					</div>
					<br>

					<br>
					<div class="mui-reg-group">
						<span>已有账号？<a href="index1.jsp" class="link">登录</a></span>
					</div>
				</div>
			</form>
		</div>
		
  </body>
</html>
