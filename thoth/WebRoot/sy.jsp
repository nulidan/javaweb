<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>首页</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">



<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<link rel="stylesheet" type="text/css" href="./css/shouye.css" />
<style type="text/css">
html, body {
	background-color: #000000;
	text-align: center;
	position: relative;
	width: 100%;
}

input {
	background: none;
	outline: none;
	border: none;
	color: #FFFFFF;
	border: 1px solid #ccc;
	border-radius: 6px;
}

select {
	border: none;
	outline: none;
	background-color: #000000;
	color: #FFFFFF;
	cursor: pointer;
}

span {
	color: #FFFFFF;
}

table {
	width: 600px;
	border-collapse: collapse;
	text-align: center;
	margin: 10px 5px 10px;
	cursor: default;
	border: 1px solid x #aaff7f;
	margin-top: 1.25rem;
	border: 0.0625rem solid rgba(127, 255, 255, 0.75);
	top: 18.75rem;
}

.tab_head>th {
	font-weight: 300;
	text-align: center;
	padding: 0.625rem 0 0.625rem 0;
	background-color: rgba(0, 93, 93, 0.8);
	color: #efefef;
}

.detail_panel_tab-t>th {
	font-weight: 300;
	text-align: center;
	padding: 0.625rem 0 0.625rem 0;
	background-color: rgba(0, 93, 93, 0.8);
	color: #efefef;
}

th, td {
	border: 1px solid rgba(127, 255, 255, 0.55);
	color: #fff;
	text-align: center;
	font-weight: 200;
}

.tab_item:hover {
	background-color: rgba(0, 99, 99, 0.9) !important;
}

.tab_item:nth-child(2n 1) {
	background-color: rgba(0, 127, 127, 0.1);
}

#center {
	position: absolute;
	width: 600px;
	text-align: center;
	margin: 0 auto;
	top: 6.25rem;
	left: -1%;
}

input::-webkit-input-placeholder {
	color: #f8f8f8;
	font-size: 12px;
}

input::-moz-input-placeholder {
	color: #f8f8f8;
	font-size: 12px;
}

input::-ms-input-placeholder {
	color: #f8f8f8;
	font-size: 12px;
}

.two {
	position: absolute;
	z-index: 10;
	border: 0.0625rem solid #00FF00;
	background-color: rgba(16, 75, 118, 0.7);
	left: 0;
	top: 1.25rem;
	display: none;
}

#tim {
	width: 9.375rem;
	height: 3.125rem;
	text-align: center;
	color: #FFFFFF;
	position: absolute;
	z-index: 50;
	top: 6.25rem;
	left: 10%;
	border-radius: 0.625rem;
}
</style>
</head>
<body>
	<div id="cancel1">
		<header> <nav class="navbar">
		<ul class="navbar-nav">
			<li><a href="sy.jsp">首页</a></li>
			<li><c:if test="${user == null }">
					<form action="sy" method="get">
						<a href="index1.jsp">登录</a>
					</form>
				</c:if></li>
			<li><c:if test="${user != null }">
						欢迎<span>${user.userName}</span>
						<a href="index1.jsp">退出</a>
				</c:if></li>
			
		</ul>
		</nav> </header>
		<main>

		<div class="Main-conten">
			<div class="Content">
				<div id="center">
					<table class="tab" align="center">
						<tr>
							<th>人物名称</th>
							<td><input type="text" placeholder="订单名" /></td>
							<td><input type="text" placeholder="商品名" /></td>

							<td>商品名称:</td>
							<td><select class="field">
									<option>审核中</option>
									<option>竞价中</option>
									<option>审核失败</option>
									<option>竞价结束</option>
							</select></td>
							<td><input type="button" value="搜索" /></td>
						</tr>
					</table>
					<div>
						<table id="zbg" class="tab" align="center">
							<tr class="tab_head">
								<th>姓名</th>
								<th>性别</th>
								<th>家乡</th>
								<th>特性</th>
								<th>详情</th>
							</tr>
							<c:forEach items="${list}" var="li" end="6" begin="0">
								<tr class="tab_head">
									<td>${li.goodsName}</td>
									<td>${li.goodsSex}</td>
									<td>${li.goodsPlace}</td>
									<td>${li.goodsCharacater}</td>
									<td><input class="btn" type="button" value="细节" /> <input
							class="btn" type="button" value="删除" id="${li.goodsId}" /> <input
							style="display:none;" type="button" value="${li.goodsId}" /></td>
								</tr>
							</c:forEach>

						</table>
					</div>
					<table border="1" cellspacing="0" cellpadding="0" class="tab"
						align="center">

						<tr>
							<td><input type="button" name="" id="" value="上页" /> <span
								class="text">0/0</span> <input type="button" name="" id=""
								value="下页" /></td>
						</tr>
					</table>
					<div id="tbg" class="two">
						<div class="two-head">
							<table align="center">

								<tr>
									<td><input type="button" name="" id="cancel" value="取消"
										class="btn" id="cancel" /></td>
								</tr>
							</table>
						</div>
						<div id="" class="two-en">
							<table border="1" id="ther" cellspacing="0" cellpadding="0"
								class="detail_panel_tab" align="center">
								<tr>
									<td>姓名</td>
									<td id="na">夏尔</td>

								</tr>
								<tr class="detail_panel_tr_item" align="center">
									<td>性别</td>
									<td id="con">男</td>

								</tr>
								<tr class="detail_panel_tr_item" align="center">
									<td>家乡</td>
									<td id="te">中国</td>

								</tr>
								<tr class="detail_panel_tr_item" align="center">
									<td>等级</td>
									<td id="ji">人间疾苦</td>

								</tr>


							</table>
						</div>

					</div>
				</div>
				<script>
				function getShop() {
					$.ajax({
					type : "post",
					url : "selectGoods",
					data : {
						"id" : idd
				},
				dataType : "JSON",
				success : function(mess) {
					let arrs = mess.msg.list;
					if (arrs.length > 0) {
						let zgb = document.getElementById("zbg");
						let tah = document.getElementsByClassName("tab_item");
						for (let i = tah.lenght - 1; i >= 0; i--) {
							tah[i].remove();
							console.log(tah);
						}
						for (let i = 0; i < ays.length; i++) {
							let tr = document.createElement("tr");
							tr.className = "tab_item";
				
							let tdo = document.createElement("td");
							tdo.align = "center";
							tdo.innerHTML = ays[i]._name;
				
							let tdt = document.createElement("td");
							tdt.align = "center";
							tdt.innerHTML = ays[i]._sex;
				
							let tdth = document.createElement("td");
							tdth.align = "center";
							tdth.innerHTML = ays[i]._state;
				
							let tdf = document.createElement("td");
							tdf.align = "center";
							tdf.innerHTML = ays[i]._ability;
				
							let tdin = document.createElement("td");
							tdt.align = "center";
							let ipt = document.createElement("input");
							ipt.value = "细节";
							ipt.type = "button";
				
							let ipt1 = document.createElement("input");
							ipt1.value = "删除";
							ipt1.type = "button";
				
							tdin.appendChild(ipt);
							tdin.appendChild(ipt1);
							tr.appendChild(tdo);
							tr.appendChild(tdt);
							tr.appendChild(tdth);
							tr.appendChild(tdf);
							tr.appendChild(tdin);
							zbg.appendChild(tr);
						}
					}
				},
				error :function(mess){
					alert("联系我");
						}
		});
	}
					let zbg = document.getElementById("zbg");
					zbg.onclick = function(event) {
						let zgbt = event.target;
						idd = zgbt.getAttribute("id");
						if (zgbt.value == "细节") {
							let arry = zgbt.parentElement.parentElement.children;
							console.log(arry)
							document.getElementById("na").innerHTML = arry[0].innerHTML;
							document.getElementById("con").innerHTML = arry[1].innerHTML;
							document.getElementById("te").innerHTML = arry[2].innerHTML;
							document.getElementById("ji").innerHTML = arry[3].innerHTML;
							let tbg = document.getElementById("tbg");
							tbg.style.display = "block";
						} else if (zgbt.value == "删除") {
							let del = zgbt.parentElement.parentElement;
							$.ajax({
				type : "post",                  //请求方式
				url : "deleteGoods",            //请求url
				data : {                        //规定要发送到服务器的数据
					"goodsId" : idd
				},
				dataType : "JSON",              //预期的服务器响应的数据类型 
				success : function(mess) {      //请求成功回调函数
					console.log(mess)
					// var ob = eval("("+mess+")");
					/* if (mess.id == 1) {
						alert("删除成功");
						//不刷新页面
						getShop();
					} */
					//会刷新页面
					location.href = "sy";
				},
				error : function(mess) {         //请求失败回调函数
					alert("请联系客服");
				}
			});
						}
					}
					let cancel = document.getElementById("cancel");
					cancel.onclick = function() {
						let tbg = document.getElementById("tbg");
						tbg.style.display = "none";
					}
				
				
				
					//getDel();
				</script>
</body>
</html>