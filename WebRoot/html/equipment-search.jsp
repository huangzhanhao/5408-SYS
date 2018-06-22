
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
<script type="text/javascript" src="${pageContext.request.contextPath }/js/equipment-query.js"></script>

</head>
<body>
<input id="PageContext" type="hidden" value="${pageContext.request.contextPath}" />
	<div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column div-block">
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
	<div class="row clearfix div-block">
		<div class="col-md-12 column">
			<form action="${pageContext.request.contextPath }/toSearch.action" method="post" class="navbar-form" role="search" style="text-align:center;">
				<div class="form-group text-search-div">
					<input type="text" name="str" class="form-control" style="height: 100%" size="75" placeholder="请输入需要器材信息"/>
				</div> 
				<button type="submit" class="btn btn-success btn-search" >查询</button>
			</form>
		</div>
	</div>
	<c:if test="${eqList==null }">
         <div class="col-md-12 column" id="welcome-div" style="display:block;padding-top:50px; " >
			<div class="jumbotron" style="height: 450px">
				<h1>
					欢迎使用！
				</h1>
				<p>
					广东海洋大学体育馆竭诚为你服务！
				</p>
				<p>
					 <a class="btn btn-success btn-large" href="#">访问主页</a>
				</p>
			</div>
		</div>
	</c:if>
	<c:if test="${eqList!=null }">
	<div class="col-md-12 column" id="detail-div" >
			<ul class="nav nav-tabs">
				<li class="active" >
					 <a href="#" id="detail-tag-a">查询结果</a>
				</li>
			</ul>
			<table class="table" style="ext-align:center;">
				<thead>
					<tr>
						<th>编号</th>
						<th>名字</th>
						<th>所属仓库</th>
						<th>操作</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${eqList }" var="list">
						<tr>
							<td>${list.eqId }</td>
							<td>${list.eqName }</td>
							<td>${list.eqWarehouseId }</td>
							<td><button  class="btn btn-success" 
								onclick="window.location.href='${pageContext.request.contextPath }/toCheckdetail.action?id=${list.eqId }'">查看</button></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		</c:if>
		
	</div>
</body>
</html>