<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap -->
<link
	href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body>
	<div class="container">
		<div class="row clearfix">
			<div class="col-md-12 column">
				<form class="form-horizontal">
					<div class="form-group">
						<label for="employeeId" class="col-sm-2 control-label">员工编号</label>
						<div class="col-sm-10">
							<input type="number" class="form-control" id="employeeId"
								placeholder="员工编号" readonly="readonly">
						</div>
					</div>

					<div class="form-group">
						<label for="employeeAccount" class="col-sm-2 control-label">员工账号</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="employeeAccount"
								placeholder="员工账号" readonly="readonly">
						</div>
					</div>

					<div class="form-group">
						<label for="employeeUername" class="col-sm-2 control-label">员工姓名</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="employeeUername"
								placeholder="员工姓名" readonly="readonly">
						</div>
					</div>

					<div class="form-group">
						<label for="employeePassword" class="col-sm-2 control-label">密码</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="employeePassword"
								placeholder="密码" readonly="readonly">
						</div>
					</div>
					<div class="form-group">
						<label for="employeeAge" class="col-sm-2 control-label">年龄</label>
						<div class="col-sm-10">
							<input type="number" class="form-control" id="employeeAge"
								placeholder="年龄" readonly="readonly">
						</div>
					</div>

					<div class="form-group">
						<label for="employeeAddr" class="col-sm-2 control-label">家庭住址</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="employeeAddr"
								placeholder="家庭住址" readonly="readonly">
						</div>
					</div>



					<div class="form-group">
						<label for="departmentName" class="col-sm-2 control-label">所属部门</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="departmentName"
								placeholder="所属部门" readonly="readonly">
						</div>
					</div>

					<div class="form-group">
						<label for="role" class="col-sm-2 control-label">角色</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="role"
								placeholder="角色" readonly="readonly">
						</div>
					</div>
				</form>
			</div>
		</div>

		<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
		<script src="${ctx }/assets/js/jquery-1.7.2.min.js"></script>
		<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
		<script src="${ctx }/assets/js/bootstrap.min.js"></script>
		<script type="text/javascript">
			var ID = '${ID}';
			console.log("编号为" + ID)
			$(document).ready(function() {
				$.ajax({
					url : "${ctx}/employeeControl/getEmployeeById",
					data : {
						ID : ID
					},
					success : function(data) {
						$("#employeeId").val(data.employee_id);
						$("#employeeAccount").val(data.employee_account);
						$("#employeeUername").val(data.username);
						$("#employeePassword").val(data.password);
						$("#employeeAge").val(data.age);
						$("#employeeAddr").val(data.address);
						$("#departmentName").val(data.departmentName);
						if (data.role == 0) {
							$("#role").val("普通员工");
						} else {
							$("#role").val("管理员");
						}
					},
					error : function(data) {
						console.log(data)
					}
				});
			});
		</script>
</body>
</html>