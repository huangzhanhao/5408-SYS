<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <title>公告板</title>
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
					<li class="layui-nav-item"><a href="${pageContext.request.contextPath }/html/ltc_gymManage/ordinary_userList_body.jsp" >普通用户</a></li>
			        <li class="layui-nav-item"><a href="${pageContext.request.contextPath }/html/ltc_gymManage/gym_userList_body.jsp" >管理员用户</a></li>
			        <li class="layui-nav-item"><a href="${pageContext.request.contextPath }/html/ltc_gymManage/call_board.jsp" class="layui-this" >发布公告</a></li>
			        <li class="layui-nav-item"><a href="${pageContext.request.contextPath }/ltc_tologin.action?username=${manage.controllerID }&userType=manage&password=${manage.password }" >返回管理页面</a></li>
			      </ul>
			    </div>
  		</div>
  
  		<div class="layui-body" id="mainBody">

		  <div style="padding: 15px;">
		    <fieldset class="layui-elem-field">
		      <legend>管理员-发布公告</legend>
		      <form class="layui-form" action="${pageContext.request.contextPath }/ltc_toInsertAnno.action">
		      <div class="layui-form-item layui-form-text">
	      					<textarea name="anno" required lay-verify="required" placeholder="请输入" class="layui-textarea" style="margin:10px;width:98%;height:130px;"></textarea>
					        <div style="text-align:right;margin-top: 10px;">
					          <button type="submit" class="layui-btn layui-btn-normal layui-btn-radius" > 提交 </button>
					          <button type="reset" class="layui-btn layui-btn-normal layui-btn-radius"> 清空 </button>
					        </div>
		      </div>
		      </form>
		    </fieldset>
		    <fieldset class="layui-elem-field">
		          <legend>体育馆-最新公告
		          <button class="layui-btn layui-btn-normal layui-btn-sm dw-refresh" onclick="window.location.href='${pageContext.request.contextPath }//ltc_anno_query.action'"> <i class="layui-icon">&#x1002;</i>刷新</button>
		          </legend>
		          <div class="layui-field-box">
		              <table class="layui-table">
		                  <colgroup>
		                      <col>
		                      <col width="200">
		                      <col>
		                  </colgroup>
		                  <thead>
		                      <tr>
		                      <th>最新公告</th>
		                      <th>发布时间</th>
		                      <th>操作</th>
		                      </tr> 
		                  </thead>
		                  <tbody>
		                      <c:forEach var="anno" items="${annoList }">
		                        <tr>
		                        <td>${anno.anno }</td>
		                        <td>${anno.createTime }</td>
		                        <td class="text-center">
			                        <div class="layui-btn-group">
			                          <button class="layui-btn layui-btn-sm layui-btn-primary dw-delete" 
			                          onclick="window.location.href='${pageContext.request.contextPath }/ltc_anno_delete.action?id=${anno.id }'">
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
		
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/layui/layui.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/index.js"></script>
</body>
</html>