<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="java.util.*"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <title>layout 后台大布局 - Layui</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath }/layui/css/layui.css">
  <style>
  #display{
  	display:block;
  }
  </style>
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
			        <li class="layui-nav-item"><a href="gym_userList_body.jsp" class="layui-this" >管理员用户</a></li>
			        <li class="layui-nav-item"><a href="call_board.jsp" >发布公告</a></li>
			      </ul>
			    </div>
  		</div>
  
  		<div class="layui-body" id="mainBody">
    <!-- 内容主体区域 -->
    <div style="padding: 15px;">
        <fieldset class="layui-elem-field">
            <legend>用户列表-体育馆用户
            <button class="layui-btn layui-btn-normal layui-btn-sm dw-refresh" onclick="window.location.href='${pageContext.request.contextPath }/ltc_manage_query.action'"> <i class="layui-icon">&#x1002;</i>刷新</button>
            </legend>
            <div class="layui-field-box">
                <table class="layui-table">
                    <colgroup>
                        <col width="100">
                        <col width="100">
                        <col width="120">
                        <col width="120">
                        <col width="100">
                        <col>
                    </colgroup>
                    <thead>
                        <tr>
                        <th>姓名</th>
                        <th>员工号</th>
                        <th>职位</th>
                        <th>注册时间</th>
                        <th>联系方式</th>
                        <th>备注</th>
                        </tr> 
                    </thead>
                    <tbody>
                        <c:forEach var="user" items="${manageUserList }">
                        <tr>
                        <td>${user.username }</td>
                        <td>${user.controllerID }</td>
                        <td>${user.status }</td>
                        <td>${user.regTime }</td>
                        <td>${user.contactWay }</td>
                        <td>${user.remarks }</td>
                        </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </fieldset>
        <fieldset class="layui-elem-field">
          <legend>控制台-最新公告</legend>
          <div class="layui-field-box">
              <table class="layui-table">
                  <colgroup>
                      <col>
                  </colgroup>
                  <thead>
                      <tr>
                      <th>最新公告</th>
                      </tr> 
                  </thead>
                  <tbody>
                      <tr>
                      <td>于千万人之中遇见你所遇见的人，于千万年之中，时间的无涯的荒野里…</td>
                      </tr>
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
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/layui/layui.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/index.js"></script>
</body>
</html>