<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <title>layout 后台大布局 - Layui</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath }/layui/css/layui.css">
</head>
<body class="layui-layout-body">
	
	<div class="layui-layout layui-layout-admin"> 
		<div class="layui-header">
			<div><%@ include file="/head.jsp" %></div>
		</div>
		<div class="layui-side layui-bg-black">
			    <div class="layui-side-scroll">
			      <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
			      <ul class="layui-nav layui-nav-tree"  lay-filter="test">
			        <li class="layui-nav-item"><a  href="#">体育馆管理员控制台</a></li>
					<li class="layui-nav-item"><a href="ordinary_userList_body.jsp" >普通用户</a></li>
			        <li class="layui-nav-item"><a href="gym_userList_body.jsp" >管理员用户</a></li>
			        <li class="layui-nav-item"><a href="call_board.jsp" class="layui-this" >发布公告</a></li>
			      </ul>
			    </div>
  		</div>
  
  		<div class="layui-body" id="mainBody">

		  <div style="padding: 15px;">
		    <fieldset class="layui-elem-field">
		      <legend>管理员-发布公告</legend>
		      <div class="layui-field-box">
		        <textarea name="" required lay-verify="required" placeholder="请输入" class="layui-textarea"></textarea>
		        <div style="text-align:right;margin-top: 10px;">
		          <button class="layui-btn layui-btn-normal layui-btn-radius"> 提交 </button>
		          <button class="layui-btn layui-btn-normal layui-btn-radius"> 清空 </button>
		        </div>
		      </div> 
		    </fieldset>
		  </div>
		  
		   </div>
	    	<div class="layui-footer">
				<div><%@ include file="/bottom.jsp" %></div>
			</div>
		</div>
		
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/layui/layui.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/index.js"></script>
</body>
</html>