<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>器材系统</title>
<meta name="description" content="">
<meta name="keywords" content="">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/equipment-index-user.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/bootstrap-datetimepicker.css">
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-3.1.1.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/bootstrap.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/bootstrap-datetimepicker.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/bootstrap-datetimepicker.zh-CN.js"></script>
<script type="text/javascript">
$(function(){
	$('#datetimeStart').datetimepicker({
		    format: 'yyyy-mm-dd',  //显示格式可为yyyymm/yyyy-mm-dd/yyyy.mm.dd  
		    weekStart: 1,  //0-周日,6-周六 。默认为0  
		    autoclose: true,    
		    startView: 3,  //打开时显示的视图。0-'hour' 1-'day' 2-'month' 3-'year' 4-'decade'   
		    minView: 2,  //最小时间视图。默认0-'hour'  
		//  maxView: 4, <span style="white-space:pre;"> </span>//最大时间视图。默认4-'decade'  
		  todayBtn:true, //true时"今天"按钮仅仅将视图转到当天的日期。如果是'linked'，当天日期将会被选中。   
		    initialDate: new Date(),//初始化日期.默认new Date()当前日期  
		    forceParse: false,  //当输入非格式化日期时，强制格式化。默认true  
		    bootcssVer:3,//显示向左向右的箭头  
		    language: 'zh-CN' //语言  
		});
});

</script>
</head>
<body>
	<div class="container" >
	<div class="row clearfix margin-top-user" >
		<div class="col-md-12 column">
			<ul class="nav nav-tabs">
				<li class="active">
					 <a href="#">欢迎使用器材系统</a>
				</li>
				<li class="dropdown pull-right">
					 <a href="#" data-toggle="dropdown" class="dropdown-toggle">用户名<strong class="caret"></strong></a>
					<ul class="dropdown-menu">
						<li>
							 <a href="#">个人中心</a>
						</li>
						<li class="divider">
						</li>
						<li>
							 <a href="#">退出登陆</a>
						</li>
					</ul>
				</li>
			</ul>
		</div>
	</div>
	<div class="col-md-2 column div-block"></div>
		<div class="col-md-8 column div-block" style="margin-top:35px;">
		<form class="form-horizontal" role="form">
				<div class="form-group">
					 <label for="inputEmail3" class="col-sm-2 control-label">用户名</label>
					<div class="col-sm-10">
						<input type="email" class="form-control" id="inputEmail3" />
					</div>
				</div>
				<div class="form-group">
					 <label for="inputPassword6" class="col-sm-2 control-label">器材编号</label>
					<div class="col-sm-10">
						<input type="password" class="form-control" id="inputPassword6" />
					</div>
				</div>
				<div class="form-group">
					 <label for="inputPassword5" class="col-sm-2 control-label">归还时间</label>
					<div class="col-sm-10">
						<input class="form-control" id="datetimeStart" value="2016-09-14">
					</div>
				</div>
				<div class="form-group">
					 <label for="inputPassword4" class="col-sm-2 control-label">支付金额</label>
					<div class="col-sm-10">
						<input type="password" class="form-control" id="inputPassword4" />
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						 <button type="submit" class="btn btn-success">提交</button>
						 <button type="submit" class="btn btn-success">返回</button>
					</div>
				</div>
			</form>
		</div>
		<div class="col-md-2 column div-block"></div>
		
	</div>
</body>
</html>