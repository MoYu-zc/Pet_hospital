<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<meta charset="UTF-8">
<title>登录成功</title>
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
		
		<div id="main">
			<h1>欢迎回来 <a href="index.jsp">转到主页</a></h1>
		</div>

		<div id="bottom">
		<span>
			宠物系统.zc &copy;2020
		</span>
		</div>
</body>
</html>
