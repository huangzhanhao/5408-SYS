<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
	<button onclick="${pageContext.request.contextPath }/ltc_ordinary_query.action">测试查询普通用户</button>
<<<<<<< HEAD
	<a href="${pageContext.request.contextPath }/ltc_ordinary_query.action">测试查询普通用户</a>
	<a href="${pageContext.request.contextPath }/html/ltc_gymManage/update_ordinary_rolePassword.jsp?studentID=123">跳转到修改密码</a>
	欢迎你，<span>${userList.username }</span><span>${userList.password}</span>
	<a href="${pageContext.request.contextPath }/ltc_ordinary_queryByIDInHomepage.action?studentID=${userList.studentID}">测试查询普通用户</a>
=======
	<a href="${pageContext.request.contextPath }/query.action">测试查询普通用户</a>
>>>>>>> branch 'master' of https://github.com/cenmen/5408-SYS.git
</body>
</html>