<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<script type="text/javascript">
	function getCurDate() {
		var d = new Date();
		var years = d.getFullYear();
		var month = add_zero(d.getMonth() + 1);
		var days = add_zero(d.getDate());
		var hours = add_zero(d.getHours());
		var minutes = add_zero(d.getMinutes());
		var seconds = add_zero(d.getSeconds());
		var ndate = " " + years + "-" + month + "-" + days + "||" + hours + ":"
				+ minutes + ":" + seconds + " ";
		var divT = document.getElementById("logInfo");
		divT.value = ndate;
	}
	function add_zero(temp) {
		if (temp < 10)
			return "0" + temp;
		else
			return temp;
	}
	setInterval("getCurDate()", 100);
</script>


<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<title>赛事申请</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/layui/css/layui.css">
<style>
#display {
	display: block;
}
</style>
</head>


<body class="layui-layout-body">


	<div class="layui-header">
		<div><%@ include file="/head.jsp"%></div>
	</div>

	<!-- 内容主体区域 -->
	<div style="padding: 15px;">

		<legend> 申请赛事 </legend>



		<form action="${pageContext.request.contextPath }/SSSQ.action"
			method="post">
			<table class="layui-table">
				<tr>



					<td align="center">申请人</td>
					<td><input type="text" name="shenqingren" class="full" /></td>

					<td align="center">开始时间</td>
					<td><input type="text" name="kaishishijian" class="full" /></td>

					<td align="center">结束时间</td>
					<td><input type="text" name="jieshushijian" class="full" /></td>



				</tr>

				<tr>
					<td align="center">器材选择</td>
					<td><select name="qicai">
							<option value="">请选择</option>
							<c:forEach items="${CDQC_1}" var="CDQC_1">
								<option value="${CDQC_1.QCname}">${CDQC_1.QCname}</option>
							</c:forEach>
					</select></td>

					<td align="center">场地选择</td>
					<td><select name="changdi">
							<option value="">请选择</option>
							<c:forEach items="${CDQC_2}" var="CDQC_2">
								<option value="${CDQC_2.CDname}">${CDQC_2.CDname}</option>
							</c:forEach>
					</select></td>

					<td align="center">申请时间</td>
					<td><input type="text" id="logInfo" name="shenqingriqi"
						class="full" /></td>


				</tr>



			</table>
			
			<button class="layui-btn" type="submit">提交</button>
			<button type="reset" class="layui-btn">重置</button>
			<button type="button" id="query"  class="layui-btn"  onclick="window.location.href='${pageContext.request.contextPath }/html/lth_gymManage/YH_SSGL.jsp'">返回</button>  
   
		</form>

	</div>






</body>
</html>