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
        <!--引入国际化js文件-->
        <script type="text/javascript" src="${pageContext.request.contextPath }/js/messages_zh.js" ></script>
<script type="text/javascript">
	$(function(){
		$('#li-cangku').addClass("layui-this");
		$("#form-xiugai").validate({
			rules:{
            	eq_warehouse_name:{
                    required:true,
                    maxlength:10
                },eq_warehouse_address:{
                    required:true,
                    maxlength:10
                }
            },
            messages:{
            	eq_warehouse_name:{
                    required:"名字不能为空!",
                    maxlength:"名字不得多于10位！"
                },eq_warehouse_address:{
                    required:"名字不能为空!",
                    maxlength:"名字不得多于10位！"
                }
            }
        });
		$("#form-new").validate({
            rules:{
            	eq_warehouse_name:{
                    required:true,
                    maxlength:10
                },eq_warehouse_address:{
                    required:true,
                    maxlength:10
                }
            },
            messages:{
            	eq_warehouse_name:{
                    required:"名字不能为空!",
                    maxlength:"名字不得多于10位！"
                },eq_warehouse_address:{
                    required:"名字不能为空!",
                    maxlength:"名字不得多于10位！"
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
	        <legend>添加仓库</legend>
	            	
	        	<c:if test="${eqw!=null }">
	        	<form id="form-new" class="form-horizontal" action="${pageContext.request.contextPath }/addEqWare.action" method="post" role="form">
						<div class="form-group">
						    <label class="col-sm-2 control-label">仓库名称</label>
							<div class="col-sm-2">
								<input class="form-control"  type="text" name="eq_warehouse_name"  value="${eqww.eq_warehouse_name }">
							</div>
						</div>

						<div class="form-group">
						    <label class="col-sm-2 control-label">仓库地址</label>
							<div class="col-sm-2">
								<input class="form-control" type="text" name="eq_warehouse_address" value="${eqww.eq_warehouse_address }">
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-10">
								 <button type="submit" class="btn btn-success" >提交</button>
							</div>
						</div>
					</form>
	        		<legend>仓库列表</legend>
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
	                        <th>仓库名字</th>
	                        <th>仓库地址</th>
	                        <th>操作</th>
	                        </tr> 
	                    </thead>
	                    <tbody id="t-body">
	                    <c:forEach items="${eqw }" var="list">
	                    		<tr>
	                    			<td>${list.eq_warehouse_id }</td>	
	                    			<td>${list.eq_warehouse_name }</td>	
	                    			<td>${list.eq_warehouse_address }</td>	
	                    			<td><button type='submit' class='btn btn-default' 
	                    			 onclick="window.location.href='${pageContext.request.contextPath }/showEqware.action?id=${list.eq_warehouse_id }'" >
	                    			  修改</button></td>	
	                    		</tr>
	                    </c:forEach>
	                    </tbody>
	                </table>
	            </div>
	        	</c:if>
	            <c:if test="${eqww!=null }">
	            	<legend>请修改</legend>
	            	<form id="form-xiugai" class="form-horizontal" action="${pageContext.request.contextPath }/updateEqWare.action" method="post" role="form">
						<div class="form-group">
							 <label for="inputPassword6" class="col-sm-2 control-label">仓库编号</label>
							<div class="col-sm-1">
								<input type="text"  readonly = "readonly" class="form-control" id="inputPassword6" name="eq_warehouse_id" value="${eqww.eq_warehouse_id }"/>
							</div>
						</div>
						<div class="form-group">
						    <label class="col-sm-2 control-label">仓库名称</label>
							<div class="col-sm-2">
								<input class="form-control"  type="text" name="eq_warehouse_name"  value="${eqww.eq_warehouse_name }">
							</div>
						</div>

						<div class="form-group">
						    <label class="col-sm-2 control-label">仓库地址</label>
							<div class="col-sm-2">
								<input class="form-control" type="text" name="eq_warehouse_address" value="${eqww.eq_warehouse_address }">
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