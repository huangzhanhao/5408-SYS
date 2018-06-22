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
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-3.1.1.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/bootstrap.js"></script>
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
			
			<div class="row clearfix">
				<div class="col-md-6 column">
					<span class="span-select">
						<button type="button" class="btn btn-primary btn-user"
						onclick="window.location.href='${pageContext.request.contextPath }/toQueryPage.action'">
							<p class="p-fontsize">器材租借</p>
						</button>
					</span>
					
				</div>
				<div class="col-md-6 column">
					<span class="span-select">
						<button type="button" class="btn btn-success btn-user" >
							<p class="p-fontsize">器材归还</p>
						</button>
					</span>
				</div>
			</div>
			<div class="row clearfix">
				<div class="col-md-6 column">
					<span class="span-select">
						<button type="button" id="query" class="btn btn-warning btn-user" 
						onclick="window.location.href='${pageContext.request.contextPath }/html/equipment-search.jsp'">
							<p class="p-fontsize">器材查询</p>
						</button>
					</span>
				</div>
				<div class="col-md-6 column">
					<span class="span-select">
						<button type="button" class="btn btn-danger btn-user">
							<p class="p-fontsize">更多>></p>
						</button>
					</span>
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>