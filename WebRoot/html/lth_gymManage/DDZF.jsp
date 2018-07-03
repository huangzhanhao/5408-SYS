<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="java.util.*"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <title>赛事查询</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath }/layui/css/layui.css">
  <style>
  #display{
  	display:block;
  }
  </style>
</head>


<body class="layui-layout-body">

	
		<div class="layui-header">
			<div><%@ include file="/head.jsp" %></div>
		</div>

    <!-- 内容主体区域 -->
    <div style="padding: 15px;">
    
            <legend>查询赛事  </legend>
          
             
            

		<form action="${pageContext.request.contextPath }/dingdanzhifu.action"
			method="post">
			<table class="layui-table">
				<tr>
                     <td align="center">申请人</td>
					<td><input type="text" name="shenqingren" class="full"  value="${DD.shenqingren}" readonly unselectable="on"  /></td>


					<td align="center">场地金额</td>
					<td><input type="text" name="CDmoney" class="full"  value="￥${DD.CDmoney }" readonly unselectable="on" /></td>

					<td align="center">器材金额</td>
					<td><input type="text" name="QCmoney" class="full" value="￥${DD.QCmoney }"readonly unselectable="on" /></td>

					<td align="center">总金额</td>
					<td><input type="text" name="dingdanjine" class="full" value="￥${c}"readonly unselectable="on" /></td>




			</table>
		<div>		
		<button class="layui-btn" type="submit" >支付</button>
		<button class="layui-btn"   onclick="window.location.href='${pageContext.request.contextPath }/YH_query.action'">返回</button>
	</div>
		</form>


               
            </div>
      
        
   
   
		

</body>
</html>