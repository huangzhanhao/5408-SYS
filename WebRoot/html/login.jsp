<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <title>GDOU体育馆系统-登录</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/layui/css/layui.css" media="all" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/login.css" />
    <script type="text/javascript">
		var msg="${error}";
		if(msg!=""){
		alert(msg);
		}
	</script>
</head>
<body class="beg-login-bg">
    <div class="beg-login-box">
        <header>
            <h1>广东海洋大学体育馆管理系统</h1>
        </header>
        <div class="beg-login-main">
            <form action="${pageContext.request.contextPath}/loginChanger.action" class="layui-form" method="post">
                <div class="layui-form-item">
                    <label class="beg-login-icon">
                        <i class="layui-icon">&#xe612;</i>
                    </label>
                    <input type="text" lay-verify="required" name="username" autocomplete="off" placeholder="这里输入账号" class="layui-input" lay-verType="tips">
                </div>
                <div class="layui-form-item">
                    <label class="beg-login-icon">
                        <i class="layui-icon">&#xe642;</i>
                    </label>
                    <input type="password" lay-verify="required" name="password" autocomplete="off" placeholder="这里输入密码" class="layui-input" lay-verType="tips">
                </div>
                <div>
                    <input type="radio" name="userType" id="A" value="A" class="radio-choice-box">普通用户
                    <input type="radio" name="userType" id="B" value="B" class="radio-choice-box">管理员<br>
                    <input type="radio" name="userType" id="C" value="C" class="radio-choice-box">超级管理员
                </div>
                <div class="layui-form-item">
                    <div class="beg-pull">
                        <button type="submit" class="layui-btn layui-btn-normal" style="width:100%;">
                            登　　录
                        </button>
                    </div>
                </div>
            </form>
        </div>
        <footer>
            <p>gdou-GYMsystem.com</p>
        </footer>
    </div>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/layui/layui.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/login.js"></script>
</body>
</html>