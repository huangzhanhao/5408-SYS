<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>跳转中</title>
<script type="text/javascript">
	window.onload = function() {
		setTimeout('window.location.href="${pageContext.request.contextPath }/html/lzm_gymManage/equipment-index-user.jsp";',3000);
	};
</script>
</head>
<body>
	<h1 sytle="text-align:center">3秒后跳转到主页。。。</h1>
</body>
</html>