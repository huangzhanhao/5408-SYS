
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>器材系统-归还</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/equipment-query.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/bootstrap.css">
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-3.1.1.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/bootstrap.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/equipment-query.js"></script>

</head>
<body>
	<div class="container">
		<div class="row clearfix">
			<div class="col-md-12 column div-block">
				<ul class="nav nav-tabs">
					<li class="active"><a href="#">欢迎使用器材系统</a></li>
					<li><a
						href="${pageContext.request.contextPath }/html/lzm_gymManage/equipment-index-user.jsp">返回主页</a>
					</li>
					<li class="dropdown pull-right"><a href="#"
						data-toggle="dropdown" class="dropdown-toggle"><%=(String) session.getAttribute("username")%><strong
							class="caret"></strong></a>
						<ul class="dropdown-menu">
							<li><a href="#">个人中心</a></li>
							<li class="divider"></li>
							<li><a href="#">退出登陆</a></li>
						</ul></li>
				</ul>
			</div>
		</div>
		<div class="row clearfix div-block">
			<c:if test="${lists!=null }">
				<div class="col-md-12 column">
					<div class="col-md-12 column" id="detail-div">
						<ul class="nav nav-tabs">
							<li class="active"><a href="#" id="detail-tag-a">未归还的器材</a>
							</li>
						</ul>
						<table class="table" style="ext-align: center;">
							<thead>
								<tr>
									<th>租借单号</th>
									<th>器材名</th>
									<th>应还日期</th>
									<th>操作</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${lists }" var="list">
									<tr>
										<td>${list.eq_lease_id }</td>
										<td>${list.eq_name }</td>
										<td>${list.eq_date_return }</td>
										<td><button class="btn btn-success"
												onclick="window.location.href='${pageContext.request.contextPath }/setReturn.action?leId=${list.eq_lease_id }'">申请归还</button></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</c:if>
			<c:if test="${eqreturns!=null }">

				<div class="col-md-12 column">
					<div class="col-md-12 column" id="detail-div">
						<ul class="nav nav-tabs">
							<li class="active"><a href="#" id="detail-tag-a">归还记录</a></li>
						</ul>
						<table class="table" style="ext-align: center;">
							<thead>
								<tr>
									<th>归还单号</th>
									<th>器材名</th>
									<th>归还日期</th>
									<th>审核状态</th>
									<th>操作</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${eqreturns }" var="item">
									<tr>
										<td>${item.eq_return_id }</td>
										<td>${item.eq_name }</td>
										<td>${item.eq_return_date }</td>
										<td>${item.eq_exam_state }</td>
										<td><c:if test="${item.eq_exam_state=='已审核' }">
												<button class="btn btn-success"
													onclick="window.location.href='${pageContext.request.contextPath }/getEqexamine.action?id=${item.eq_return_id }'">查看</button>
											</c:if></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</c:if>
			<c:if test="${eqexam!=null }">
				<div class="col-md-2 column div-block"></div>
				<div class="col-md-8 column div-block" style="margin-top: 35px;">
					<div class="form-group">
						<label class="col-sm-2 control-label">单号</label>
						<div class="col-sm-10">
							<input type="text" readonly="readonly" class="form-control"
								value="${eqexam.eq_ex_id }" />
						</div>
					</div>
					<div class="form-group" style="padding-top: 30px">
						<label class="col-sm-2 control-label">器材编号</label>
						<div class="col-sm-10">
							<input type="text" readonly="readonly" class="form-control"
								value="${eqexam.eq_id }" />
						</div>
					</div>
					<div class="form-group" style="padding-top: 30px">
						<label class="col-sm-2 control-label">审核人员编号</label>
						<div class="col-sm-10">
							<input class="form-control" readonly="readonly" type="text"
								value="${eqexam.eq_staff_id }">
						</div>
					</div>

					<div class="form-group" style="padding-top: 30px">
						<label class="col-sm-2 control-label">是否逾期</label>
						<div class="col-sm-10">
							<input class="form-control" readonly="readonly" type="text"
								value="${eqexam.eq_overdue }">
						</div>
					</div>
					<div class="form-group" style="padding-top: 30px">
						<label class="col-sm-2 control-label">损坏数量</label>
						<div class="col-sm-10">
							<input type="text" readonly="readonly" class="form-control"
								value="${eqexam.eq_num_damage }">
						</div>
					</div>
					<div class="form-group" style="padding-top: 30px">
						<label class="col-sm-2 control-label">丢失数量</label>
						<div class="col-sm-10">
							<input type="text" readonly="readonly" class="form-control"
								value="${eqexam.eq_num_lose }" />
						</div>
					</div>
					<div class="form-group" style="padding-top: 30px">
						<label class="col-sm-2 control-label">需扣除罚金</label>
						<div class="col-sm-10">
							<input type="text" readonly="readonly" class="form-control"
								value="${eqexam.eq_publish }" />
						</div>
					</div>
					<div class="form-group" style="padding-top: 30px">
						<div class="col-sm-10">
							<button class="btn btn-success"
								onclick="window.location.href='${pageContext.request.contextPath }/toReturnPage.action?userId=<%= session.getAttribute("userid")%>'">返回</button>
						</div>
					</div>
				</div>
			</c:if>
		</div>
	</div>
</body>
</html>