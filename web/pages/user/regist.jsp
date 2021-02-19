<%@ page import="java.util.UUID" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<meta charset="UTF-8">
<title>注册页面</title>
	<%@include file="/dir/base.jsp"%>
	<script type="text/javascript">
	    $(function () {
	    	$("#codeImg").click(function(){
	    		var url= "code.jpg?t="+Math.random();
                  $(this).prop("src",url);
			});
				$("#sub_btn").click(function(){

					// 获取用户名
					var usernameValue = $("#username").val();
					// 验证用户名是否合法,规则如下：必须由字母，数字，下划线组成，并且长度为5到15位。
					var usernameReg = /^\w{5,15}$/;
					// 验证用户信息
					if (!usernameReg.test(usernameValue)) {
						// 提示用户
						$(".errorMsg").text("用户名不合法！");
						$("#username").val("");
						return false;
					}

					// 获取密码
					var passwordValue = $("#password").val();
					// 验证密码是否合法,规则如下：必须由字母，数字，下划线组成，并且长度为5到15位。
					var passwordReg = /^\w{5,15}$/;
					// 验证用户信息
					if (!passwordReg.test(passwordValue)) {
						// 提示用户
						$(".errorMsg").text("密码不合法！");
						$("#password").val("");
						$("#repwd").val("");
						return false;
					}

					// 获取确认密码
					var repwdValue = $("#repwd").val();
					// 验证确认密码和密码一致
					if (passwordValue != repwdValue) {
						// 提示用户
						$(".errorMsg").text("确认密码和密码不一致！");
						$("#password").val("");
						$("#repwd").val("");
						return false;
					}

					// 获取用户名
					var emailValue = $("#email").val();
					// 验证邮件输入是否合法。
					var emailReg = /^([a-z0-9_\.-]+)@([\da-z\.-]+)\.([a-z\.]{2,6})$/;

					if (!emailReg.test(emailValue)) {
						// 提示用户
						$(".errorMsg").text("邮件输入不合法！");
						$("#email").val("")
						return false;
					}
					// 获取验证码信息
					var codeValue = $("#code").val();
					// 验证验证码不为空！
					if (codeValue == "") {
						$(".errorMsg").text("验证码不能为空！");
					}

					return true;
				});
		});
	</script>
<style type="text/css">
	.login_form{
		height:420px;
		margin-top: 25px;
	}

</style>
</head>
<body>
<div id="login_header">
	<img class="logo_img" alt="" src="static/img/logo.png" >
	<span class="wel_word">宠物系统</span>
</div>
		
			<div class="login_banner">
			
				<div id="l_content">
					<span class="login_word">欢迎注册</span>
				</div>
				
				<div id="content">
					<div class="login_form">
						<div class="login_box">
							<div class="tit">
								<h1>注册宠物会员</h1>
								<span class="errorMsg"><%=request.getAttribute("mgs1")==null?"":request.getAttribute("mgs1")%></span>
							</div>
							<div class="form">
								<% String uuid= UUID.randomUUID().toString();
									session.setAttribute("token",uuid);
								%>
								<form action="userServlet" method="post">
									<input type="hidden" name="token" value="<%=uuid%>">
									<input type="hidden" name="method" value="regist">
									<label>用户名称：</label>
									<input class="itxt" type="text" placeholder="请输入用户名" autocomplete="off" tabindex="1" name="username" id="username" value="<%=request.getParameter("username")==null?"":request.getParameter("username")%>"/>
									<br />
									<br />
									<label>用户密码：</label>
									<input class="itxt" type="password" placeholder="请输入密码" autocomplete="off" tabindex="1" name="password" id="password" />
									<br />
									<br />
									<label>确认密码：</label>
									<input class="itxt" type="password" placeholder="确认密码" autocomplete="off" tabindex="1" name="repwd" id="repwd" />
									<br />
									<br />
									<label>电子邮件：</label>
									<input class="itxt" type="text" placeholder="请输入邮箱地址" autocomplete="off" tabindex="1" name="email" id="email" value="<%=request.getParameter("email")==null?"":request.getParameter("email")%>"/>
									<br />
									<br />
									<label>验证码：</label>
									<input class="itxt" type="text" style="width: 100px;" id="code" name="code"/>
									<img alt="" src="code.jpg" style="float: right; margin-right: 40px;width:115px;height: 40px;" id="codeImg">
									<br />
									<br />
									<input type="submit" value="注册" id="sub_btn" />
									
								</form>
							</div>
							
						</div>
					</div>
				</div>
			</div>
		<div id="bottom">
		<span>
			宠物系统.zc &copy;2020
		</span>
		</div>
</body>
</html>