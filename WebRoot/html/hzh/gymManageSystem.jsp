<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>体育馆管理员系统</title>
<link rel="stylesheet" href="./layui/css/layui.css">
<script>
		function showAtRight(url)
		{
		  var xmlhttp;
		  if (window.XMLHttpRequest)
		  {
		    //  IE7+, Firefox, Chrome, Opera, Safari 浏览器执行代码
		    xmlhttp=new XMLHttpRequest();
		  }
		  else
		  {
		    // IE6, IE5 浏览器执行代码
		    xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
		  }
		  xmlhttp.onreadystatechange=function()
		  {
		    if (xmlhttp.readyState==4 && xmlhttp.status==200)
		    {
		      document.getElementById("mainBody").innerHTML=xmlhttp.responseText;
		    }
		  }
		  xmlhttp.open("GET",url,true);
		  xmlhttp.send();
		}
</script>
</head>
<body class="layui-layout-body">
	<div class="layui-layout layui-layout-admin"> 
		<div class="layui-header">
			<div><%@ include file="head.jsp" %></div>
		</div>
		<div class="layui-side layui-bg-black">
			    <div class="layui-side-scroll">
			      <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
			      <ul class="layui-nav layui-nav-tree"  lay-filter="test">
			        <li class="layui-nav-item"><a class="layui-this" href="#">体育馆管理员控制台</a></li>
			        <li class="layui-nav-item">
			          <a class="" href="javascript:;">用户列表</a>
			          <dl class="layui-nav-child">
			            <dd><a href="#" onclick="showAtRight('ordinary_userList_body.jsp')">普通用户</a></dd>
			          </dl>
			          <dl class="layui-nav-child">
			            <dd><a href="#" onclick="showAtRight('gym_userList_body.jsp')">管理员用户</a></dd>
			          </dl>
			        </li>
			        <li class="layui-nav-item">
			          <a href="#" onclick="showAtRight('call_board.jsp')">发布公告</a>
			        </li>
			      </ul>
			    </div>
  		</div>
  
  		<div class="layui-body" id="mainBody">
  			<%@ include file="ordinary_userList_body.jsp" %>
  		</div>
		<div class="layui-footer">
			<div><%@ include file="bottom.jsp" %></div>
		</div>
	</div>
	
<script type="text/javascript" src="./javascript/jquery.min.js"></script>
<script type="text/javascript" src="./layui/layui.js"></script>
<script type="text/javascript" src="./javascript/index.js"></script>
</body>
</html>