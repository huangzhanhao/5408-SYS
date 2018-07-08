
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>器材系统-租借</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/equipment-query.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/bootstrap.css">

<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-3.1.1.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/bootstrap.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/equipment-query.js"></script>
<script type="text/javascript">
$(function(){
    $(".li-select").bind('click', function() {  
    	var id =$(this).prev().text();
    	$.ajax({
            url : "${pageContext.request.contextPath }/getDetail.action?id="+id,
            data : null,
            type : "post",
            dataType : "json",//回调
            success : function(data){
            	$("#eq_id").html(data.eq_id);
            	$("#eq_name").html(data.eq_name);
            	$("#eq_deposit").html(data.eq_deposit);
            	$("#eq_price").html(data.eq_price);
            	$("#eq_overdue").html(data.eq_overdue);
            	$("#eq_damage").html(data.eq_damage);
            	$("#eq_lose").html(data.eq_lose);
            }
        });
    	$("#welcome-div ").hide();
    	$("#detail-div").show();
    	$("#detail-tag-a").text(this.innerHTML);
	});
    $("#btn_lese").bind('click', function() {
    	 $(location).attr('href', "${pageContext.request.contextPath }/toLeasePage.action?id="

    		 +$("#eq_id").text()+"&deposit="+$("#eq_deposit").text()+"&price="+$("#eq_price").text());
    });
   
    
});
</script>
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
			<div class="col-md-2 column">
				<div class="panel-group" id="select-top">
					<c:forEach items="${eqcList }" var="list">
						<div class="panel panel-default select-outer">
							<div class="panel-heading">
								<a class="panel-title select-atag" data-toggle="collapse"
									data-parent="#select-first" href="#select-${list.eqClassId } ">${list.eqClassName }</a>
							</div>
							<div id="select-${list.eqClassId }"
								class="panel-collapse collapse select-inner">
								<div class="panel-body">
									<ul class="list-group">
										<c:forEach items="${list.equipment }" var="eqlist">
											<p class="myp hidden">${eqlist.eqId }</p>
											<li class="list-group-item li-select">${eqlist.eqName }
											</li>
										</c:forEach>
									</ul>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
			<!--之后隐藏部分-->
			<div class="col-md-10 column" id="welcome-div"
				style="display: block;">
				<ul class="nav nav-tabs">
					<li class="active"><a href="#">器材租借</a></li>
				</ul>
				<div class="jumbotron" style="margin-top: 10px;">
					<h1>欢迎使用！</h1>
					<p>广东海洋大学体育馆竭诚为你服务！</p>
					<p>
						<a class="btn btn-success btn-large" href="#">访问主页</a>
					</p>
				</div>
			</div>
			<!--之后显示部分-->
			<div class="col-md-10 column" id="detail-div" style="display: none">
				<ul class="nav nav-tabs">
					<li class="active"><a href="#" id="detail-tag-a">xxx</a></li>
				</ul>
				<div class="jumbotron" style="margin-top: 10px;">
					<table class="table">
						<tr>
							<th>编号</th>
							<td id="eq_id">123</td>
						</tr>
						<tr>
							<th>名字</th>
							<td id="eq_name"></td>
						</tr>

						<tr>
							<th>押金/元</th>
							<td id="eq_deposit"></td>
						</tr>
						<tr>
							<th>租金/周</th>
							<td id="eq_price"></td>
						</tr>
						<tr>
							<th>逾期赔偿/元</th>
							<td id="eq_overdue"></td>
						</tr>
						<tr>
							<th>损坏赔偿/元</th>
							<td id="eq_damage"></td>
						</tr>
						<tr>
							<th>丢失赔偿/元</th>
							<td id="eq_lose"></td>
						</tr>
						<tr>
							<th>操作</th>
							<td>
								<button class="btn btn-success " id="btn_lese">租借</button>
								<button class="btn btn-success ">返回</button>
							</td>
						</tr>
					</table>
				</div>
			</div>
		</div>
	</div>
</body>
</html>