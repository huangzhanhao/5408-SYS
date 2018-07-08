<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <title>新增管理员</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath }/layui/css/layui.css">
</head>
<div class="layui-container">  
    <div class="layui-row">
        <div class="layui-col-lg12">
            <fieldset class="layui-elem-field">
                <legend>用户管理 - 新增管理员</legend>
                <div class="layui-field-box">
                    <form class="layui-form" action="${pageContext.request.contextPath }/ltc_register2.action" method="post">
                        <div class="layui-form-item">
                            <label class="layui-form-label">用户名</label>
                            <div class="layui-input-inline">
                            <input type="text" name="username" required lay-verify="required" placeholder="请输入用户名" autocomplete="off" class="layui-input">
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <label class="layui-form-label">员工号</label>
                            <div class="layui-input-inline">
                            <input type="text" name="controllerID" required lay-verify="required" placeholder="请输入员工号" autocomplete="off" class="layui-input">
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <label class="layui-form-label">密码框</label>
                            <div class="layui-input-inline">
                            <input type="password" name="password" required lay-verify="required" placeholder="请输入密码" autocomplete="off" class="layui-input">
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <label class="layui-form-label">职位</label>
                            <div class="layui-input-inline">
                            <select name="status" lay-verify="required">
                                <option value=""></option>
                                <option value="赛事管理员">赛事管理员</option>
                                <option value="场地管理员">场地管理员</option>
                                <option value="器材管理员">器材管理员</option>
                            </select>
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <label class="layui-form-label">注册时间</label>
                            <div class="layui-input-inline">
                            <input type="text" name="regTime" required lay-verify="required" placeholder="时间格式：2018-06-28" autocomplete="off" class="layui-input">
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <label class="layui-form-label">联系方式</label>
                            <div class="layui-input-inline">
                            <input type="text" name="contactWay" required lay-verify="required" placeholder="请输入联系方式" autocomplete="off" class="layui-input">
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <label class="layui-form-label">性别</label>
                            <div class="layui-input-block">
                            <input type="radio" name="sex" value="男" title="男">
                            <input type="radio" name="sex" value="女" title="女">
                            </div>
                        </div>
                        <div class="layui-form-item layui-form-text">
                            <label class="layui-form-label">备注</label>
                            <div class="layui-input-block">
                            <textarea name="remarks" placeholder="请输入内容" class="layui-textarea"></textarea>
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