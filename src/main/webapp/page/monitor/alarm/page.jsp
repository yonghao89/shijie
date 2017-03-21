<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<style>
    /*#articlePageNav {
        text-align: left;
        position: absolute;
        bottom: 0;
    }*/

    .layui-btn-small {
        padding: 0 15px;
    }

    .layui-form-checkbox {
        margin: 0;
    }

    tr td:not(:nth-child(0)),
    tr th:not(:nth-child(0)) {
        text-align: center;
    }
</style>


<fieldset id="articleConsole" class="layui-elem-field layui-field-title" style="display:none;">
    <legend>控制台</legend>
    <div class="layui-field-box">
        <div id="articleIndexTop">
            <form class="layui-form layui-form-pane" action="">
                <div class="layui-form-item" style="margin:0;margin-top:15px;">
                    <div class="layui-inline">
                        <label class="layui-form-label">分类</label>
                        <div class="layui-input-inline">
                            <select name="city">
                                <option value=""></option>
                                <option value="0">文章太少，此功能暂不提供</option>
                            </select>
                        </div>
                        <label class="layui-form-label">关键词</label>
                        <div class="layui-input-inline">
                            <input type="text" name="keywords" autocomplete="off" class="layui-input">
                        </div>
                        <div class="layui-input-inline" style="width:auto">
                            <button class="layui-btn" lay-submit lay-filter="formSearch">搜索</button>
                        </div>
                    </div>
                    <div class="layui-inline">
                        <div class="layui-input-inline" style="width:auto">
                            <a id="addArticle" class="layui-btn layui-btn-normal">发表文章</a>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
</fieldset>

<fieldset id="articleList" class="layui-elem-field layui-field-title sys-list-field">
    <legend id="articleBoxTitle">告警列表</legend>
    <div class="layui-field-box">
        <div id="articleContent" class="">
            <!--内容区域 ajax获取-->

        </div>
    </div>
</fieldset>
<script>
    alert(rootPath)
</script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/monitor/alarm/alarm.js"></script>
