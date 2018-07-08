<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<title>海大体育馆管理系统</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/layui/css/layui.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/css/equipment-index-user.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/css/bootstrap.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/css/bootstrap-datetimepicker.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/css/bootstrap-spinner.css">
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/jquery-3.1.1.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/bootstrap.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/bootstrap-datetimepicker.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/bootstrap-datetimepicker.zh-CN.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/jquery.spinner.min.js"></script>
<script type="text/javascript">
	$(function(){
		$('#li-gui').addClass("layui-this");
		var count= ${count };
		$("#lose-up").click(function(){
			var num = parseInt($("input[name='eq_num_lose']").val())+parseInt($("input[name='eq_num_damage']").val());
			if(num<count)
				$("input[name='eq_num_lose']").val(parseInt($("input[name='eq_num_lose']").val())+1);
			
		});
		$("#lose-down").click(function(){
			if($("input[name='eq_num_lose']").val()!=0)
				$("input[name='eq_num_lose']").val(parseInt($("input[name='eq_num_lose']").val())-1);
		});
		$("#damage-up").click(function(){
			var num = parseInt($("input[name='eq_num_lose']").val())+parseInt($("input[name='eq_num_damage']").val());
			if(num<count)
				$("input[name='eq_num_damage']").val(parseInt($("input[name='eq_num_damage']").val())+1);
		});
		$("#damage-down").click(function(){
			if($("input[name='eq_num_damage']").val()!=0)
			$("input[name='eq_num_damage']").val(parseInt($("input[name='eq_num_damage']").val())-1);
		});
	});
</script>
</head>
<body class="layui-layout-body">
	<input type="hidden" id="mystyle" value="${style}" />
	<div class="layui-layout layui-layout-admin">
		<div class="layui-header">
			<div><%@ include file="/head.jsp"%></div>
		</div>
		<div class="layui-side layui-bg-black">
			<div><%@ include file="equipment-ma-nav.jsp"%></div>
		</div>
		<div class="layui-body" id="mainBody">
			<!-- 内容主体区域 -->
			<div class="layui-layout-body" style="padding: 15px;">
				<fieldset class="layui-elem-field">
					<H3>${msg}</H3>
					<c:if test="${undone!=null }">
						<legend>未处理租借</legend>
						<div class="layui-field-box">
							<table class="table">
								<colgroup>
									<col width="150">
									<col width="200">
									<col width="200">
									<col>
								</colgroup>
								<thead>
									<tr>
										<th>归还单号</th>
										<th>器材名字</th>
										<th>归还日期</th>
										<th>处理结果</th>
										<th>租借人id</th>
										<th>处理</th>
									</tr>
								</thead>
								<tbody id="t-body">
									<c:forEach items="${undone }" var="list">
										<tr>
											<td>${list.eq_return_id }</td>
											<td>${list.eq_name }</td>
											<td>${list.eq_return_date }</td>
											<td>${list.eq_exam_state }</td>
											<td>${list.eq_user_id }</td>
											<td><button type='submit' class='btn btn-default'
													onclick="window.location.href='${pageContext.request.contextPath }/showEqreturn.action?id=${list.eq_return_id }'">
													处理</button></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</c:if>
					<c:if test="${done!=null }">
						<legend>已处理归还</legend>
						<div class="layui-field-box">
							<table class="table">
								<colgroup>
									<col width="150">
									<col width="200">
									<col width="200">
									<col>
								</colgroup>
								<thead>
									<tr>
										<th>归还单号</th>
										<th>器材名字</th>
										<th>归还日期</th>
										<th>处理结果</th>
										<th>租借人id</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${done }" var="list">
										<tr>
											<td>${list.eq_return_id }</td>
											<td>${list.eq_name }</td>
											<td>${list.eq_return_date }</td>
											<td>${list.eq_exam_state }</td>
											<td>${list.eq_user_id }</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</c:if>
					<c:if test="${eqrr!=null }">
						<legend>请审核</legend>
						<form class="form-horizontal"
							action="${pageContext.request.contextPath }/addEqexamine.action"
							method="post" role="form">
							<div class="form-group">
								<label for="inputPassword6" class="col-sm-2 control-label">归还单号</label>
								<div class="col-sm-3">
									<input type="text" readonly="readonly" name="eq_ex_id"
										class="form-control" id="inputPassword6"
										value="${eqrr.eq_return_id }" />
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">器材id</label>
								<div class="col-sm-2">
									<input class="form-control" readonly="readonly" type="text"
										name="eq_id" id="eq_id" value="${eqrr.eq_id }"> <input
										type="hidden" name="eq_staff_id"
										value="<%=(String) session.getAttribute("username")%>">
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">损坏数量</label>
								<div class="col-sm-10">
									<div class="form-group">
										<div class="input-group col-sm-10 spinner"
											style="width: 100px; padding-left: 15px;"
											data-trigger="spinner" id="spinner">
											<input type="text" readonly="readonly" class="form-control"
												name="eq_num_damage" value="0" data-max="10" data-min="0"
												data-step="1">
											<div class="input-group-addon">
												<a href="javascript:;" class="spin-up" id="damage-up">+</a>
												<a href="javascript:;" class="spin-down" id="damage-down">-</a>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">丢失数量</label>
								<div class="col-sm-10">
									<div class="form-group">
										<div class="input-group col-sm-10 spinner"
											style="width: 100px; padding-left: 15px;"
											data-trigger="spinner" id="spinner">
											<input type="text" readonly="readonly" class="form-control"
												name="eq_num_lose" value="0" data-max="10" data-min="0"
												data-step="1">
											<div class="input-group-addon">
												<a href="javascript:;" class="spin-up" id="lose-up">+</a> <a
													href="javascript:;" class="spin-down" id="lose-down">-</a>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-offset-2 col-sm-10">
									<button type="submit" class="btn btn-success">提交</button>
								</div>
							</div>
						</form>
					</c:if>
				</fieldset>
			</div>
		</div>
		<div class="layui-footer">
			<div>
				<div class="layui-footer">
					<!-- 底部固定区域 -->
					© goou.com--广东海洋大学体育馆管理系统
				</div>
			</div>
		</div>
	</div>
</body>
</html>