<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'index.jsp' starting page</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--<link rel="stylesheet" type="text/css" href="styles.css">-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/css/equipment-index-user.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/css/bootstrap.css">
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/jquery.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/bootstrap.js"></script>
</head>

<body>
	<nav class="navbar navbar-default">
	<div class="navbar-header">
		<a class="navbar-brand" href="#">海大体育馆管理系统</a>
	</div>
	<div>
		<ul class="nav navbar-nav">
			<li><a href="#">场地系统</a></li>
			<li><a href="#">器材系统</a></li>
			<li><a href="#">赛事系统</a></li>
		</ul>
		<ul class="nav navbar-nav navbar-right">
			<li><a
				href="${pageContext.request.contextPath }/ltc_ordinary_queryByIDInHomepage.action?studentID=${userList.studentID}">个人中心</a></li>
		</ul>
	</div>
	</nav>

	<div class="container">
		<div class="row">
			<div class="col-md-7 col-md-offset-1">
				<!--轮播块-->
				<div id="myCarousel" class="carousel slide center-block"
					data-ride="carousel">
					<!-- 轮播（Carousel）指标 -->
					<ol class="carousel-indicators">
						<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
						<li data-target="#myCarousel" data-slide-to="1"></li>
						<li data-target="#myCarousel" data-slide-to="2"></li>
					</ol>
					<!-- 轮播（Carousel）项目 -->
					<div class="carousel-inner">
						<div class="item active">
							<img
								src="${pageContext.request.contextPath }/img/carousel-1.png"
								class="img-responsive center-block" alt="First slide">
						</div>
						<div class="item">
							<img
								src="${pageContext.request.contextPath }/img/carousel-2.png"
								class="img-responsive center-block" alt="Second slide">
						</div>
						<div class="item">
							<img
								src="${pageContext.request.contextPath }/img/carousel-3.png"
								class="img-responsive center-block" alt="Third slide">
						</div>
					</div>
					<!-- 轮播（Carousel）导航 -->
					<a class="left carousel-control" href="#myCarousel" role="button"
						data-slide="prev"> <span
						class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
						<span class="sr-only">Previous</span>
					</a> <a class="right carousel-control" href="#myCarousel" role="button"
						data-slide="next"> <span
						class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
						<span class="sr-only">Next</span>
					</a>
				</div>
				<!--轮播块结束-->
			</div>
			<div class="col-md-4">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h5>最新公告</h5>
						<a
							href="${pageContext.request.contextPath }//ltc_anno_queryInHomepage.action">刷新</a>
					</div>
					<div class="panel-body">
						<table>
							<c:forEach var="anno" items="${annoList }">
								<tr>
									<td>${anno.anno }</td>
									<td>${anno.createTime }</td>
								</tr>
							</c:forEach>
						</table>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-4">
				<button type="button" class="btn btn-primary btn-user" onclick="window.location.href='${pageContext.request.contextPath }/html/hzh_gymManage/Field-index-user.jsp'">场地系统</button>
			</div>
			<div class="col-md-4">
				<button type="button" class="btn btn-success btn-user" onclick="window.location.href='${pageContext.request.contextPath }/html/lzm_gymManage/equipment-index-user.jsp'">器材系统</button>
			</div>
			<div class="col-md-4">
				<button type="button" class="btn btn-warning btn-user" onclick="window.location.href='${pageContext.request.contextPath }/html/lth_gymManage/YH_SSGL.jsp'">赛事系统</button>
			</div>
		</div>
	</div>

</body>
</html>
