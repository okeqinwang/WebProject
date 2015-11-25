<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

  <link rel="icon" type="image/png" href="assets/i/favicon.png">
  <link rel="apple-touch-icon-precomposed" href="assets/i/app-icon72x72@2x.png">
  <meta name="apple-mobile-web-app-title" content="Amaze UI" />
  <link rel="stylesheet" href="assets/css/amazeui.min.css"/>
  <link rel="stylesheet" href="assets/css/admin.css">
  <link rel="stylesheet" type="text/css" href="assets/css/jquery.dataTables.css">
 
<body onload="init()">


<form action="checkStatus" method="get" id="myform">
<div class="am-cf admin-main">
  <!-- content start -->
        <div class="am-cf am-padding">
              <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">欢迎 ${username} 来到这个页面</strong> </div>
        </div>
        
         <ul class="am-avg-sm-1 am-avg-md-4 am-margin am-padding am-text-center admin-content-list ">
	       <li><a href="#"  onclick="checkStatus()" class="am-text-warning"><span class="am-icon-btn am-icon-briefcase"></span><br/>创建案例</a></li>
	      <li><a href="#" class="am-text-warning"><span class="am-icon-btn am-icon-briefcase"></span><br/>案例管理</a></li>
	      <li><a href="#" class="am-text-danger"><span class="am-icon-btn am-icon-recycle"></span><br/>数据管理</a></li>
	      <li><a href="#" class="am-text-secondary"><span class="am-icon-btn am-icon-user-md"></span><br/>其他模块</a></li>
	    </ul>
    
     	<div class="am-g am-margin-top-sm">
     		<div class="am-u-md-12">
     		<div class="am-g error-log">
		      <div id="log" class="am-u-sm-12 am-u-sm-centered">
		        <pre id="logs" class="am-pre-scrollable">
		        
		        </pre>
		        </div>
		      </div>
     		</div>
     	</div>
</div>
<!-- content end -->
</form>


<script type="text/javascript">
function init(){
	console.log("init show log");
	getlog();

};

function checkStatus(){
	//console.log("submit");
	alert("submit");
	$("#myform").submit();
}

</script>
<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/amazeui.min.js"></script>
<script src="assets/js/app.js"></script>

</body>
</html>
