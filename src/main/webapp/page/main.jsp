<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
    <c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <meta name="Generator" content="EditPlus®">
    <meta name="Author" content="遇见小星">
    <meta name="Keywords" content="监测">
    <meta name="Description" content="">
    <title>视界开源监测管理系统</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/style.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/main.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/layui/css/layui.css"/>
    <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
    <link href="//cdn.bootcss.com/bootstrap/3.3.1/css/bootstrap.css" rel="stylesheet">
    <script>
        var rootPath = "${ctx}";
        var tb = $("#loadhtml");
        		tb.load(rootPath+"/init.jsp");
    </script>

</head>

<body>
    <!-- 布局容器 -->
    <div class="layui-layout layui-layout-admin">
        <div class="layui-header">
            <img src="./不落阁后台管理系统_files/Logo_100_透明.png">
            <span class="sys-title">视界开源监测管理系统</span>
            <ul class="layui-nav" lay-filter="">
                <li class="layui-nav-item"><a target="_blank" href="http://www.yjxxclub.cn/">前台入口</a></li>
                <li class="layui-nav-item">
                    <a href="javascript:;">游客专用账号<span class="layui-nav-more"></span></a>
                    <dl class="layui-nav-child">
                        <!-- 二级菜单 -->
                        <dd><a href="javascript:;">个人信息</a></dd>
                        <dd><a href="javascript:;">修改密码</a></dd>
                        <dd><a href="${pageContext.request.contextPath}/logout">退出登陆</a></dd>
                    </dl>
                </li>
            <span class="layui-nav-bar"></span></ul>
        </div>

        <!--侧边导航-->
        <div class="layui-side layui-bg-black">
            <div class="layui-side-scroll">
                <ul class="layui-nav layui-nav-tree " lay-filter="leftnav">
                    <li class="layui-nav-item layui-this">
                        <a href="javascript:;"><i class="fa fa-home"></i>首页</a>
                    </li>
                    <li class="layui-nav-item">
                        <a href="javascript:;"><i class="fa fa-file-text"></i>系统监控管理</a>
                        <dl class="layui-nav-child">
                            <dd><a href="javascript:;" data-url="/Admin/Article" data-id="1">告警列表</a></dd>
                            <dd><a href="javascript:;" data-url="/Admin/Resource" data-id="2">实时监控</a></dd>
                        </dl>
                    </li>
                    <li class="layui-nav-item">
                        <a href="javascript:;"><i class="fa fa-user"></i>系统用户管理</a>
                        <dl class="layui-nav-child">
                            <dd><a href="javascript:;">系统用户</a></dd>
                            <dd><a href="javascript:;">权限分配</a></dd>
                        </dl>
                    </li>
                    <li class="layui-nav-item">
                        <a href="javascript:;"><i class="fa fa-wrench"></i>网站信息管理</a>
                        <dl class="layui-nav-child">
                            <dd><a href="javascript:;">网站信息</a></dd>
                            <dd><a href="javascript:;">网站统计</a></dd>
                            <dd><a href="javascript:;" data-url="/Admin/TimeLine" data-id="3">更新日志</a></dd>
                            <dd><a href="javascript:;" data-url="/Admin/System/AnnouncementIndex" data-id="5">网站公告</a></dd>
                            <dd><a href="javascript:;" data-url="/Admin/System/UpdateLogIndex" data-id="6">登录记录</a></dd>
                            <dd><a href="javascript:;">黑名单管理</a></dd>
                            <dd><a href="javascript:;" data-url="/Admin/System/LeaveMessageIndex" data-id="7">留言管理</a></dd>
                        </dl>
                    </li>
                    <li class="layui-nav-item">
                        <a href="javascript:;"><i class="fa fa-cog"></i>网站系统设置</a>
                        <dl class="layui-nav-child">
                            <dd><a href="javascript:;">网站开放</a></dd>
                            <dd><a href="javascript:;">安全退出</a></dd>
                        </dl>
                    </li>
                </ul>
            </div>
        </div>

 <!--主体内容-->
        <div class="layui-body">
            <!-- 顶部切换卡 -->
            <div style="margin:0;margin-top:4px;" class="layui-tab layui-tab-brief" lay-filter="tab" lay-allowclose="true">
                <ul class="layui-tab-title">
                    <li lay-id="0" class="layui-this">首页</li>
                </ul>
                <div class="layui-tab-content">
                    <div class="layui-tab-item layui-show" id = "loadhtml">
                        <jsp:include page="init.jsp"/>
                    </div>
                </div>
            </div>
        </div>
        <!--底部信息-->
        <div class="layui-footer">
            <p style="line-height:44px;text-align:center;">视界开源监测管理系统 - Design By 遇见小星俱乐部</p>
        </div>


    <script src = "${pageContext.request.contextPath}/static/layui/layui.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/main.js"></script>
</body>
</html>

