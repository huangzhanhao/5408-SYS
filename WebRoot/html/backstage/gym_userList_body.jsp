<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <title>layout 后台大布局 - Layui</title>
  <link rel="stylesheet" href="./layui/css/layui.css">
</head>
<body class="layui-layout-body">

    <!-- 内容主体区域 -->
    <div style="padding: 15px;">
        <fieldset class="layui-elem-field">
            <legend>用户列表-体育馆用户</legend>
            <div class="layui-field-box">
                <table class="layui-table">
                    <colgroup>
                        <col width="120">
                        <col width="150">
                        <col width="150">
                        <col width="150">
                        <col>
                    </colgroup>
                    <thead>
                        <tr>
                        <th>姓名</th>
                        <th>员工号</th>
                        <th>注册时间</th>
                        <th>联系方式</th>
                        <th>备注</th>
                        </tr> 
                    </thead>
                    <tbody>
                        <tr>
                        <td>贤心</td>
                        <td>1239872313</td>
                        <td>2016-11-29</td>
                        <td>13420111121</td>
                        <td>于千万人之中遇见你所遇见的人，于千万年之中，时间的无涯的荒野里…</td>
                        </tr>
                    </tbody>
                </table>
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
</body>
</html>