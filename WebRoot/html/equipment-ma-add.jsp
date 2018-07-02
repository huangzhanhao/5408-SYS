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
        <script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery.validate.min.js" ></script>
        <!--引入国际化js文件-->
        <script type="text/javascript" src="${pageContext.request.contextPath }/js/messages_zh.js" ></script>
<script type="text/javascript">
	$(function(){
		$('#li-tianjia').addClass("layui-this");
		$('#table-eq :submit').click(function(){
	    	$(location).attr('href', "${pageContext.request.contextPath }/addEquipment.action?eqid="
	    			+$(this).parents('tr').find("input[name='eq_id']").val()+"&eqcount="
	    			+$(this).parents('tr').find("input[name='eq_count']").val());
		});
		
		$("#form-add").validate({
            rules:{
            	eqName:{
                    required:true,
                    maxlength:10
                },
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
            	eqName:{
                    required:"名字不能为空!",
                    maxlength:"名字不得多于10位！"
                },
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
	    <legend>请添加新器材</legend>
	            	<form id="form-add" class="form-horizontal" action="${pageContext.request.contextPath }/addNewEq.action" method="post" >
						<div class="form-group">
						    <label class="col-sm-2 control-label">器材名称</label>
							<div class="col-sm-2">
								<input class="form-control" type="text" name="eqName"  value="">
							</div>
						</div>
						<div class="form-group">
						    <label class="col-sm-2 control-label">器材总数</label>
							<div class="col-sm-2">
								<div class="input-group col-sm-10 spinner" style="width: 100px;" data-trigger="spinner" id="spinner"> 
								<input type="text" class="form-control" name="eqAmount" id="count" value="1" data-max="100" data-min="1" data-step="1"> 
								<div class="input-group-addon"> 
								<a href="javascript:;" class="spin-up" data-spin="up">+</a> 
								<a href="javascript:;" class="spin-down" data-spin="down">-</a> 
								</div> 
								</div>
							</div>
						</div>
						<div class="form-group">
						    <label class="col-sm-2 control-label">器材仓库</label>
							<div class="col-sm-10">
								<div class="input-group col-sm-10 " style="width: 135px;" data-trigger="spinner" id="spinner"> 
								<select class="form-control" name='eqWarehouseId'>
								<c:forEach items="${eqw }" var="list">
									<option value='${list.eq_warehouse_id }'>${list.eq_warehouse_name }</option>
								</c:forEach>
								</select>
								</div>
							</div>
						</div>
						<div class="form-group">
						    <label class="col-sm-2 control-label">器材分类</label>
							<div class="input-group col-sm-10 " style="width: 135px;padding-left:15px;" data-trigger="spinner" id="spinner"> 
								<select class="form-control" name='eqClassId'>
								<c:forEach items="${eqc }" var="list">
									<option value='${list.eqClassId }'>${list.eqClassName }</option>
								</c:forEach>
								</select>
							</div>
						</div>
						<div class="form-group">
						    <label class="col-sm-2 control-label">押金</label>
							<div class="input-group col-sm-10 " style="width: 135px;padding-left:15px;" data-trigger="spinner" id="spinner"> 
								<input class="form-control" type="text" name="eq_deposit"  value="">
							</div>
						</div>
						<div class="form-group">
						    <label class="col-sm-2 control-label">租金</label>
							<div class="input-group col-sm-10 " style="width: 135px;padding-left:15px;" data-trigger="spinner" id="spinner"> 
								<input class="form-control" type="text" name="eq_price"  value="">
							</div>
						</div>
						<div class="form-group">
						    <label class="col-sm-2 control-label">丢失赔偿</label>
							<div class="input-group col-sm-10 " style="width: 135px;padding-left:15px;" data-trigger="spinner" id="spinner"> 
								<input class="form-control" type="text" name="eq_lose"  value="">
							</div>
						</div>
						<div class="form-group">
						    <label class="col-sm-2 control-label">逾期赔偿</label>
							<div class="input-group col-sm-10 " style="width: 135px;padding-left:15px;" data-trigger="spinner" id="spinner"> 
								<input class="form-control" type="text" name="eq_overdue"  value="">
							</div>
						</div>
						<div class="form-group">
						    <label class="col-sm-2 control-label">损坏赔偿</label>
							<div class="input-group col-sm-10 " style="width: 135px;padding-left:15px;" data-trigger="spinner" id="spinner"> 
								<input class="form-control" type="text" name="eq_damage"  value="">
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-10">
								 <button type="submit" class="btn btn-success" >提交</button>
							</div>
						</div>
					</form>
	        <fieldset class="layui-elem-field">
	            <H3>${msg }</H3>
	        	<c:if test="${eqList!=null }">
	        		<legend>现有器材列表</legend>
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
	                        <th>总数量</th>
	                        <th >选择添加数量</th>
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
	                    			<td>${list.eqAmount }</td>	
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