<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>龙海成OA系统</title>
<link href="${ctx }/assets/images/favicon.ico" rel="shortcut icon" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<meta name="apple-mobile-web-app-capable" content="yes">

<link href="${ctx}/assets/css/bootstrap.min.css" rel="stylesheet"
	type="text/css" />
<link href="${ctx}/assets/css/bootstrap-responsive.min.css"
	rel="stylesheet" type="text/css" />

<link href="${ctx}/assets/css/font-awesome.min.css" rel="stylesheet">

<link href="${ctx}/assets/css/style.css" rel="stylesheet"
	type="text/css">
<link href="${ctx}/assets/css/signin.css" rel="stylesheet"
	type="text/css">
<script type="text/javascript" charset="utf8"
	src="${ctx }/assets/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="${ctx }/assets/js/main.js"></script>
<!-- layer -->
<script type="text/javascript" src="${ctx }/assets/layer/layer.js"></script>
</head>


<body>

	<div class="navbar navbar-fixed-top">

		<div class="navbar-inner">

			<div class="container">

				<a class="btn btn-navbar" data-toggle="collapse"
					data-target=".nav-collapse"> <span class="icon-bar"></span> <span
					class="icon-bar"></span> <span class="icon-bar"></span>
				</a> <a class="brand"> OA系统 </a>

			</div>
			<!-- /container -->

		</div>
		<!-- /navbar-inner -->

	</div>
	<!-- /navbar -->



	<div class="account-container">

		<div class="content clearfix">

			<form>

				<h1>管理员登陆</h1>

				<div class="login-fields">

					<p>请输入登陆信息</p>

					<div class="field">
						<label for="account">用户名</label> <input type="text" id="account"
							name="account" value="" placeholder="用户名"
							class="login username-field" />
					</div>
					<!-- /field -->

					<div class="field">
						<label for="password">密码</label> <input type="password"
							id="password" name="password" value="" placeholder="密码"
							class="login password-field" />
					</div>
					<!-- /password -->

				</div>
				<!-- /login-fields -->

				<div class="login-actions">
					<select name="role" id="role">
						<option value="1">管理员</option>
						<option value="0">用户</option>
					</select>
					<button type="button" class="button btn btn-success btn-large"
						onclick="login()">登陆</button>

				</div>
				<!-- .actions -->
			</form>

		</div>
		<!-- /content -->

	</div>
	<!-- /account-container -->



<!-- 	<div class="login-extra">
		<a href="javascript:forgetPwd()">忘记密码</a>
	</div> -->
	<div>
		<h3 class="msg"></h3>
	</div>
	<!-- /login-extra -->
	<script src="${ctx}/assets/js/jquery-1.7.2.min.js"></script>
	<script src="${ctx}/assets/js/bootstrap.js"></script>
	<script src="${ctx}/assets/js/signin.js"></script>
	<script type="text/javascript">
	//忘记密码
	function forgetPwd() {
		layer_show('修改密码', '${ctx}/pageControl/toforgetpage', '500', '');
	}
		function login() {
		var account = $("#account").val().trim();
		var password = $("#password").val().trim();
		var role = $("#role").val();
			$.ajax({
				url : "${ctx}/employeeControl/isuer",
				type : "POST",
				data : {
					account : account,
					password : password,
					role : role
				},
				success : function(data) {
					console.log(data)
					if (data == "success") {
						window.location.href = "${ctx}/pageControl/tomainpage.htm";
					}
					if (data == "error") {
						alert("请正确输入！");
					}
				},
				error : function(data) {
					alert("系统错误,请稍后重试！");
				}
			});
		}
	</script>

</body>

</html>
