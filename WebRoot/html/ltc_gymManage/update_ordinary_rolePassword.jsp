<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <title>修改普通用户密码</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath }/layui/css/layui.css">
</head>
<div class="layui-container">  
    <div class="layui-row">
        <div class="layui-col-lg12">
            <fieldset class="layui-elem-field">
                <legend>普通用户 - 修改用户密码</legend>
                <div class="layui-field-box">
                    <form class="layui-form" action="${pageContext.request.contextPath }/ltc_ordinary_updatePassword.action" method="post">
                    <%String studentID = request.getParameter("studentID"); %>
                    <div class="layui-form-item">
                            <label class="layui-form-label">学号</label>
                            <div class="layui-input-inline">
                            <input type="text" name="studentID" required lay-verify="required" value="<%=studentID %>" autocomplete="off" class="layui-input">
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <label class="layui-form-label">原密码</label>
                            <div class="layui-input-inline">
                            <input type="text" name="password1" required lay-verify="required" value="" autocomplete="off" class="layui-input">
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <label class="layui-form-label">新密码</label>
                            <div class="layui-input-inline">
                            <input type="password" name="password2" required lay-verify="required" value="" autocomplete="off" class="layui-input" >
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <label class="layui-form-label">重复新密码</label>
                            <div class="layui-input-inline">
                            <input type="password" name="password3" required lay-verify="required" value="" autocomplete="off" class="layui-input" >
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <div class="layui-input-block">
                            <button type="submit" class="layui-btn" >立即提交</button>
                            <button type="reset" class="layui-btn layui-btn-primary">重置</button>
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