<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="java.util.*"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <title>賽事修改</title>
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
			        <li class="layui-nav-item"><a  href="#">賽事管理</a></li>
			        <li class="layui-nav-item"><a href="SSCX.jsp" >赛事查询</a></li>
			        <li class="layui-nav-item"><a href="SSXG.jsp" class="layui-this" >赛事修改</a></li>
			        <li class="layui-nav-item"><a href="SSSH.jsp"  >赛事审核</a></li>
		
			      </ul>
			    </div>
  		</div>
  
  		<div class="layui-body" id="mainBody">
    <!-- 内容主体区域 -->
    <div style="padding: 15px;">
        <fieldset class="layui-elem-field">
            <legend>賽事修改
            </legend>
            <div class="layui-field-box">
            
            
            
            
            
            
            	<form action="${pageContext.request.contextPath }/SSXG.action?id1=${SSXG.QCid}&id2=${SSXG.CDid}" method="post">
               <table class="layui-table">
				<tr> 
					<td align="center">申请人</td>
					<td><input type="text" name="shenqingren" class="full"  value="${SSXG.shenqingren}" readonly unselectable="on" /></td>

					<td align="center">开始时间</td>
					<td><input type="text" name="kaishishijian" class="full"  value="${SSXG.kaishishijian}" /></td>

					<td align="center">结束时间</td>
					<td><input type="text" name="jieshushijian" class="full" value="${SSXG.jieshushijian}" /></td>



				</tr>

				<tr>
					<td align="center">器材选择</td>
					<td><select name="qicai">
							<option value="${SSXG.qicai}">${SSXG.qicai}</option>
							<c:forEach items="${CDQC_1}" var="CDQC_1">
								<option value="${CDQC_1.QCname}">${CDQC_1.QCname}</option>
							</c:forEach>
					</select></td>

					<td align="center">场地选择</td>
					<td><select name="changdi">
							<option value="${SSXG.changdi}">${SSXG.changdi}</option>
							<c:forEach items="${CDQC_2}" var="CDQC_2">
								<option value="${CDQC_2.CDname}">${CDQC_2.CDname}</option>
							</c:forEach>
					</select></td>

					<td align="center">申请时间</td>
					<td><input type="text" id="logInfo" name="shenqingriqi" value="${SSXG.shenqingriqi}" class="full"  readonly unselectable="on"/></td>


				</tr>



			</table>
			<button class="layui-btn" type="submit">提交</button>
			
			</form>
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