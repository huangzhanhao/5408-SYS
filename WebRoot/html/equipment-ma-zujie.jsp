<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <title>海大体育馆管理系统</title>
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/bootstrap.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath }/layui/css/layui.css">
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/equipment-index-user.css">
  
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-3.1.1.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/bootstrap.js"></script>
<script type="text/javascript">
	$(function(){
		$('#li-zujie').addClass("layui-this");
	});
</script>
</head>
<body class="layui-layout-body">
    <input type="hidden" id="mystyle" value="${style}"/>
	<div class="layui-layout layui-layout-admin"> 
		<div class="layui-header">
			<div><%@ include file="head.jsp" %></div>
		</div>
		<div class="layui-side layui-bg-black">
			<div><%@ include file="equipment-ma-nav.jsp" %></div>
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
	                        <th >租借单号</th>
	                        <th >器材名字</th>
	                        <th >总数</th>
	                        <th >租借日期</th>
	                        <th >约定归还日期</th>
	                        <th >租借人id</th>
	                        <th >操作</th>
	                        </tr> 
	                    </thead>
	                    <tbody id="t-body">
	                    <c:forEach items="${undone }" var="list">
	                    		<tr>
	                    			<td>${list.eq_lease_id }</td>	
	                    			<td>${list.eq_name }</td>	
	                    			<td>${list.eq_count }</td>	
	                    			<td>${list.eq_date_return }</td>	
	                    			<td>${list.eq_date_rental }</td>	
	                    			<td>${list.eq_user_id }</td>	
	                    			<td><button type='submit' class='btn btn-default' 
	                    			 onclick="window.location.href='${pageContext.request.contextPath }/dealEqlease.action?id=${list.eq_lease_id }&staffid=<%= session.getAttribute("userid")%>'" >
	                    			  已领取</button></td>	
	                    		</tr>
	                    </c:forEach>
	                    </tbody>
	                </table>
	            </div>
	        	</c:if>
	        	<c:if test="${done!=null }">
	        		<legend>已处理租借</legend>
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
	                        <th >租借单号</th>
	                        <th >器材名字</th>
	                        <th >总数</th>
	                        <th >租借日期</th>
	                        <th >约定归还日期</th>
	                        <th >租借人id</th>
	                        </tr> 
	                    </thead>
	                    <tbody id="t-body">
	                    <c:forEach items="${done }" var="list">
	                    		<tr>
	                    			<td>${list.eq_lease_id }</td>	
	                    			<td>${list.eq_name }</td>	
	                    			<td>${list.eq_count }</td>	
	                    			<td>${list.eq_date_return }</td>	
	                    			<td>${list.eq_date_rental }</td>	
	                    			<td>${list.eq_user_id }</td>	
	                    		</tr>
	                    </c:forEach>
	                    </tbody>
	                </table>
	            </div>
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