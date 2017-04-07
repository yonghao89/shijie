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
        								<td width="33.3%"><canvas id="main_one" style="height: 240px;"></canvas></td>
        								<td width="33.3%"><div id="main_two" style="height: 240px;"></div></td>
        								<td width="33.3%"><div id="main_three"
        										style="height: 240px;"></div></td>
        							</tr>
        						</table>
        					</div>
        				</section>
        			</div>
        			<script>
        			    one = $("#main_one");
        			    var chart_one = echarts.init($(one));

        			    option = {
                            tooltip : {
                                formatter: "{a} <br/>{b} : {c}%"
                            },
                            toolbox: {
                                feature: {
                                    restore: {},
                                    saveAsImage: {}
                                }
                            },
                            series: [
                                {
                                    name: '业务指标',
                                    type: 'gauge',
                                    detail: {formatter:'{value}%'},
                                    data: [{value: 50, name: '完成率'}]
                                }
                            ]
                        };

                        setInterval(function () {
                            option.series[0].data[0].value = (Math.random() * 100).toFixed(2) - 0;
                            myChart.setOption(option, true);
                        },2000);

        			    chart_one.setOption(option);


        			</script>
        			<div class="col-md-6">
                            				<section class="panel panel-info portlet-item">
                            					<header class="panel-heading">
                            						<i class="fa fa-th-list"></i> 服务器信息
                            					</header>
                            					<div class="panel-body" style="padding: 0px"
                            						data-url="/monitor/systemInfo.shtml"></div>
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