<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

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
         <link rel="stylesheet" href="${pageContext.request.contextPath}/static/layui/css/layui.css"/>
    <style type="text/css">
        /*全局样式*/
body {
    color: #444;
}

.layui-header {
    text-align: center;
}

.sys-title {
    display: inline-block;
    line-height: 60px;
    color: #fff;
    text-shadow: 0 0 8px #1E9FFF,0 0 8px #009688;
    font-size: 26px;
    letter-spacing: 6px;
    cursor: pointer;
}

.layui-header > img {
    height: 100%;
    width: auto;
    margin-left: 70px;
    float: left;
}

.layui-header > .layui-nav {
    position: absolute;
    right: 0;
    top: 0;
    background: none;
}

ul.layui-nav-tree .fa {
    padding-right: 10px;
}

ul.layui-nav-tree .layui-nav-child dd a {
    padding-left: 43px;
}

.layui-tab-title li:first-child i {
    display: none;
}


.layui-tab-item {
    text-align: center;
}

.ht-box {
    display: inline-block;
    margin: 15px;
    padding: 15px 0;
    color: #fff;
    width: 12%;
}

.ht-box p:first-child {
    font-size: 40px;
}

.ht-box p:nth-child(2) {
}



/*表单*/
.form-main {
    max-width: 900px;
    min-width: 900px;
    text-align: left;
    margin: 0 auto;
    margin-top: 10px;
}

.img-cover {
    width: 100%;
    height: auto;
    border: 1px solid #ddd;
}

/*弹出框*/
body .layer-css {
    box-shadow: 0 0 8px #fff;
}

body .layer-css .layui-layer-title {
    text-align: center;
    background: #009688;
    color: #fff;
}

body .layer-css .layui-layer-content {
    padding: 20px 50px 5px 0;
}

body .layer-css-reply {
    box-shadow: 0 0 8px #fff;
}

body .layer-css-reply .layui-layer-title {
    text-align: center;
    background: #009688;
    color: #fff;
}

body .layer-css-reply .layui-layer-content {
    padding: 20px;
}

/*快捷菜单 Win10风格*/
.short-menu {
    display: inline-block;
    padding: 10px 0;
    background: rgba(0, 0, 0, 0.70);
    position: fixed;
    /*left: 100px;*/
    /*right: 100px;*/
    z-index: 999;
    text-align: center;
    /*height:50vh;*/
    width: 100%;
    padding: 0 15%;
    -moz-box-sizing: border-box;
    -webkit-box-sizing: border-box;
    box-sizing: border-box;
}

.windows-tile {
    /*display: inline-block;*/
    float: left;
    margin: 2px;
    text-align: center;
    position: relative;
    background: #009688;
    color: #fff;
}

.windows-tile:hover {
    -moz-box-shadow: inset 0 0 0px 2px #ddd;
    -webkit-box-shadow: inset 0 0 0px 2px #ddd;
    box-shadow: inset 0 0 0px 2px #ddd;
}

.windows-tile i {
    font-size: 40px;
}

.windows-tile span {
    font-size: 12px;
    position: absolute;
    bottom: 5px;
    left: 10px;
    line-height: normal;
}

.windows-one {
    width: 100px;
    height: 100px;
    line-height: 100px;
}

.windows-two {
    width: 204px;
    height: 100px;
    line-height: 100px;
}
    </style>
</head>

<body>
    <!-- 布局容器 -->
    <div class="layui-layout layui-layout-admin">
        <div class="layui-header">
            <img src="./不落阁后台管理系统_files/Logo_100_透明.png">
            <span class="sys-title">视界开源监测管理系统</span>
            <ul class="layui-nav" lay-filter="">
                <li class="layui-nav-item"><a target="_blank" href="http://www.lyblogs.cn/">前台入口</a></li>
                <li class="layui-nav-item">
                    <a href="javascript:;">游客专用账号<span class="layui-nav-more"></span></a>
                    <dl class="layui-nav-child">
                        <!-- 二级菜单 -->
                        <dd><a href="javascript:;">个人信息</a></dd>
                        <dd><a href="javascript:;">修改密码</a></dd>
                        <dd><a href="http://www.lyblogs.cn/Admin/Home/LoginOut">退出登陆</a></dd>
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


    <script src = "${pageContext.request.contextPath}/static/layui/layui.js"></script>
    <script type="text/javascript">
    layui.use(['element', 'layer', 'util'], function () {
    alert()
    var $ = layui.jquery;
    var element = layui.element();
    var layer = layui.layer;
    var util = layui.util;

    //加载弹出框
    /*var index = layer.load(1);
    layer.close(index);*/

    $("#totalCount").html(1);
        $("#articleCount").html(2);
        $("#todayRegist").html(2);
        $("#todayLogin").html(2);
        $("#resourceCount").html(2);
    /*$.post("/api/admin/GetSiteStatistics", {}, function (data) {
        layer.close(index);
        $("#totalCount").html(data.UserTotalCount);
        $("#articleCount").html(data.ArticleTotalCount);
        $("#todayRegist").html(data.TodayRegistCount);
        $("#todayLogin").html(data.TodayLoginCount);
        $("#resourceCount").html(data.ResourceTotalCount);
    });*/

    $('span.sys-title').click(function (event) {
        event.stopPropagation();    //阻止事件冒泡
        $('div.short-menu').slideToggle('fast');
    });
    $('div.short-menu').click(function (event) {
        event.stopPropagation();    //阻止事件冒泡
    });
    $(document).click(function () {
        $('div.short-menu').slideUp('fast');
    });

    //监听快捷菜单点击
    /*$('.short-menu .layui-field-box>div>div').click(function () {
        var elem = this;
        var url = $(elem).children('span').attr('data-url');
        var id = $(elem).children('span').attr('data-id');
        var title = $(elem).children('span').text();

        if (url == undefined) return;

        var tabTitleDiv = $('.layui-tab[lay-filter=\'tab\']').children('.layui-tab-title');
        var exist = tabTitleDiv.find('li[lay-id=' + id + ']');
        if (exist.length > 0) {
            //切换到指定索引的卡片
            element.tabChange('tab', id);
        } else {
            var index = layer.load(1);
            $.ajax({
                type: 'post',
                url: url,
                success: function (data) {
                    layer.close(index);
                    element.tabAdd('tab', { title: title, content: data, id: id });
                    //切换到指定索引的卡片
                    element.tabChange('tab', id);
                },
                error: function (e) {
                    var message = e.responseText;
                    layer.close(index);
                    layer.msg(message, { icon: 2 });
                }
            });
        }
        $('div.short-menu').slideUp('fast');
    });*/
    layer.alert('目前已做：<br/>文章管理、资源管理、时光轴管理、文章回收站<br/>网站公告、更新日志、留言管理<br/><br/>点击顶部【部落格后台管理系统】有惊喜', {
        skin: 'layui-layer-molv'
        , closeBtn: 1
        , anim: 3 //动画类型
    });

    //监听左侧导航点击
    element.on('nav(leftnav)', function (elem) {

        var url = $(elem).children('a').attr('data-url');
        var id = $(elem).children('a').attr('data-id');
        var title = $(elem).children('a').text();
        if (title == "首页") {
            element.tabChange('tab', 0);
            return;
        }
        if (url == undefined) return;
        var tabTitleDiv = $('.layui-tab[lay-filter=\'tab\']').children('.layui-tab-title');
        var exist = tabTitleDiv.find('li[lay-id=' + id + ']');
        if (exist.length > 0) {
            //切换到指定索引的卡片
            element.tabChange('tab', id);
        } else {
            element.tabAdd('tab', { title: title, content: load(url), id: id });
            element.tabChange('tab', id);
            /*var index = layer.load(1);
            layer.close(index);*/

        }
    });
    //
    function load(url){
        var data;
        $.ajax({
                type: 'post',
                url: url,
                success: function (data) {
                       data = data;
                },
                error: function (e) {
                    data = e.responseText;
                }
            });

        return data;
    }

    //左侧导航展开与收缩
    var ishide = false;
    util.fixbar({
        bar1: '&#xe603',
        bgcolor: '#393D49',
        click: function (type) {
            if (type === 'bar1') {
                if (!ishide) {
                    $('.layui-side').animate({ left: '-200px' });
                    $('.layui-body').animate({ left: '0px' });
                    $('.layui-footer').animate({ left: '0px' });
                    var tishi = layer.msg('鼠标靠左自动显示菜单', { time: 1500 });
                    layer.style(tishi, {
                        top: 'auto',
                        bottom: '50px'
                    });
                    ishide = true;
                } else {
                    $('.layui-side').animate({ left: '0px' });
                    $('.layui-body').animate({ left: '200px' });
                    $('.layui-footer').animate({ left: '200px' });
                    ishide = false;
                }
            }
        }
    });

    $(document).mousemove(function (e) {
        if (e.pageX == 0 && ishide) {
            $('.layui-side').animate({ left: '0px' });
            $('.layui-body').animate({ left: '200px' });
            $('.layui-footer').animate({ left: '200px' });
            ishide = false;
        }
    });
});

Date.prototype.Format = function (formatStr) {
    var str = formatStr;
    var Week = ['日', '一', '二', '三', '四', '五', '六'];

    str = str.replace(/yyyy|YYYY/, this.getFullYear());
    str = str.replace(/yy|YY/, (this.getYear() % 100) > 9 ? (this.getYear() % 100).toString() : '0' + (this.getYear() % 100));
    str = str.replace(/MM/, (this.getMonth() + 1) > 9 ? (this.getMonth() + 1).toString() : '0' + (this.getMonth() + 1));
    str = str.replace(/M/g, (this.getMonth() + 1));

    str = str.replace(/w|W/g, Week[this.getDay()]);

    str = str.replace(/dd|DD/, this.getDate() > 9 ? this.getDate().toString() : '0' + this.getDate());
    str = str.replace(/d|D/g, this.getDate());

    str = str.replace(/hh|HH/, this.getHours() > 9 ? this.getHours().toString() : '0' + this.getHours());
    str = str.replace(/h|H/g, this.getHours());
    str = str.replace(/mm/, this.getMinutes() > 9 ? this.getMinutes().toString() : '0' + this.getMinutes());
    str = str.replace(/m/g, this.getMinutes());

    str = str.replace(/ss|SS/, this.getSeconds() > 9 ? this.getSeconds().toString() : '0' + this.getSeconds());
    str = str.replace(/s|S/g, this.getSeconds());

    return str;
}
    </script>
</body>
</html>

