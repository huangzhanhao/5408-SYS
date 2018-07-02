<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title>体育馆管理员系统</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath }/layui/css/layui.css">
</head>

<body class="layui-layout-body">
	<div class="layui-layout layui-layout-admin">
		<div class="layui-header">
			<div>
				<%@ include file="/head.jsp"%>
			</div>
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
						<a href="${pageContext.request.contextPath }/html/hzh_gymManage/FieldDamageList.jsp" class="layui-this">场地受损记录</a>
					</li>
					<li class="layui-nav-item">
						<a href="${pageContext.request.contextPath }/html/hzh_gymManage/FieldOrderList.jsp">订单记录</a>
					</li>
				</ul>
			</div>
		</div>

		<div class="layui-body" id="mainBody">
			<!-- 内容主体区域 -->
			<div style="padding: 15px;">
				<fieldset class="layui-elem-field">
					<legend>场地受损记录</legend>
					<div class="layui-field-box">
						<button class="layui-btn">添加一条记录</button>
						<table class="layui-table layui-hide" id="FieldDamageListTable" lay-filter="tablefilter"></table>
					</div>
				</fieldset>
			</div>
		</div>
		<div class="layui-footer">
			<div>
				<%@ include file="/bottom.jsp"%>
			</div>
		</div>
	</div>

	<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/layui/layui.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/js/index.js"></script>
	<script type="text/html" id="barDemo">
		<a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="detail">查看</a>
		<a class="layui-btn layui-btn-xs" lay-event="edit">编辑</a>
		<a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
	</script>
	<script>
		layui.use('table', function () {
			var table = layui.table,
				form = layui.form;

			table.render({
				elem: '#FieldDamageListTable',
				url: '${pageContext.request.contextPath }/QueryFieldDamageAction.action',
				cellMinWidth: 100, //全局定义常规单元格的最小宽度，layui 2.2.1 新增
				page: true, //开启分页   
				cols: [
					[{
						field: 'idfield_damage',
						width: 100,
						title: '记录',
						sort: true
					}, {
						field: 'field_damage_idfield',
						width: 100,
						title: '场地编号'
					}, {
						field: 'damage_time',
						width: 200,
						title: '受损时间',
						sort: true
					}, {
						field: 'damage_describe',
						title: '损坏描述'
					}, {
						toolbar: '#barDemo'
					}]
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

			//监听工具条
			table.on('tool(tablefilter)', function(obj){
				var data = obj.data;
				if(obj.event === 'detail'){
					layer.msg('ID：'+ data.idfield_damage + ' 的查看操作');
				} else if(obj.event === 'edit'){
					layer.alert('编辑行：<br>'+ JSON.stringify(data))
				} else if(obj.event === 'del'){
					layer.confirm('真的删除行么', function(index){
						obj.del();
						layer.close(index);
					});
				}
			});
		});
	</script>
</body>

</html>