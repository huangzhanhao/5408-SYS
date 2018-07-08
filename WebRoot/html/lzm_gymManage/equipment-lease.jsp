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
<script type="text/javascript">
$(function(){
	var day;
	$('#charge').val(parseInt($('#hid-charge').val())+parseInt($("#hid-depoist").val()));
	$('#startDate2').val("2018-06-21");
	$('#endDate2').val("2018-06-21");
	$('#startDate2').datetimepicker({
		    format: 'yyyy-mm-dd',  //显示格式可为yyyymm/yyyy-mm-dd/yyyy.mm.dd  
		    weekStart: 1,  //0-周日,6-周六 。默认为0  
		    autoclose: true,    
		    startView: 2,  //打开时显示的视图。0-'hour' 1-'day' 2-'month' 3-'year' 4-'decade'   
		    minView: 2,  //最小时间视图。默认0-'hour'  
		  	todayBtn:true, //true时"今天"按钮仅仅将视图转到当天的日期。如果是'linked'，当天日期将会被选中。   
		    initialDate: new Date(),//初始化日期.默认new Date()当前日期  
		    forceParse: false,  //当输入非格式化日期时，强制格式化。默认true  
		    bootcssVer:3,//显示向左向右的箭头  
		    language: 'zh-CN', //语言  
		    startDate:new Date()
		}).on('click',function(e){
		    $("#startDate2").datetimepicker("setEndDate", $("#endDate2").val());
		});
		$('#endDate2').datetimepicker({
			format: 'yyyy-mm-dd',
		    language:"zh-CN",
		    todayBtn : "true",
		    autoclose : true,
		    todayHighlight : true,
		    minView: "month",
		    pickerPosition: "bottom-left",
		    startDate:new Date()
		}).on('click',function(e){
		    $("#endDate2").datetimepicker("setStartDate", $("#startDate2").val());
		});
		 $("#startDate2").change(function(){  
			 var days = DateDiff($("#startDate2").val(),$( "#endDate2").val());
			 if(days == 0) days=1;
			 computeMoney(days);
		 });
		 $("#endDate2").change(function(){  
			 var days = DateDiff($("#startDate2").val(),$( "#endDate2").val());
			 if(days == 0) days=1;
			 computeMoney(days);
		 });
		 $(".spin-up").click(function(){  
			 var days = DateDiff($("#startDate2").val(),$( "#endDate2").val());
			 if(days == 0) days=1;
			 $("#count").val(parseInt($("#count").val())+1);
			 computeMoney(days);
		 });
		 $(".spin-down").click(function(){  
			 var days = DateDiff($("#startDate2").val(),$( "#endDate2").val());
			 if(days == 0) days=1;
			 $("#count").val(parseInt($("#count").val())-1);
			 computeMoney(days);
		 });
		 
		 function computeMoney(days) {
			 var num = Math.ceil(days/7) ;
			 num = num *$("#hid-charge").val()*parseInt($("#count").val())+parseInt($("#hid-depoist").val());
			 $("#charge").val(num);
		 }
		 function computeMoney2(num) {
			 var num = Math.ceil(days/7) ;
			 num = num *$("#hid-charge").val()+parseInt($("#hid-depoist").val());
			 $("#charge").val(num);
		 }
		 function DateDiff(sDate1, sDate2) {  //sDate1和sDate2是yyyy-MM-dd格式
		    var aDate, oDate1, oDate2, iDays;
		    aDate = sDate1.split("-");
		    oDate1 = new Date(aDate[1] + '-' + aDate[2] + '-' + aDate[0]);  //转换为yyyy-MM-dd格式
		    aDate = sDate2.split("-");
		    oDate2 = new Date(aDate[1] + '-' + aDate[2] + '-' + aDate[0]);
		    iDays = parseInt(Math.abs(oDate1 - oDate2) / 1000 / 60 / 60 / 24); //把相差的毫秒数转换为天数
		    return iDays;  //返回相差天数
		}
});

</script>
</head>
<body>
	<div class="container">
		<div class="row clearfix margin-top-user">
			<div class="col-md-12 column">
				<ul class="nav nav-tabs">
					<li class="active"><a href="#">欢迎使用器材系统</a></li>
					<li><a
						href="${pageContext.request.contextPath }/html/lzm_gymManage/equipment-index-user.jsp">返回主页</a>
					</li>
					<li class="dropdown pull-right"><a href="#"
						data-toggle="dropdown" class="dropdown-toggle"><%=session.getAttribute("username")%><strong
							class="caret"></strong></a>
						<ul class="dropdown-menu">
							<li><a href="#">个人中心</a></li>
							<li class="divider"></li>
							<li><a href="#">退出登陆</a></li>
						</ul></li>
				</ul>
			</div>
		</div>
		<input type="hidden" id="hid-charge" value="${eq_price }"> <input
			type="hidden" id="hid-depoist" value="${eq_deposit }">
		<div class="col-md-2 column div-block"></div>
		<div class="col-md-8 column div-block" style="margin-top: 35px;">
			<form class="form-horizontal"
				action="${pageContext.request.contextPath }/submitLease.action"
				method="get" role="form">
				<div class="form-group">
					<label for="inputEmail3" class="col-sm-2 control-label">用户名</label>
					<div class="col-sm-10">
						<input type="text" readonly="readonly" class="form-control"
							value="<%=session.getAttribute("username")%>" />
						<input type="hidden" name="eq_user_id"
							value="<%=session.getAttribute("userid")%>" />
					</div>
				</div>
				<div class="form-group">
					<label for="inputPassword6" class="col-sm-2 control-label">器材编号</label>
					<div class="col-sm-10">
						<input type="text" readonly="readonly" name="eq_id"
							class="form-control" id="inputPassword6" value="${id }" />
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label">开始日期:</label>
					<div class="col-sm-10">
						<input class="form-control" readonly="readonly" type="text"
							name="eq_date_rental" id="startDate2">
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label">结束日期:</label>
					<div class="col-sm-10">
						<input class="form-control" readonly="readonly"
							name="eq_date_return" type="text" value="" id="endDate2">
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label">数量:</label>
					<div class="input-group col-sm-10 spinner"
						style="width: 100px; padding-left: 15px;" data-trigger="spinner"
						id="spinner">
						<input type="text" readonly="readonly" class="form-control"
							name="eq_count" id="count" value="1" data-max="${count }"
							data-min="1" data-step="1">

						<div class="input-group-addon">
							<a href="javascript:;" class="spin-up" data-spin="up">+</a> <a
								href="javascript:;" class="spin-down" data-spin="down">-</a>
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label">支付金额</label>
					<div class="col-sm-10">
						<input type="text" readonly="readonly" name="eq_charge"
							class="form-control" id="charge" value="" />
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						<button type="submit" class="btn btn-success">提交</button>
						<button type="button"
							onclick="window.location.href='${pageContext.request.contextPath }/toQueryPage.action'"
							class="btn btn-success">返回</button>
					</div>
				</div>
			</form>
		</div>
		<div class="col-md-2 column div-block"></div>
	</div>
</body>
</html>