<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <title>海大体育馆管理系统</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath }/layui/css/layui.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/equipment-index-user.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/bootstrap-datetimepicker.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/bootstrap-spinner.css">
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-3.1.1.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/bootstrap.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/bootstrap-datetimepicker.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/bootstrap-datetimepicker.zh-CN.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery.spinner.min.js"></script>
<script type="text/javascript">
	$(function(){
		$('#li-weihu').addClass("layui-this");
		$('#table-eq :submit').click(function(){
	    	$(location).attr('href', "${pageContext.request.contextPath }/addEqmaintain.action?eqid="
	    			+$(this).parents('tr').find("input[name='eq_id']").val()+"&eqcount="
	    			+$(this).parents('tr').find("input[name='eq_count']").val());
		});
		$('#table-eqm :submit').click(function(){
			$(location).attr('href', "${pageContext.request.contextPath }/deleteEqmaintain.action?eqid="
	    			+$(this).parents('tr').find("input[name='eq_id']").val()+"&eqcount="
	    			+$(this).parents('tr').find("input[name='eq_count']").val());
		});
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
	        	<c:if test="${eqList!=null }">
	        		<legend>器材列表</legend>
	            <div class="layui-field-box">
	                <table class="table" id="table-eq">
	                    <colgroup>
	                        <col width="150">
	                        <col width="200">
	                        <col width="200">
	                        <col>
	                    </colgroup>
	                    <thead>
	                        <tr>
	                        <th >编号</th>
	                        <th>名字</th>
	                        <th >选择需维护数量</th>
	                        <th >操作</th>
	                        </tr> 
	                    </thead>
	                    <tbody id="t-body">
	                    <c:forEach items="${eqList }" var="list">
	                    		<tr>
	                    			<td>
	                    				<input type="text" class="form-control" readonly="readonly" style="width:50px" name="eq_id" value="${list.eqId }" > 
	                    			</td>	
	                    			<td>${list.eqName }</td>	
	                    			<td>
	                    			<div class="form-group">
										<div class="input-group col-sm-10 spinner" style="width: 100px;padding-left:15px;" data-trigger="spinner" id="spinner"> 
										<input type="text" class="form-control" name="eq_count" id="count" value="1" data-max="${list.eqSurplus }" data-min="1" data-step="1"> 

										<div class="input-group-addon"> 
										<a href="javascript:;" class="spin-up" data-spin="up">+</a> 
										<a href="javascript:;" class="spin-down" data-spin="down">-</a> 
										</div> 
										</div>
									</div>
									</td>	
	                    			<td><button type='submit' class='btn btn-default' 
	                    			 >
	                    			  提交</button></td>	
	                    		</tr>
	                    </c:forEach>
	                    </tbody>
	                </table>
	            </div>
	        	</c:if>
	            <c:if test="${eqq!=null }">
	            	<legend>维护中</legend>
					<table class="table" id="table-eqm">
	                    <colgroup>
	                        <col width="150">
	                        <col width="200">
	                        <col width="200">
	                        <col>
	                    </colgroup>
	                    <thead>
	                        <tr>
	                        <th>编号</th>
	                        <th>名字</th>
	                        <th>选择完成数量</th>
	                        <th>操作</th>
	                        </tr> 
	                    </thead>
	                    <tbody >
	                    <c:forEach items="${eqq }" var="list">
	                    		<tr>
	                    			<td>
	                    				<input type="text" class="form-control" readonly="readonly" style="width:50px" name="eq_id" value="${list.eq_id }" > 
	                    			</td>	
	                    			<td>${list.eq_name }</td>	
	                    			<td>
	                    			<div class="form-group">
										<div class="input-group col-sm-10 spinner" style="width: 100px;padding-left:15px;" data-trigger="spinner" id="spinner"> 
										<input type="text" class="form-control" name="eq_count" id="count" value="${list.eq_maincount }" data-max="${list.eq_maincount }" data-min="1" data-step="1"> 

										<div class="input-group-addon"> 
										<a href="javascript:;" class="spin-up" data-spin="up">+</a> 
										<a href="javascript:;" class="spin-down" data-spin="down">-</a> 
										</div> 
										</div>
									</div>
									</td>	
	                    			<td><button type='submit' class='btn btn-default' 
	                    			 >
	                    			  维护完成</button></td>	
	                    		</tr>
	                    </c:forEach>
	                    </tbody>
	                </table>
	            </c:if>
	            <H3>${msg}</H3>
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