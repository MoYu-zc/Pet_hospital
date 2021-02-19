<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<meta charset="UTF-8">
<title>注册页面</title>
	<%@include file="/dir/base.jsp"%>
<style type="text/css">
	h1 {
		text-align: center;
		margin-top: 200px;
	}
	
	h1 a {
		color:red;
	}
</style>
</head>
<body>
<div id="header">
	<img class="logo_img" alt="" src="static/img/logo.png" >
	<span class="wel_word">宠物系统</span>
	<%@include file="/dir/a1.jsp"%>
</div>
<br><br><br>
<center>
<div id="main">
	<h1>注册成功 <a href="index.jsp">转到主页</a></h1>
</div>
	<br><br>
<div id="bottom">
		<span>
			宠物系统.zc &copy;2020
		</span>
</div>
</center>
</body>
</html>