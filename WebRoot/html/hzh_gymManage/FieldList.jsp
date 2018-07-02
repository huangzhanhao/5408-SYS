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
						<a href="${pageContext.request.contextPath }/html/hzh_gymManage/FieldList.jsp" class="layui-this">场地总览</a>
					</li>
					<li class="layui-nav-item">
						<a href="${pageContext.request.contextPath }/html/hzh_gymManage/FieldDamageList.jsp">场地受损记录</a>
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
					<legend>场地列表</legend>
					<div class="layui-field-box">
						<button class="layui-btn" id="addfield-btn">新增场地</button>
						<table class="layui-table" id="FieldListTable" lay-filter="tablefilter"></table>
					</div>
				</fieldset>
				
				<!-- 新增场地的弹出框 -->
				<fieldset class="layui-elem-field" id="addfieldouter" style="display: none">
					<div class="layui-field-box">
						<form class="layui-form" lay-filter="addfieldForm" method="post" action="${pageContext.request.contextPath }/AddFieldAction.action">
							<div class="layui-form-item">
								<label class="layui-form-label">场地类型：</label>
								<div class="layui-input-inline">
									<input type="text" name="field_type" class="layui-input">
								</div>
								<div class="layui-form-mid layui-word-aux">必填</div>
							</div>
							<div class="layui-form-item">
								<label class="layui-form-label">场地位置：</label>
								<div class="layui-input-inline">
									<input type="text" name="field_location" class="layui-input">
								</div>
								<div class="layui-form-mid layui-word-aux">必填</div>
							</div>
							<div class="layui-form-item">
								<label class="layui-form-label">场地描述：</label>
								<div class="layui-input-inline">
									<input type="text" name="field_describe" class="layui-input">
								</div>
							</div>
							<div class="layui-form-item">
								<label class="layui-form-label">场地容量：</label>
								<div class="layui-input-inline">
									<input type="text" name="field_capacity" class="layui-input">
								</div>
							</div>
							<div class="layui-form-item">
								<label class="layui-form-label">场地租金：</label>
								<div class="layui-input-inline">
									<input type="text" name="field_rental" class="layui-input">
								</div>
								<div class="layui-form-mid layui-word-aux">必填</div>
							</div>
							<div class="layui-form-item">
								<label class="layui-form-label">场地状态：</label>
								<div class="layui-input-inline">
									<input type="text" name="field_status" class="layui-input">
								</div>
								<div class="layui-form-mid layui-word-aux">必填</div>
							</div>
							<div class="layui-form-item">
								<div class="layui-input-block">
									<button class="layui-btn" lay-submit lay-filter="addfieldSubmit" >立即提交</button>
									<button type="reset" class="layui-btn layui-btn-primary">重置</button>
								</div>
							</div>
						</form>
					</div>
				</fieldset>

				<!-- 修改场地的弹出框 -->
				<fieldset class="layui-elem-field" id="editfieldouter" style="display: none">
					<div class="layui-field-box">
						<form class="layui-form" lay-filter="editfieldForm" method="post" action="${pageContext.request.contextPath }/editFieldAction.action">
							<div class="layui-form-item">
								<label class="layui-form-label">场地ID：</label>
								<div class="layui-input-inline">
									<input type="text" name="idfield" value="1" class="layui-input">
								</div>
								<div class="layui-form-mid layui-word-aux">必填</div>
							</div>
							<div class="layui-form-item">
								<label class="layui-form-label">场地类型：</label>
								<div class="layui-input-inline">
									<input type="text" name="field_type" class="layui-input">
								</div>
								<div class="layui-form-mid layui-word-aux">必填</div>
							</div>
							<div class="layui-form-item">
								<label class="layui-form-label">场地位置：</label>
								<div class="layui-input-inline">
									<input type="text" name="field_location" class="layui-input">
								</div>
								<div class="layui-form-mid layui-word-aux">必填</div>
							</div>
							<div class="layui-form-item">
								<label class="layui-form-label">场地描述：</label>
								<div class="layui-input-inline">
									<input type="text" name="field_describe" class="layui-input">
								</div>
							</div>
							<div class="layui-form-item">
								<label class="layui-form-label">场地容量：</label>
								<div class="layui-input-inline">
									<input type="text" name="field_capacity" class="layui-input">
								</div>
							</div>
							<div class="layui-form-item">
								<label class="layui-form-label">场地租金：</label>
								<div class="layui-input-inline">
									<input type="text" name="field_rental" class="layui-input">
								</div>
								<div class="layui-form-mid layui-word-aux">必填</div>
							</div>
							<div class="layui-form-item">
								<label class="layui-form-label">场地状态：</label>
								<div class="layui-input-inline">
									<input type="text" name="field_status" class="layui-input">
								</div>
								<div class="layui-form-mid layui-word-aux">必填</div>
							</div>
							<div class="layui-form-item">
								<div class="layui-input-block">
									<button class="layui-btn" lay-submit lay-filter="editfieldSubmit">立即提交</button>
									<button type="reset" class="layui-btn layui-btn-primary">重置</button>
								</div>
							</div>
						</form>
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
	<script type="text/html" id="barDemo">
		<a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="detail">查看</a>
		<a class="layui-btn layui-btn-xs" lay-event="edit">编辑</a>
		<a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
	</script>

	<script type="text/javascript">
		layui.use(['table','form','layer'], function () {
			var table = layui.table,
				form = layui.form,
				layer = layui.layer;

			table.render({
				elem: '#FieldListTable',
				id: 'testReload',
				url: '${pageContext.request.contextPath }/QueryFieldAction.action',
				cellMinWidth: 100, //全局定义常规单元格的最小宽度，layui 2.2.1 新增
				page: true, //开启分页   
				cols: [
					[{
						field: 'idfield',
						width: 100,
						title: 'ID',
						sort: true
					}, {
						field: 'field_type',
						width: 100,
						title: '类型',
						sort: true
					}, {
						field: 'field_location',
						title: '位置',
						sort: true
					}, {
						field: 'field_describe',
						title: '描述'
					}, {
						field: 'field_capacity',
						width: 100,
						title: '场地容量'
					}, {
						field: 'field_rental',
						width: 100,
						title: '租金'
					}, {
						field: 'field_status',
						width: 100,
						title: '状态'
					}, {
						toolbar: '#barDemo'
					}]
				],
				done: function (res, curr, count) {
					//如果是异步请求数据方式，res即为你接口返回的信息。
					//如果是直接赋值的方式，res即为：{data: [], count: 99} data为当前页数据、count为数据总长度
					console.log(res);
					console.log("当前页码:"+curr);
					console.log("数据总量:"+count);
				}
			});

			//监听工具条
			table.on('tool(tablefilter)', function(obj) {
				var data = obj.data;
				if (obj.event === 'detail') {
					layer.msg(JSON.stringify(data));
					console.log(JSON.stringify(data));
				} else if (obj.event === 'edit') {	
					var editform = $('#editfieldouter');
					var input_idfield = editform.find("[name='idfield']").attr("value",data.idfield);
					var input_field_type = editform.find("[name='field_type']").attr("value",data.field_type);
					var input_field_location = editform.find("[name='field_location']").attr("value",data.field_location);
					var input_field_describe = editform.find("[name='field_describe']").attr("value",data.field_describe);
					var input_field_capacity = editform.find("[name='field_capacity']").attr("value",data.field_capacity);
					var input_field_rental = editform.find("[name='field_rental']").attr("value",data.field_rental);
					var input_field_status = editform.find("[name='field_status']").attr("value",data.field_status);
					layer.open({
						type: 1,
						title: "修改场地",
						area: ['440px', '500px'], //宽高
						content: $("#editfieldouter").html(),
						success: function(layero, index){
							console.log(input_field_type[0]);
							console.log(layero, index);
						}
					})
				} else if (obj.event === 'del') {
					layer.confirm('真的删除行么', function(index) {
						obj.del();
						layer.close(index);
					});
				}
			});
			
			//按钮事件，调用弹出框
			$("#addfield-btn").click(function () {			
				layer.open({
					type: 1,
					title: "新增场地",
					area: ['400px', '480px'], //宽高
					content: $("#addfieldouter").html()
				})
				//表格重载
				table.reload('testReload', { 
					where: { //设定异步数据接口的额外参数，任意设 
						// aaaaaa: 'xxx' ,
						// bbb: 'yyy' 
						//… 
					},
					page: { 
						curr: 1 //重新从第 1 页开始 
					} 
				});
			});
	
			form.on('submit(addfieldSubmit)',function(formfield){
				return "FieldList.jsp";
			});
			form.on('submit(editfieldSubmit)',function(formfield){
				return "FieldList.jsp";
			});
		});
	</script>
</body>
</html>