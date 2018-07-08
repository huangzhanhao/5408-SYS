<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link rel="stylesheet" href="${pageContext.request.contextPath }/layui/css/layui.css">
<title>这是导航栏不要随便访问</title>
</head>
<body class="layui-layout-body">
	<div class="layui-side-scroll">
		<!-- 左侧导航区域（可配合layui已有的垂直导航） -->
		<ul class="layui-nav layui-nav-tree" lay-filter="test">
			<li class="layui-nav-item" id="li-xinxi"><a
				href="${pageContext.request.contextPath }/getEquipment.action">器材信息</a>
			</li>
			<li class="layui-nav-item" id="li-shoufei"><a
				href="${pageContext.request.contextPath }/getEqForcharge.action">器材收费标准</a>
			</li>
			<li class="layui-nav-item" id="li-cangku"><a
				href="${pageContext.request.contextPath }/getEqWare.action">器材仓库</a>
			</li>
			<li class="layui-nav-item" id="li-fenlei"><a
				href="${pageContext.request.contextPath }/getEqClass.action">器材分类</a>
			</li>
			<li class="layui-nav-item" id="li-weihu"><a
				href="${pageContext.request.contextPath }/getEquipmentforweihu.action">器材维护</a>
			</li>
			<li class="layui-nav-item" id="li-shanchu"><a
				href="${pageContext.request.contextPath }/getEquipmentfordelete.action">器材报废</a>
			</li>
			<li class="layui-nav-item" id="li-tianjia"><a
				href="${pageContext.request.contextPath }/getEquipmentforadd.action">器材采购</a>
			</li>
			<li class="layui-nav-item" id="li-zujie"><a
				href="${pageContext.request.contextPath }/getEqrental.action">器材租借审核</a>
			</li>
			<li class="layui-nav-item" id="li-gui"><a
				href="${pageContext.request.contextPath }/getEqreturn.action">器材归还审核</a>
			</li>
			<li class="layui-nav-item"><a
				href="${pageContext.request.contextPath }/html/ltc_gymManage/gym_userList_body.jsp">发布公告</a>
			</li>
		</ul>
	</div>
</body>
</html>