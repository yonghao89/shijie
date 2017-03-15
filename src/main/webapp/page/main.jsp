<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%@ include file="common/tag.jsp"%>
<!DOCTYPE html>
<html>
  <head>
    <title>视界开源监测管理系统</title>
    <%@ include file="common/base.jsp"%>
</head>
<body>
<body>
    <!-- 布局容器 -->
    <div class="layui-layout layui-layout-admin">
        <!--顶部-->
        <div class="layui-header">
            <!-- logo -->
            <img src="/Areas/Admin/Images/Logo_100_%e9%80%8f%e6%98%8e.png" />
            <span class="sys-title">视界开源监测管理系统</span>
            <!-- 水平导航 -->
            <ul class="layui-nav" lay-filter="">
                <li class="layui-nav-item"><a target="_blank" href="/">前台入口</a></li>
                <li class="layui-nav-item">
                    <a href="javascript:;">游客专用账号</a>
                    <dl class="layui-nav-child">
                        <!-- 二级菜单 -->
                        <dd><a href="javascript:;">个人信息</a></dd>
                        <dd><a href="javascript:;">修改密码</a></dd>
                        <dd><a href="/Admin/Home/LoginOut">退出登陆</a></dd>
                    </dl>
                </li>
            </ul>
        </div>
        <!--侧边导航-->
        <div class="layui-side layui-bg-black">
            <div class="layui-side-scroll">
                <ul class="layui-nav layui-nav-tree" lay-filter="leftnav">
                    <li class="layui-nav-item layui-this">
                        <a href="javascript:;"><i class="fa fa-home"></i>首页</a>
                    </li>
                    <li class="layui-nav-item">
                        <a href="javascript:;"><i class="fa fa-file-text"></i>内容管理</a>
                        <dl class="layui-nav-child">
                            <dd><a href="javascript:;" data-url="/Admin/Article" data-id="1">文章管理</a></dd>
                            <dd><a href="javascript:;" data-url="/Admin/Resource" data-id="2">资源管理</a></dd>
                            <dd><a href="javascript:;" data-url="/Admin/TimeLine" data-id="3">时光轴管理</a></dd>
                            <dd><a href="javascript:;">笔记本管理</a></dd>
                            <dd><a href="javascript:;" data-url="/Admin/Article/Recycled" data-id="4">文章回收站</a></dd>
                            <dd><a href="javascript:;">资源回收站</a></dd>
                        </dl>
                    </li>
                    <li class="layui-nav-item">
                        <a href="javascript:;"><i class="fa fa-user"></i>用户管理</a>
                        <dl class="layui-nav-child">
                            <dd><a href="javascript:;">全部用户</a></dd>
                            <dd><a href="javascript:;">黑名单管理</a></dd>
                        </dl>
                    </li>
                    <li class="layui-nav-item">
                        <a href="javascript:;"><i class="fa fa-wrench"></i>扩展管理</a>
                        <dl class="layui-nav-child">
                            <dd><a href="javascript:;">友情链接</a></dd>
                            <dd><a href="javascript:;">博主信息</a></dd>
                            <dd><a href="javascript:;">网站信息</a></dd>
                            <dd><a href="javascript:;" data-url="/Admin/System/AnnouncementIndex" data-id="5">网站公告</a></dd>
                            <dd><a href="javascript:;" data-url="/Admin/System/UpdateLogIndex" data-id="6">更新日志</a></dd>
                            <dd><a href="javascript:;" data-url="/Admin/System/LeaveMessageIndex" data-id="7">留言管理</a></dd>
                        </dl>
                    </li>
                    <li class="layui-nav-item">
                        <a href="javascript:;"><i class="fa fa-cog"></i>系统配置</a>
                        <dl class="layui-nav-child">
                            <dd><a href="javascript:;">SEO配置</a></dd>
                            <dd><a href="javascript:;">QQ互联</a></dd>
                            <dd><a href="javascript:;">数据库配置</a></dd>
                            <dd><a href="javascript:;">站点地图</a></dd>
                        </dl>
                    </li>
                    <li class="layui-nav-item">
                        <a href="javascript:;"><i class="fa fa-info-circle"></i>其他信息</a>
                        <dl class="layui-nav-child">
                            <dd><a href="javascript:;">操作日志</a></dd>
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
                    <div class="layui-tab-item layui-show">
                        <p style="padding: 10px 15px; margin-bottom: 20px; margin-top: 10px; border:1px solid #ddd;display:inline-block;">
                            上次登陆
                            <span style="padding-left:1em;">IP：113.249.245.125</span>
                            <span style="padding-left:1em;">地点：未知</span>
                            <span style="padding-left:1em;">时间：2017/3/15 21:30:35</span>
                        </p>
                        <fieldset class="layui-elem-field layui-field-title">
                            <legend>统计信息</legend>
                            <div class="layui-field-box">
                                <div style="display: inline-block; width: 100%;">
                                    <div class="ht-box layui-bg-blue">
                                        <p id="totalCount">0</p>
                                        <p>用户总数</p>
                                    </div>
                                    <div class="ht-box layui-bg-red">
                                        <p id="todayRegist">0</p>
                                        <p>今日注册</p>
                                    </div>
                                    <div class="ht-box layui-bg-green">
                                        <p id="todayLogin">0</p>
                                        <p>今日登陆</p>
                                    </div>
                                    <div class="ht-box layui-bg-orange">
                                        <p id="articleCount">0</p>
                                        <p>文章总数</p>
                                    </div>
                                    <div class="ht-box layui-bg-cyan">
                                        <p id="resourceCount">0</p>
                                        <p>资源总数</p>
                                    </div>
                                    <div class="ht-box layui-bg-black">
                                        <p id="noteCount">0</p>
                                        <p>笔记总数</p>
                                    </div>
                                </div>
                            </div>
                        </fieldset>
                    </div>
                </div>
            </div>
        </div>
        <!--底部信息-->
        <div class="layui-footer">
            <p style="line-height:44px;text-align:center;">视界开源监测管理系统 - Design By 遇见小星</p>
        </div>
        <!--快捷菜单-->
        <div class="short-menu" style="display:none">
            <fieldset class="layui-elem-field layui-field-title">
                <legend style="color:#fff;padding-top:10px;padding-bottom:10px;">快捷菜单</legend>
                <div class="layui-field-box">
                    <div style="width:832px;margin:0 auto;">
                        <div class="windows-tile windows-two">
                            <i class="fa fa-file-text"></i>
                            <span data-url="/Admin/Article" data-id="1">文章管理</span>
                        </div>
                        <div class="windows-tile windows-one">
                            <i class="fa fa-volume-up"></i>
                            <span  data-url="/Admin/System/AnnouncementIndex" data-id="5">网站公告</span>
                        </div>
                        <div class="windows-tile windows-one">
                            <i class="fa fa-comments-o"></i>
                            <span data-url="/Admin/System/LeaveMessageIndex" data-id="7">留言管理</span>
                        </div>
                        <div class="windows-tile windows-two">
                            <i class="fa fa-handshake-o"></i>
                            <span>友情链接</span>
                        </div>
                        <div class="windows-tile windows-one">
                            <i class="fa fa-arrow-circle-right"></i>
                            <span data-url="/Admin/System/UpdateLogIndex" data-id="6">更新日志</span>
                        </div>
                        <div class="windows-tile windows-one">
                            <i class="fa fa-wrench"></i>
                            <span>操作日志</span>
                        </div>
                        <div class="windows-tile windows-one">
                            <i class="fa fa-tags"></i>
                            <span data-url="/Admin/Resource" data-id="2">资源管理</span>
                        </div>
                        <div class="windows-tile windows-one">
                            <i class="fa fa-pencil-square-o"></i>
                            <span>笔记管理</span>
                        </div>
                        <div class="windows-tile windows-two">
                            <i class="fa fa-hourglass-half"></i>
                            <span data-url="/Admin/TimeLine" data-id="3">时光轴管理</span>
                        </div>

                        <div style="clear:both;"></div>
                    </div>
                </div>
            </fieldset>

        </div>
    </div>

</body>
