<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>

                               <div style="font-size:50px;color:red"> 视界开源 拥抱开源的时代吧！</div>
                                <span style="padding-left:1em;"></span>

                            <fieldset class="layui-elem-field layui-field-title">
                                <legend>所用技术</legend>

                                <section class="panel log">
                                                   <div class="panel-heading">

                                                       <a href="javascript:;" class="pull-right panel-toggle"/></a>
                                                   </div>
                                                   <div class="panel-body">
                                                       <h2>后端框架:SSM</h2>
                                                       <ul>
                                                           <li>spring</li>
                                                           <li>springmvc</li>
                                                           <li>mybatis</li>
                                                       </ul>
                                                       <h2>实现功能</h2>
                                                       <ul>
                                                           <li>修正弹出窗口宽高设置过大，超出屏幕无法关闭错误</li>
                                                           <li>添中菜单卡右键弹出菜单</li>
                                                           <li>添加菜单卡可以按下左键拖动</li>
                                                           <li>添加切换菜单卡的时候是否刷新参数，在菜单模板参数上加上isFresh:true即可在点击右左边菜单时刷新页面</li>
                                                           <li>添加表单验证出错时跳转到出错的TAB页</li>
                                                           <li>修正提正表单成功后不关闭窗口BUG</li>

                                                       </ul>

                                                       <h2>修复bug</h2>
                                                       <ul>
                                                           <li>修正火狐下表格无边框的BUG</li>
                                                           <li>修正打开菜单过来无滚动BUG</li>
                                                           <li>ajax返回自己定义方法complete添加$参数,实际为funtion(ret, options, $)</li>
                                                       </ul>

                                                       <h2>模板框架:Jquery layUI</h2>
                                                       <p>一款为了省时间而打造的后台管理模板，封装了常用的JS方法，使得你可以写更少甚至不写js代码就可以完成整个后台的搭建。模板使用了layui，模块化开发，本套模板是按着本人这些年来的习惯编写，也为方便以后搭建项目的便捷而编写，当然，本人的能力是有限的，模板中难免会存在体验不好、BUG或是错误，欢迎朋友们提出，或是同为这份开源免费的模板做份做贡献。</p>

                                                       <h2>模板特点</h2>
                                                       <ul>
                                                           <li>模块化开发</li>
                                                           <li>封装了AJAX</li>
                                                           <li>封装了弹出窗口</li>
                                                           <li>封装了表单验证（异步验证没有，想不好到的方法，有好方法的同学请告诉下）</li>
                                                           <li>封装了列表（使用了layui的模板引擎）</li>
                                                       </ul>
                                                       <p>&nbsp;</p>
                                                       <p>更多帮助文档请移步到<a href="http://www.github.com/tengxing/yizhi" target="_blank" class="layui-btn layui-btn-small">github</a></p>
                                                   </div>
                                               </section>


                            </fieldset>
