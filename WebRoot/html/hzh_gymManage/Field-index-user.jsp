<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>场地系统</title>
<meta name="description" content="">
<meta name="keywords" content="">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/equipment-index-user.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/bootstrap.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/layui/css/layui.css">
</head>
<body>
	<div class="container">
		<div class="row clearfix margin-top-user">
			<div class="col-md-12 column">
				<ul class="nav nav-tabs">
					<li class="active"><a href="#">欢迎使用场地系统</a></li>
					<li class="dropdown pull-right">
						<a href="#" id="username" value="username" data-toggle="dropdown" class="dropdown-toggle">用户名
							<strong class="caret"></strong>
						</a>
						<ul class="dropdown-menu">
							<li><a href="#">个人中心</a></li>
							<li class="divider"></li>
							<li><a href="#">退出登陆</a></li>
						</ul></li>
				</ul>
			</div>
		</div>
		<div style="padding: 15px;">
			<fieldset class="layui-elem-field">
				<legend>场地列表</legend>
				<div class="layui-field-box">
					<table class="layui-table" id="FieldListTable"
						lay-filter="tablefilter"></table>
				</div>
			</fieldset>
		</div>
		<div style="padding: 15px;">
			<fieldset class="layui-elem-field">
				<legend>预约场地</legend>
				<form class="layui-form" method="post" id="reserveForm"
					action="${pageContext.request.contextPath }/ReserveAction.action">
					<div class="layui-form-item">
						<div class="layui-inline">
							<label class="layui-form-label" style="width: 150px">场地ID：</label>
							<div class="layui-input-inline">
								<input type="text" name="idfield" class="layui-input">
							</div>
						</div>
						<div class="layui-inline">
							<label class="layui-form-label" style="width: 150px">用户ID：</label>
							<div class="layui-input-inline">
								<input type="text" name="user_id" class="layui-input">
							</div>
						</div>
						<div class="layui-inline">
							<label class="layui-form-label" style="width: 150px">金额：</label>
							<div class="layui-input-inline">
								<input id="cost" type="text" name="order_cost" class="layui-input">
							</div>
						</div>
					</div>
					<div class="layui-form-item">
						<div class="layui-inline">
							<label class="layui-form-label" style="width: 150px">订单日期：</label>
							<div class="layui-input-inline">
								<input type="text" name="order_date" class="layui-input">
							</div>
						</div>
						<div class="layui-inline">
							<label class="layui-form-label" style="width: 150px">预约起始日期：</label>
							<div class="layui-input-inline">
								<input id="d_begin" type="text" name="order_begin" class="layui-input Wdate" onclick="WdatePicker({minDate:'%y-%M-{%d+1}'})">
							</div>
						</div>
						<div class="layui-inline">
							<label class="layui-form-label" style="width: 150px">预约结束日期：</label>
							<div class="layui-input-inline">
								<input id="d_end" type="text" name="order_end" class="layui-input Wdate" onclick="WdatePicker({minDate:'#F{$dp.$D(\'d_begin\')}'})" onchange="getcost()">
							</div>
						</div>
					</div>
					<div class="layui-form-item">
						<div class="layui-input-block">
							<button class="layui-btn" lay-submit lay-filter="reserveSubmit">提交预约</button>
							<button type="reset" class="layui-btn layui-btn-primary">重置</button>
						</div>
					</div>
				</form>
			</fieldset>
		</div>
	</div>


<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/bootstrap.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/layui/layui.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/index.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/My97DatePicker/WdatePicker.js"></script>
	
<script type="text/html" id="barDemo">
	<a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="reserve" href="#reserveForm">预约</a>
</script>
<script type="text/javascript">
	var rental;
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
			if (obj.event === 'reserve') {
				var username = $('#username').attr("value");
				var myDate = new Date();
				var year = myDate.getFullYear();//获取当前年
   				var yue = myDate.getMonth()+1;//获取当前月
    			var date = myDate.getDate();//获取当前日
				var reserveform = $('#reserveForm');
				var input_user_id = reserveform.find("[name='user_id']").attr("value",username);
				var input_idfield = reserveform.find("[name='idfield']").attr("value",data.idfield);
				var input_order_cost = reserveform.find("[name='order_cost']").attr("value",data.field_rental);
				var input_order_date = reserveform.find("[name='order_date']").attr("value",year+"-"+yue+"-"+date);
				rental = data.field_rental;
			}
		});
	});

	function getcost(){
		console.log(rental);
		var date_begin = $('#d_begin')[0].value;
		var date_end = $('#d_end')[0].value;
 		var dateStr1 = date_begin.replace(/-/g, "/"); //现将yyyy-MM-dd类型转换为yyyy/MM/dd
		var dateStr2 = date_end.replace(/-/g, "/"); 
		var dateTime = (Date.parse(dateStr2)-Date.parse(dateStr1))/(24 * 60 * 60 *1000);
		var cost = $('#cost').attr("value",rental*dateTime);
	}
</script>
</body>
</html>