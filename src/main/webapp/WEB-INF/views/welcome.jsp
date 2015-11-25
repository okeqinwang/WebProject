<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>



  <link rel="stylesheet" href="assets/css/amazeui.min.css"/>
  <link rel="stylesheet" href="assets/css/admin.css">
  <link rel="stylesheet" type="text/css" href="assets/css/jquery.dataTables.css">
  <link rel="stylesheet" type="text/css" href="assets/css/amazeui.datetimepicker.css">



<body >

<form action="checkStatus" method="get" id="myform">
<div class="am-cf admin-main">
   <!-- content start -->
  <div class="admin-content">
        <div class="am-cf am-padding">
              <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">欢迎 ${username} 来到这个页面</strong> </div>
        </div>
        
         <ul class="am-avg-sm-1 am-avg-md-4 am-margin am-padding am-text-center admin-content-list ">
	       <li><a href="#"  onclick="checkStatus()" class="am-text-warning"><span class="am-icon-btn am-icon-briefcase"></span><br/>创建案例</a></li>
	      <li><a href="#" class="am-text-warning"><span class="am-icon-btn am-icon-briefcase"></span><br/>案例管理</a></li>
	      <li><a href="#" class="am-text-danger"><span class="am-icon-btn am-icon-recycle"></span><br/>数据管理</a></li>
	      <li><a href="#" class="am-text-secondary"><span class="am-icon-btn am-icon-user-md"></span><br/>其他模块</a></li>
	    </ul>
	    
	 
		
		
  </div>
  <!-- content end -->
</div>
</form>


<script type="text/javascript">



function init(){

	console.log("init welcome page");
	//add();

}

function checkStatus(){
	//console.log("submit");
	alert("submit");
	$("#myform").submit();
}

</script>

<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/amazeui.min.js"></script>
<script src="assets/js/app.js"></script>
<script src="assets/js/jquery.dataTables.js"></script>
<script src="assets/js/amazeui.datetimepicker.js"></script>
</body>
</html>
