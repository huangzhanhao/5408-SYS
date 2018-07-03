<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="java.util.*"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <title>用户赛事查询</title>
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
    
            <legend>
            用户查询赛事
           
            </legend>
          <br>
          <br>
             <button class="layui-btn layui-btn-normal layui-btn-sm dw-refresh" onclick="window.location.href='${pageContext.request.contextPath }/query.action'"> <i class="layui-icon">&#x1002;</i>刷新</button>
            
            <form>      
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
<td >支付金额
</td>
<td >支付标记

</tr>

<c:forEach items="${SSXX_list }" var="ss">
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
${ss.changdi}

</td>
<td>
${ss.qicai }
  
</td>
<td>
${ss.dingdanjine }
    
</td>
<td>
${ss.zhifubiaoji }
    

</tr>
</c:forEach>


</table>
</form>
<button type="button" id="query"  class="layui-btn"  onclick="window.location.href='${pageContext.request.contextPath }/html/lth_gymManage/YH_SSGL.jsp'">返回</button>  
            </div>
      
    
   
		

</body>
</html>