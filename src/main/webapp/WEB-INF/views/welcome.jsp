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
	      <li><a href="javascript: void(0)" onclick="showlog()" class="am-text-success"   data-am-modal="{target: '#doc-modal-1', closeViaDimmer: 0, width: 800, height: 525}" ><span class="am-icon-btn am-icon-file-text"></span><br/>创建案例</a></li>
	      <li><a href="#" class="am-text-warning"><span class="am-icon-btn am-icon-briefcase"></span><br/>案例管理</a></li>
	      <li><a href="#" class="am-text-danger"><span class="am-icon-btn am-icon-recycle"></span><br/>数据管理</a></li>
	      <li><a href="#" class="am-text-secondary"><span class="am-icon-btn am-icon-user-md"></span><br/>其他模块</a></li>
	    </ul>
	    
	    <div class="am-modal am-modal-no-btn" tabindex="-1" id="doc-modal-1">
		  <div class="am-modal-dialog">
		    <div class="am-modal-hd"> 运行日志
		      <a href="javascript: void(0)" class="am-close am-close-spin" data-am-modal-close>&times;</a>
		    </div>
		    <div  class="am-modal-bd">
		      <div id="log" class="am-u-sm-12 am-u-sm-centered">
		        <pre id="logs" class="am-pre-scrollable">
		        		
		        </pre>
		      </div>
		    </div>
		  </div>
		</div>
	
		<div  class="am-avg-sm-1 am-avg-md-4 am-margin am-padding am-text-center admin-content-list"> 
				<table id="table_id"     class=" am-table am-table-striped am-table-hover table-main am-datepicker-date">
				    <thead>
				        <tr>
				            <th>模拟区域</th>
				            <th>xx1</th>
				            <th>xx2</th>
				            <th>xx3</th>
				        </tr>
				    </thead>
				    
				    <tbody>
            <tr>
                <td>Tiger Nixon</td>
                <td>System Architect</td>
                <td><input type="text" class="am-form-field " placeholder="日历组件" data-am-datepicker readonly/></td>
                <td>61</td>
            </tr>
            <tr>
                <td>Garrett Winters</td>
                <td>Accountant</td>
                <td>2011/07/25</td>
                <td><input type="text" class="am-form-field  " placeholder="日历组件" data-am-datepicker readonly/></td>
            </tr>
            </tbody>
				</table>
		</div>
	
		
		
  </div>
  <!-- content end -->
</div>
</form>
<script type="text/javascript">

function init(){

	var status = "${stop}";
	console.log(status);
	if(status == 0){
		console.log("begin to get logs stop ==0");
		getlog();
	}
}

function showlog(){
	console.log("suimit");
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
