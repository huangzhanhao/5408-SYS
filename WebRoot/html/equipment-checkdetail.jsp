
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>器材系统-查询</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/equipment-query.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/bootstrap.css">
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-3.1.1.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/bootstrap.js"></script>
</head>
<body>
	<div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column div-block">
			<ul class="nav nav-tabs">
				<li class="active">
					 <a href="#">器材使用情况及收费标准</a>
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
	<div class="col-md-1 column div-block"  ></div>
	<div class="col-md-10 column div-block" id="welcome-div" >
		<div class="jumbotron" style="height=1000px">
			<table class="table">
					<tr>
						<th>编号</th>
						<td>${equipment.eqId }</td>
					</tr>
					<tr>
						<th>名字</th>
						<td>${equipment.eqName }</td>
					</tr>

					<tr>
						<th>所属仓库</th>
						<td>${equipment.eqWarehouseId }</td>
					</tr>
					<tr>
						<th>所属类别</th>
						<td>${cStr }</td>
					</tr>
					<tr>
						<th>总数</th>
						<td>${equipment.eqAmount }</td>
					</tr>
					<tr>
						<th>剩余</th>
						<td>${equipment.eqSurplus }</td>
					</tr>
					<tr>
						<th>租金/周</th>
						<td>${equipment.eqExpand }</td>
					</tr>
					<tr>
						<th>操作</th>
						<td>
							<button class="btn btn-success " >租借</button>
							<button class="btn btn-success " >返回</button>
						</td>
					</tr>
			</table>
		</div>
	</div>
	</div>
</body>
</html>