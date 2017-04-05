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

<fieldset id="articleList" class="layui-elem-field layui-field-title sys-list-field">
    <legend id="articleBoxTitle">告警列表</legend>
      <div id="articleIndexTop">
                     <form class="layui-form layui-form-pane" action="">
                         <div class="layui-form-item" style="margin:0;margin-top:5px;">
                             <div class="layui-inline">
                                 <label class="layui-form-label">账号</label>
                                 <div class="layui-input-inline">
                                     <input type="text" name="keywords" autocomplete="off" class="layui-input">
                                 </div>
                                 <div class="layui-input-inline" style="width:auto">
                                     <button class="layui-btn" lay-submit lay-filter="formSearch">查询</button>
                                 </div>
                             </div>
                         </div>
                     </form>
                 </div>
    <div class="layui-field-box">
        <div id="articleContent" class="">
            <!--内容区域 ajax获取-->

        </div>
    </div>
</fieldset>
<div id="pageNav"></div>

<script type="text/javascript" src="${pageContext.request.contextPath}/js/monitor/alarm/alarm.js"></script>
