<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <title>查询超级管理员列表</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath }/layui/css/layui.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath }/css/global.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath }/icheck/minimal/red.css">
</head>
<body class="layui-layout-body">

	<div class="layui-layout layui-layout-admin"> 
		<div class="layui-header">
			<div><%@ include file="/superHead.jsp" %></div>
		</div>
		
		<div class="layui-side layui-bg-black">
			    <div class="layui-side-scroll">
			      <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
			      <ul class="layui-nav layui-nav-tree"  lay-filter="test">
			        <li class="layui-nav-item"><a  href="#">超级管理员控制台</a></li>
			        <li class="layui-nav-item"><a href="#" >普通用户</a></li>
			        	<li class="layui-nav-item"><a href="${pageContext.request.contextPath }/html/ltc_superManage/query_ordinary_role.jsp" >&nbsp;&nbsp;->普通用户查询</a></li>
			        <li class="layui-nav-item"><a href="#" >管理员用户</a></li>
			        	<li class="layui-nav-item"><a href="${pageContext.request.contextPath }/html/ltc_superManage/query_manage_role.jsp" >&nbsp;&nbsp;->管理员用户查询</a></li>
			        <li class="layui-nav-item"><a href="#" >超级管理员用户</a></li>
			        	<li class="layui-nav-item"><a href="${pageContext.request.contextPath }/html/ltc_superManage/query_super_role.jsp"  class="layui-this" >&nbsp;&nbsp;->超级管理员用户查询</a></li>
			      </ul>
			    </div>
  		</div>


	<div class="layui-body" id="mainBody">
  <!-- 内容主体区域 -->
    <div style="padding: 15px;">
        <fieldset class="layui-elem-field">
            <legend>用户管理 - 超级管理员用户列表</legend>
            <div class="layui-field-box">
              <form class="layui-form" action="">
                <div class="layui-form-item" style="text-align:center;">
                  <div class="layui-inline">
                    <div class="layui-input-inline">
                      <input autocomplete="off" class="layui-input" placeholder="请输入名称" type="text" name="name" value="">
                    </div>
                  </div>
                  <div class="layui-inline" style="text-align:left;">
                    <div class="layui-input-inline">
                      <button class="layui-btn"><i class="layui-icon">&#xe615;</i>查询</button>
                    </div>
                  </div>
                </div>
              </form>
              <hr>
              <div class="layui-btn-group">
                  <button class="layui-btn layui-btn-sm layui-btn-primary dw-dailog" 
                  		onclick="window.location.href='${pageContext.request.contextPath }/html/ltc_superManage/add_super_role.jsp'">
                      <i class="layui-icon">&#xe654;</i>新增
                  </button>
                  <button class="layui-btn layui-btn-sm layui-btn-primary dw-refresh"
                  		onclick="window.location.href='${pageContext.request.contextPath }/ltc_super_query.action'">
                      <i class="layui-icon">&#x1002;</i>刷新
                  </button>
              </div>
              <hr>
              <table class="layui-table">
                  <colgroup>
                      <col width="150">
                      <col width="150">
                      <col>
                      <col>
                  </colgroup>
                  <thead>
                      <tr>
	                      <th>账号</th>
	                      <th>密码</th>
	                      <th>创建时间</th>
	                      <th>操作</th>
                      </tr> 
                  </thead>
                  <tbody>
		                  <c:forEach var="user" items="${superUserList }">
                        		<tr>
		                        <td>${user.account }</td>
		                        <td>${user.password }</td>
		                        <td>${user.createTime }</td>
		                        <td class="text-center">
			                        <div class="layui-btn-group">
			                          <button class="layui-btn layui-btn-sm layui-btn-primary dw-delete" 
			                          onclick="window.location.href='${pageContext.request.contextPath }/ltc_super_delete.action?account=${user.account }'">
			                            <i class="layui-icon">&#xe640;</i>删除
			                          </button>
			                        </div>
		                      	</td>
		                        </tr>
		                  </c:forEach>
                  </tbody>
              </table>
            </div>
        </fieldset>
    </div>
    </div>
    <div class="layui-footer">
			<div><%@ include file="/bottom.jsp" %></div>
		</div>
    </div>
<script type="text/javascript" src="${pageContext.request.contextPath }/layui/layui.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/icheck/icheck.js"></script>
</body>
</html>