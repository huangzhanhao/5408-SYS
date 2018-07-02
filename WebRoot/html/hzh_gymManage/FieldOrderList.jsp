<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
				<ul class="layui-nav layui-nav-tree">
					<li class="layui-nav-item">
						<a href="#">体育馆管理员控制台</a>
					</li>
					<li class="layui-nav-item">
						<a href="${pageContext.request.contextPath }/html/hzh_gymManage/FieldList.jsp">场地总览</a>
					</li>
					<li class="layui-nav-item">
						<a href="${pageContext.request.contextPath }/html/hzh_gymManage/FieldDamageList.jsp">场地受损记录</a>
					</li>
					<li class="layui-nav-item">
						<a href="${pageContext.request.contextPath }/html/hzh_gymManage/FieldOrderList.jsp" class="layui-this">订单记录</a>
					</li>
				</ul>
			</div>
		</div>

		<div class="layui-body" id="mainBody">
			<!-- 内容主体区域 -->
			<div style="padding: 15px;">
				<fieldset class="layui-elem-field">
					<legend>订单记录</legend>
					<div class="layui-field-box">
						<table class="layui-table" id="FieldOrderListTable" lay-filter="tablefilter">
						</table>
					</div>
				</fieldset>
			</div>
		</div>
		<div class="layui-footer">
			<div><%@ include file="/bottom.jsp"%></div>
		</div>
	</div>

	<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/layui/layui.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/js/index.js"></script>
	<!-- <script type="text/html" id="barDemo">
		<a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="detail">查看</a>
		<a class="layui-btn layui-btn-xs" lay-event="edit">编辑</a>
		<a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
	</script> -->
	<script type="text/javascript">
		layui.use('table', function() {
			var table = layui.table;

			table.render({
				elem: '#FieldOrderListTable',
				url: '${pageContext.request.contextPath }/QueryFieldOrderAction.action',
				cellMinWidth: 100, //全局定义常规单元格的最小宽度，layui 2.2.1 新增
				page: true, //开启分页   
				cols: [
					[{
						field: 'idfield_order',
						width: 150,
						title: '订单编号',
						sort: true
					}, {
						field: 'user_id',
						width: 120,
						title: '用户ID',
						sort: true
					}, {
						field: 'idfield',
						width: 120,
						title: '场地编号',
						sort: true
					}, {
						field: 'order_cost',
						width: 100,
						title: '订单金额'
					}, {
						field: 'order_date',
						width: 120,
						title: '订单日期'
					}, {
						field: 'order_begin',
						width: 120,
						title: '租借开始日期'
					}, {
						field: 'order_end',
						width: 120,
						title: '租借结束日期'
					}, {
						field: 'order_status',
						width: 100,
						title: '订单状态'
					}
					// , {
					// 	toolbar: '#barDemo'
					// }
					]
				],
				done: function(res, curr, count){
				//如果是异步请求数据方式，res即为你接口返回的信息。
				//如果是直接赋值的方式，res即为：{data: [], count: 99} data为当前页数据、count为数据总长度
				console.log(res);
				
				//得到当前页码
				console.log(curr); 
				
				//得到数据总量
				console.log(count);
				}
			});
		});
	</script>
</body>
</html>