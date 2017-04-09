<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<fieldset id="articleList" class="layui-elem-field layui-field-title sys-list-field">
    <section>
        			<!-- /.span -->
        			<div class="col-md-12" style="margin-top: 10px; height: 330px">
        				<section class="panel panel-primary portlet-item">
        					<header class="panel-heading">
        						<i class="fa fa-rss-square"></i> 实时监控
        					</header>

        					<div class="panel-body">
        						<table style="width: 100%;">
        							<tr>
        								<td width="33.3%"><div id="main_one" style="height: 240px;"></div></td>
        								<td width="33.3%"><div id="main_two" style="height: 240px;"></div></td>
        								<td width="33.3%"><div id="main_three"
        										style="height: 240px;"></div></td>
        							</tr>
        						</table>
        					</div>
        				</section>
        			</div>
        			<div class="col-md-6">
                            				<section class="panel panel-info portlet-item">
                            					<header class="panel-heading">
                            						<i class="fa fa-th-list"></i> 服务器信息
                            					</header>
                            					<div class="panel-body" style="padding: 0px">
                            					    <div id="info"></div>

                            					</div>
                            				</section>
                            			</div>
                            			<div class="col-md-6">
                            				<section class="panel panel-danger portlet-item">
                            					<header class="panel-heading">
                            						<i class="fa fa-fire"></i> 实时监控
                            					</header>

                            					<div class="panel-body">
                            						<div id="main" style="height: 370px;"></div>
                            					</div>
                            				</section>
                            			</div>
    </section>
</fieldset>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/monitor/realTime/realTime.js">
</script>