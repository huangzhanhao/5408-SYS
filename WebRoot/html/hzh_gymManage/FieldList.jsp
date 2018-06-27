<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>体育馆管理员系统</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/layui/css/layui.css">
</head>
<body class="layui-layout-body">
	<div class="layui-layout layui-layout-admin">
		<div class="layui-header">
			<div><%@ include file="/head.jsp"%></div>
		</div>
		<div class="layui-side layui-bg-black">
			<div class="layui-side-scroll">
				<!-- 左侧导航区域（可配合layui已有的垂直导航） -->
				<ul class="layui-nav layui-nav-tree" lay-filter="test">
					<li class="layui-nav-item"><a href="#">体育馆管理员控制台</a></li>
					<li class="layui-nav-item"><a href="FieldList.jsp"
						class="layui-this">场地总览</a></li>
					<li class="layui-nav-item"><a href="gym_userList_body.jsp">--管理员用户--</a></li>
					<li class="layui-nav-item"><a href="call_board.jsp">--发布公告--</a></li>
				</ul>
			</div>
		</div>

		<div class="layui-body" id="mainBody">
			<!-- 内容主体区域 -->
			<div style="padding: 15px;">
				<fieldset class="layui-elem-field">
					<legend>场地列表</legend>
					<div class="layui-field-box">
						<table class="layui-table" id="FieldListTable">
							<colgroup>
								<col width="100">
								<col width="100">
								<col width="200">
								<col width="300">
								<col width="100">
								<col width="100">
								<col>
								<col width="50">
							</colgroup>
							<thead>
								<tr>
									<th>编号</th>
									<th>类型</th>
									<th>位置</th>
									<th>描述</th>
									<th>租金</th>
									<th>状态</th>
									<th>备注</th>
									<th><input type="checkbox" value="" id="checkAll"></th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
									<td><input type="checkbox" value=""></td>
								</tr>
								<tr>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
									<td><input type="checkbox" value=""></td>
								</tr>
								<tr>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
									<td><input type="checkbox" value=""></td>
								</tr>
							</tbody>
						</table>
					</div>
				</fieldset>
			</div>
		</div>
		<div class="layui-footer">
			<div><%@ include file="/bottom.jsp"%></div>
		</div>
	</div>

	<script type="text/javascript"
		src="${pageContext.request.contextPath }/js/jquery.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/layui/layui.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/js/index.js"></script>
	<script type="text/javascript">
		//设置复选框全选或全不选  
		$("#checkAll").click(function() {
			if (this.checked) {
				$("#FieldListTable tbody :checkbox").prop("checked", true);
			} else {
				$("#FieldListTable tbody :checkbox").prop("checked", false);
			}
		});
		//设置全部都选择时勾选全选框  
		$("#FieldListTable tbody :checkbox").click(function() {
			var chknum = $("#FieldListTable tbody :checkbox").length//选项总个数  
			var chk = 0;
			$("#FieldListTable tbody :checkbox").each(function() {
				if ($(this).prop("checked")) {
					chk++;
				}
			});
			if (chknum == chk) {//全选
				$("#checkAll").prop("checked", true);
			} else {//不全选  
				$("#checkAll").prop("checked", false);
			}
		});
	</script>
</body>
</html>