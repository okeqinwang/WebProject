<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<body>


<div class="am-cf admin-main">
  <!-- content start -->
  <div class="admin-content">
    <div class="am-cf am-padding">
      <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">运行日志</strong> / <small>Error Log</small></div>
    </div>
    <hr/>
     	<div class="am-g am-margin-top-sm">
     		<div class="am-u-md-12">
     		<div class="am-g error-log">
		      <div id="log" class="am-u-sm-12 am-u-sm-centered">
		        <pre id="logs" class="am-pre-scrollable">
		        log
		        </pre>
		        </div>
		      </div>
     		</div>
     	</div>
</div>
<!-- content end -->
</div>

<script type="text/javascript">
function init(){
	

};

function getlog(){
	var stop = "0";
	var lastTimeFileSize ="0";
	var updater = {
				poll : function() {
					$.ajax({
						url : "getLog",
						type : "POST",
						//contentType: "application/json; charset=utf-8",
						data: {"lastTimeFileSize": lastTimeFileSize},
						dataType : "json",
						success : updater.onSuccess,
						error : updater.onError
					});
				},
				check: function (){
					console.log("check");
					//console.log("stop",stop);
					if(stop == "0"){
						console.log("go on  stop == 0..");
					    updater.poll();
					}
				},
				onSuccess : function(data, dataStatus) {
					try {
					stop = data.stop;
					lastTimeFileSize =data.lastTimeFileSize;
					$("#logs").append(data.data);
					} catch (e) {
						//console.log(e);
						//updater.onError();
						//return;
					}
					interval = setTimeout(updater.check,5000);
				},
				onError : function() {
					console.log("获取日志失败");
				}
			};
	    updater.poll();
	}
</script>
</body>
</html>
