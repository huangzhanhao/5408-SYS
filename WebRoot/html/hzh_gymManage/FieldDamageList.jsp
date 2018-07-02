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
						<button class="layui-btn" id="addfielddamage-btn">添加一条记录</button>
						<table class="layui-table layui-hide" id="FieldDamageListTable" lay-filter="tablefilter"></table>
					</div>
				</fieldset>		
						
				<!-- 新增受损记录的弹出框 -->
				<fieldset class="layui-elem-field" id="addFieldDamageouter" style="display: none">
					<div class="layui-field-box">
						<form class="layui-form" method="post" action="${pageContext.request.contextPath }/AddFieldDamageAction.action">
							<div class="layui-form-item">
								<label class="layui-form-label">场地ID：</label>
								<div class="layui-input-inline">
									<input type="text" name="field_damage_idfield" class="layui-input">
								</div>
								<div class="layui-form-mid layui-word-aux">必填</div>
							</div>
							<div class="layui-form-item">
								<label class="layui-form-label">受损时间：</label>
								<div class="layui-input-inline">
									<input type="text" name="damage_time" class="layui-input">
								</div>
								<div class="layui-form-mid layui-word-aux">必填</div>
							</div>
							<div class="layui-form-item">
								<label class="layui-form-label">受损描述：</label>
								<div class="layui-input-inline">
									<input type="text" name="damage_describe" class="layui-input">
								</div>
							</div>
							<div class="layui-form-item">
								<div class="layui-input-block">
									<button class="layui-btn" lay-submit lay-filter="addDamageSubmit" >立即提交</button>
									<button type="reset" class="layui-btn layui-btn-primary">重置</button>
								</div>
							</div>
						</form>
					</div>
				</fieldset>
				
				<!-- 修改受损记录的弹出框 -->
				<fieldset class="layui-elem-field" id="editFieldDamageouter" style="display: none">
					<div class="layui-field-box">
						<form class="layui-form" method="post" action="${pageContext.request.contextPath }/EditFieldDamageAction.action">
							<div class="layui-form-item">
								<label class="layui-form-label">场地ID：</label>
								<div class="layui-input-inline">
									<input type="text" name="field_damage_idfield" class="layui-input">
									<input type="text" name="idfield_damage" class="layui-input layui-hide">
								</div>
								<div class="layui-form-mid layui-word-aux">必填</div>
							</div>
							<div class="layui-form-item">
								<label class="layui-form-label">受损时间：</label>
								<div class="layui-input-inline">
									<input type="text" name="damage_time" class="layui-input">
								</div>
								<div class="layui-form-mid layui-word-aux">必填</div>
							</div>
							<div class="layui-form-item">
								<label class="layui-form-label">受损描述：</label>
								<div class="layui-input-inline">
									<input type="text" name="damage_describe" class="layui-input">
								</div>
							</div>
							<div class="layui-form-item">
								<div class="layui-input-block">
									<button class="layui-btn" lay-submit lay-filter="editDamageSubmit" >立即提交</button>
									<button type="reset" class="layui-btn layui-btn-primary">重置</button>
								</div>
							</div>
						</form>
					</div>
				</fieldset>
				
				<!-- 通过提交表单删除行 -->
				<form class="layui-form layui-hide" id="delFieldDamageForm"  method="post"
					action="${pageContext.request.contextPath }/delFieldDamageAction.action">
					<input type="text" name="idfield_damage" class="layui-input">
				</form>
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
		<a class="layui-btn layui-btn-xs" lay-event="edit">编辑</a>
		<a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
	</script>
	<script>
		layui.use('table', function () {
			var table = layui.table,
				form = layui.form;

			table.render({
				elem: '#FieldDamageListTable',
				id: 'testReload',
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
				console.log("当前页码:"+curr);
				console.log("数据总量:"+count);
				}
			});

			//监听工具条
			table.on('tool(tablefilter)', function(obj){
				var data = obj.data;
				if(obj.event === 'edit'){
					var editform = $('#editFieldDamageouter');
					var input_idfield_damage = editform.find("[name='idfield_damage']").attr("value",data.idfield_damage);
					var input_field_damage_idfield = editform.find("[name='field_damage_idfield']").attr("value",data.field_damage_idfield);
					var input_damage_time = editform.find("[name='damage_time']").attr("value",data.damage_time);
					var input_damage_describe = editform.find("[name='damage_describe']").attr("value",data.damage_describe);
					layer.open({
						type: 1,
						title: "修改场地受损记录",
						area: ['420px', '320px'], //宽高
						content: $("#editFieldDamageouter").html(),
						success: function(layero, index){
							console.log(input_idfield_damage[0]);
							console.log(layero, index);
						}
					})
				} else if(obj.event === 'del'){
					layer.confirm('真的删除行么', function(index){
						obj.del();
						layer.close(index);
						var delform = $('#delFieldDamageForm');
						var input_idfield_damage = delform.find("[name='idfield_damage']").attr("value",data.idfield_damage);
						delform.submit();
						console.log(delform);
					});
				}
			});

			//按钮事件，调用弹出框
			$("#addfielddamage-btn").click(function () {			
				layer.open({
					type: 1,
					title: "新增受损记录",
					area: ['400px', '480px'], //宽高
					content: $("#addFieldDamageouter").html()
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


			form.on('submit(addDamageSubmit)',function(formfield){
				return "FieldDamageList.jsp";
			});
			form.on('submit(editDamageSubmit)',function(formfield){
				return "FieldDamageList.jsp";
			});
		});
	</script>
</body>

</html>