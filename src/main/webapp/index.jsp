<!DOCTYPE html>
<html>
<head>
	<title>index</title>
	<meta http-equiv="refresh" content="0.5; url=index" />
</head>
<body>
<script type="text/javascript">
    var canvas = document.getElementById('canvas-banner');
    canvas.width = window.document.body.clientWidth;
    canvas.height = window.innerHeight * 2 / 7;
    window.onload = function () {
        var script = document.createElement('script');
        script.src = 'http://www.lyblogs.cn/Scripts/homeindex.js';
        document.getElementsByTagName('body')[0].appendChild(script);
    }
</script>
<canvas id="canvas-banner" style="background: #393D49"></canvas>
</body>
</html>