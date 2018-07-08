<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <title>新增超级管理员</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath }/layui/css/layui.css">
</head>
<div class="layui-container">  
    <div class="layui-row">
        <div class="layui-col-lg12">
            <fieldset class="layui-elem-field">
                <legend>用户管理 - 新增超级管理员</legend>
                <div class="layui-field-box">
                    <form class="layui-form" action="${pageContext.request.contextPath }/ltc_register_super.action" method="post">
                        <div class="layui-form-item">
                            <label class="layui-form-label">用户账号</label>
                            <div class="layui-input-inline">
                            <input type="text" name="account" required lay-verify="required" placeholder="请输入注册账号" autocomplete="off" class="layui-input">
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <label class="layui-form-label">密码框</label>
                            <div class="layui-input-inline">
                            <input type="password" name="password" required lay-verify="required" placeholder="请输入密码" autocomplete="off" class="layui-input">
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <label class="layui-form-label">注册时间</label>
                            <div class="layui-input-inline">
                            <input type="text" name="createTime" required lay-verify="required" placeholder="时间格式：2018-06-28" autocomplete="off" class="layui-input">
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <div class="layui-input-block">
                            <button class="layui-btn" type="submit">立即提交</button>
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