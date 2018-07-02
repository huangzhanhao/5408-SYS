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
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery.validate.min.js" ></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/messages_zh.js" ></script>
<script type="text/javascript">
	$(function(){
		$('#li-shoufei').addClass("layui-this");
		$("#chargeform").validate({
            rules:{
            	eq_deposit:{
                    required:true,
                    digits:true 
                },
                eq_overdue:{
                	 required:true,
                     digits:true 
                },
                eq_price:{
                	 required:true,
                     digits:true 
                },
                eq_lose:{
               	 required:true,
                    digits:true 
               },
               eq_damage:{
              	 required:true,
                   digits:true, 
              }
            },
            messages:{
            	eq_deposit:{
                    required:"不能为空!",
                    digits:"必须是整数!"
                },
                eq_overdue:{
                    required:"不能为空!",
                    digits:"必须是整数!"
                },
                eq_price:{
                    required:"不能为空!",
                    digits:"必须是整数!"
                },
                eq_lose:{
                    required:"不能为空!",
                    digits:"必须是整数!"
                },
                eq_damage:{
                    required:"不能为空!",
                    digits:"必须是整数!"
                }
            }
            
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
	                <table class="table">
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
	                        <th>分类</th>
	                        <th>仓库</th>
	                        <th>仓库地址</th>
	                        <th>操作</th>
	                        </tr> 
	                    </thead>
	                    <tbody id="t-body">
	                    <c:forEach items="${eqList }" var="list">
	                    		<tr>
	                    			<td>${list.eqId }</td>	
	                    			<td>${list.eqName }</td>	
	                    			<td>${list.eqClassName }</td>	
	                    			<td>${list.eqWarehouseName }</td>	
	                    			<td>${list.eqWarehouseAdress }</td>	
	                    			<td><button type='submit' class='btn btn-default' 
	                    			 onclick="window.location.href='${pageContext.request.contextPath }/showEqspend.action?id=${list.eqId }'" >
	                    			  修改</button></td>	
	                    		</tr>
	                    </c:forEach>
	                    </tbody>
	                </table>
	            </div>
	        	</c:if>
	            <c:if test="${eqs!=null }">
	            	<legend>请修改</legend>
	            	<form id="chargeform" class="form-horizontal" action="${pageContext.request.contextPath }/updateEqSpend.action" method="post" role="form">
						<div class="form-group">
							 <label for="inputPassword6" class="col-sm-2 control-label">器材编号</label>
							<div class="col-sm-1">
								<input type="text"  readonly = "readonly" name="eq_id" class="form-control" id="inputPassword6" value="${eqs.eq_id }"/>
							</div>
						</div>
						<div class="form-group">
						    <label class="col-sm-2 control-label">器材名称</label>
							<div class="col-sm-2">
								<input class="form-control" readonly = "readonly" type="text" name="eq_name"  value="${eqs.eq_name }">
							</div>
						</div>

						<div class="form-group">
						    <label class="col-sm-2 control-label">押金</label>
							<div class="col-sm-2">
								<input class="form-control" type="text" name="eq_deposit" value="${eqs.eq_deposit }">
							</div>
						</div>
						<div class="form-group">
						    <label class="col-sm-2 control-label">租金</label>
							<div class="col-sm-2">
								<input class="form-control" type="text" name="eq_price" value="${eqs.eq_price }">
							</div>
						</div>
						<div class="form-group">
						    <label class="col-sm-2 control-label">逾期赔偿</label>
							<div class="col-sm-2">
								<input class="form-control" type="text" name="eq_overdue" value="${eqs.eq_overdue }">
							</div>
						</div>
						<div class="form-group">
						    <label class="col-sm-2 control-label">损坏赔偿</label>
							<div class="col-sm-2">
								<input class="form-control" type="text" name="eq_damage" value="${eqs.eq_damage }">
							</div>
						</div>
						<div class="form-group">
						    <label class="col-sm-2 control-label">丢失赔偿</label>
							<div class="col-sm-2">
								<input class="form-control" type="text" name="eq_lose" value="${eqs.eq_lose }">
							</div>
						</div>
						
						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-10">
								 <button type="submit" class="btn btn-success" >提交</button>
							</div>
						</div>
					</form>
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