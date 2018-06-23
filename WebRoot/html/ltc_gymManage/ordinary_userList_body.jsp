<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>体育馆管理员系统</title>
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
			        <li class="layui-nav-item"><a href="ordinary_userList_body.jsp"  class="layui-this" >普通用户</a></li>
			        <li class="layui-nav-item"><a href="gym_userList_body.jsp" >管理员用户</a></li>
			        <li class="layui-nav-item"><a href="call_board.jsp" >发布公告</a></li>
			      </ul>
			    </div>
  		</div>
  
  		<div class="layui-body" id="mainBody">
  			<!-- 内容主体区域 -->
    <div style="padding: 15px;">
        <fieldset class="layui-elem-field">
            <legend>用户列表-普通用户</legend>
            <div class="layui-field-box">
                <table class="layui-table">
                    <colgroup>
                        <col width="150">
                        <col width="200">
                        <col width="200">
                        <col>
                    </colgroup>
                    <thead>
                        <tr>
                        <th>姓名</th>
                        <th>学号</th>
                        <th>班级</th>
                        <th>学院</th>
                        </tr> 
                    </thead>
                    <tbody>
                        <tr>
                        <td>姓名甲</td>
                        <td>201511701423</td>
                        <td>软件1154</td>
                        <td>数字与计算机学院</td>
                        </tr>
                        <tr>
                        <td>姓名乙</td>
                        <td>201511701420</td>
                        <td>英语1151</td>
                        <td>外国语学院</td>
                        </tr>
                        <tr>
                        <td>姓名丙</td>
                        <td>201511701412</td>
                        <td>软件1154</td>
                        <td>数字与计算机学院</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </fieldset>
        <fieldset class="layui-elem-field">
          <legend>体育馆-最新公告</legend>
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