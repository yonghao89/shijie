$.ajax({
    url:rootPath+"/monitor/realTime/info",
    type:'post',
    success:function(res){
        if(res.success){
            data = res.obj;
            var html = '';
            html += '<table style="" class="layui-table">';
            html += '<colgroup><col width="45"><col width="45"></colgroup>';
            html += '<thead><tr><th>预设cpu使用率</th><th>cpu使用率</th></tr></thead>';
            html += '<tbody>';

            html += "<tr><td>ip地址</td><td>"+data.hostIp+"</td></tr>";
            html += "<tr><td>主机名</td><td>"+data.hostName+"</td></tr>";
            html += "<tr><td>操作系统</td><td>"+data.osName+"</td></tr>";
            html += "<tr><td>操作系统版本</td><td>"+data.osVersion+"</td></tr>";
            html += "<tr><td>Java版本</td><td>"+data.javaVersion+"</td></tr>";
            html += "<tr><td>Java供应商</td><td>"+data.Url+"</td></tr>";
            html += "<tr><td>JavaHome</td><td>"+data.javaHome+"</td></tr>";

            html += '</tbody>';
            html += '</table>';

            $('#info').html(html);
        }
    }
});



