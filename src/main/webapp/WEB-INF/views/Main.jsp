<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>主页</title>
<link href="${ctx }/assets/images/favicon.ico" rel="shortcut icon" />
<link rel="stylesheet" type="text/css"
	href="${ctx }/assets/css/jquery.dataTables.min.css">

<!-- jQuery -->
<script type="text/javascript" charset="utf8"
	src="${ctx }/assets/js/jquery-1.7.2.min.js"></script>

<!-- DataTables -->
<script type="text/javascript" charset="utf8"
	src="${ctx }/assets/js/jquery.dataTables.min.js"></script>

</head>
<body>
	<jsp:include page="/Top.jsp"></jsp:include>
	<div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
			<div class="jumbotron">
				<h1>
					OA系统
				</h1>
				<p>
					前端使用DataTable表格插件+layer弹出层框架，后端使用Spring+Spring MVC+Mybatis
				</p>
			</div>
			<div class="row">
				<div class="col-md-4">
					<div class="thumbnail">
						<div class="caption">
							<h3>
								DataTable
							</h3>
							<p>
								Datatables是一款jquery表格插件。它是一个高度灵活的工具，可以将任何HTML表格添加高级的交互功能。
							</p>
							<p>
								 <a class="btn btn-primary" href="https://www.datatables.net/">了解详细</a>
							</p>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="thumbnail">
						<div class="caption">
							<h3>
								layer弹出层
							</h3>
							<p>
								layer是一款近年来备受青睐的web弹层组件，她具备全方位的解决方案，致力于服务各水平段的开发人员，您的页面会轻松地拥有丰富友好的操作体验。
							</p>
							<p>
								 <a class="btn btn-primary" href="http://layer.layui.com/">了解详细</a>
							</p>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="thumbnail">
						<div class="caption">
							<h3>
								Spring
							</h3>
							<p>
								Core support for dependency injection, transaction management, web applications, data access, messaging, testing and more.
							</p>
							<p>
								 <a class="btn btn-primary" href="https://spring.io/">了解更多</a>
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>