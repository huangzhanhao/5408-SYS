<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <title>修改普通用户</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath }/layui/css/layui.css">
</head>
<div class="layui-container">  
    <div class="layui-row">
        <div class="layui-col-lg12">
            <fieldset class="layui-elem-field">
                <legend>普通用户-查看个人信息</legend>
                <div class="layui-field-box">
                    <form class="layui-form" action="#" method="post">
                        <div class="layui-form-item">
                            <label class="layui-form-label">用户名</label>
                            <div class="layui-input-inline">
                            <input type="text" name="username" required lay-verify="required" value="${ordinaryUserList.username }" autocomplete="off" class="layui-input" readonly="readonly">
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <label class="layui-form-label">学号</label>
                            <div class="layui-input-inline">
                            <input type="text" name="studentID" required lay-verify="required" value="${ordinaryUserList.studentID }" autocomplete="off" class="layui-input" readonly="readonly">
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <label class="layui-form-label">密码框</label>
                            <div class="layui-input-inline">
                            <input type="password" name="password" required lay-verify="required" value="${ordinaryUserList.password }" autocomplete="off" class="layui-input" readonly="readonly">
                            </div>
			                <a class="layui-btn layui-btn-normal dw-dailog"  href="${pageContext.request.contextPath }/html/ltc_gymManage/update_ordinary_rolePassword.jsp?studentID=${ordinaryUserList.studentID }"><i class="layui-icon">&#xe642;</i>修改密码</a>
                        </div>
                        <div class="layui-form-item">
                            <label class="layui-form-label">学院</label>
                            <div class="layui-input-inline">
                            <input type="text" name="college" required lay-verify="required" value="${ordinaryUserList.college }" autocomplete="off" class="layui-input" readonly="readonly">
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <label class="layui-form-label">班级</label>
                            <div class="layui-input-inline">
                            <input type="text" name="grade" required lay-verify="required" value="${ordinaryUserList.grade }" autocomplete="off" class="layui-input" readonly="readonly">
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <label class="layui-form-label">性别</label>
                            <div class="layui-input-block">
                            <input type="radio" name="sex" value="男" title="男" checked="checked">
                            <input type="radio" name="sex" value="女" title="女">
                            </div>
                        </div>
                    </form>
                </div>
            </fieldset>
        </div>
    </div>
</div>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/layui/layui.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/dw_form_submit.js"></script>
</body>
</html>