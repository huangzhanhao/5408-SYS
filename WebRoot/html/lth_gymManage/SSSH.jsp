<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="java.util.*"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <title>赛事审核</title>
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
			        <li class="layui-nav-item"><a  href="#">赛事管理</a></li>
			        <li class="layui-nav-item"><a href="${pageContext.request.contextPath }/html/lth_gymManage/SSCX.jsp" >赛事查询</a></li>
			        <li class="layui-nav-item"><a href="${pageContext.request.contextPath }/html/lth_gymManage/SSXG.jsp"  >赛事修改</a></li>
			          <li class="layui-nav-item"><a href="${pageContext.request.contextPath }/html/lth_gymManage/SSSH.jsp"   class="layui-this">赛事审核</a></li>
			
			      </ul>
			    </div>
  		</div>
  
  		<div class="layui-body" id="mainBody">
    <!-- 内容主体区域 -->
    <div style="padding: 15px;">
        <fieldset class="layui-elem-field">
            <legend>赛事审核
            <button class="layui-btn layui-btn-normal layui-btn-sm dw-refresh" onclick="window.location.href='${pageContext.request.contextPath }/SH_query.action'"> <i class="layui-icon">&#x1002;</i>刷新</button>
            </legend>
            <div class="layui-field-box">
                <table class="layui-table">
                  
                  


<tr>
<td >申请人
</td>
<td >开始时间
</td>
<td >结束时间
</td>
<td >申请日期
</td>
<td >场地信息
</td>
<td >器材信息
</td>

<td >用户操作
</td >
<td>操作
</td>
</tr>
	
<c:forEach items="${SSXX_list_1 }" var="ss">

<tr>

<td>
${ss.shenqingren}
  
</td>
<td>
${ss.kaishishijian }

</td>
<td>
${ss.jieshushijian }

</td>
<td>
${ss.shenqingriqi}

</td>
<td>
${ss.changdi}￥${ss.CDmoney}

</td>
<td>
${ss.qicai }￥${ss.QCmoney}
  
</td>

<td>
${ss.yonghucaozuo }
    
</td>

 <td><a href="${pageContext.request.contextPath}/SSSH_tongyi.action?shenqingren=${ss.shenqingren}&yonghucaozuo=${ss.yonghucaozuo}">同意</a>
 <a href="${pageContext.request.contextPath}/SSSH_bohui.action?shenqingren=${ss.shenqingren}&yonghucaozuo=${ss.yonghucaozuo}">删除</a>
 </td>
 
</tr>

</c:forEach>

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