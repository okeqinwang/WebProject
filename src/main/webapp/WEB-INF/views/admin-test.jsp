<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<body>


<div class="am-cf admin-main">
  <form  id="admin-test-form"  action="admin-test" method="post">
<!-- content start -->
<div class="admin-content">

  <div class="am-cf am-padding">
    <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">运行测试</strong> </div>
  </div>

  <div class="am-tabs am-margin" data-am-tabs>
    <ul class="am-tabs-nav am-nav am-nav-tabs">
      <li class='am-active'><a href="#tab1">气象输入</a></li>
      <li><a href="#tab2">时间</a></li>
      <li  ><a href="#tab3">模型运行</a></li>
      <li><a href="#tab4">QA/QC</a></li>
      <li><a href="#tab5">结果输出</a></li>
    </ul>
    <div class="am-tabs-bd">
      <div class="am-tab-panel am-fade am-in am-active" id="tab1">
        <div class="am-g am-margin-top">
          		<table id="table_tab1"     class=" am-table am-table-striped am-table-hover table-main">
				    <thead>
				        <tr>
				            <th>areaid</th>
				            <th>grid_cro_2d</th>
				            <th>grid_cro_3d</th>
				            <th>met_cro_2d</th>
				            <th>met_cro_3d</th>
				             <th>met_dot_3d</th>
				        </tr>
				    </thead>
				</table>
       
         </div>
       </div>
      
     <div class="am-tab-panel am-fade am-in " id ="tab2">
     	<div class="am-g am-margin-top-sm">
     		     <table id="table_tab2"     class=" am-table am-table-striped am-table-hover table-main">
				    <thead>
				        <tr>
				            <th>时间pp</th>
				            <th>xx1</th>
				            <th>xx2</th>
				            <th>xx3</th>
				            <th>xx5</th>
				         
				        </tr>
				    </thead>
				     
				</table>
     	</div>
     </div>
     
    
     
      <div class="am-tab-panel am-fade am-in " id ="tab3">
    
     	<div class="am-g am-margin-top-sm">
     		<div class="am-u-md-6">
     		
     			<div class="am-g error-log">
			      <div class="am-u-sm-12 am-u-sm-centered">
			      		<pre id="params" class="am-pre-scrollable">
		        	
		        		
		               </pre>
			        </div>
			      </div>
     		</div>
     		
     		<div class="am-u-md-6">
     		<div class="am-g error-log">
		      <div id="log" class="am-u-sm-12 am-u-sm-centered">
		        <pre id="logs" class="am-pre-scrollable">
		        		
		        </pre>
		        </div>
		      </div>
     		
     		</div>
     	</div>
     	
     	<hr/>
       <button type="button" onclick="commitTask()"   class="am-btn am-btn-primary am-btn-xs">运行</button>
       <button type="button"  onclick="getlog()" class="am-btn am-btn-primary am-btn-xs">获取日志</button>
     </div>

    
     <div class="am-tab-panel am-fade am-in " id ="tab4">
     	<div class="am-g am-margin-top-sm">
     		tab4
     	</div>
     </div>
    
     <div class="am-tab-panel am-fade am-in " id ="tab5">
     	<div class="am-g am-margin-top-sm">
     		tab5
     	</div>
     </div>
     
     
     </div>
     
       <div class="am-u-sm-6am-u-sm-push-6"> 
              <button type="button" onclick="godone()"  class="am-btn am-btn-primary">下一步</button>
     </div>
     
     </div>
     
<!-- content end -->



</div>
</form>
</div>

<script type="text/javascript">


function godone(){
	
	  var projects = [];
	  $("#table_tab2 tr").each(function() {
			var t = $(this).children('td:first').text();
			projects.push(t);
		});
	  projects.shift();
	  console.log(projects);
	
	var timedata = [];
	  $(".timepara").each(function(){
		  timedata.push($(this).val());
	  });
	console.log(timedata);
	
	 var data = {"timepara":timedata.join(","),"projects":projects.join(",")};
	  $.ajax({
		  "url":"admin-test",
		  "method":"post",
		  "data":data,
		  "success":function(data,status){
			  if(status == "success"){
				  window.location.href="admin-done";
			  }
		  }
		  
	  });
	 // $.post('admin-para',{"listpara":data.join(","),"projects":projects.join(",")});
	  console.log("post 完成");
	
	
}

function init(){
	init_tab1();
	init_tab2();
};



function init_tab1(){
	  $('#table_tab1').DataTable({
		   "columns": [
	     	   	        { "data": "area_id" },
	     	   	        {"data": "grid_cro_2d" },
	     	   	        { "data": "grid_tro_3d" },
	     	   	        { "data": "met_cro_2d" },
	     	   	        { "data": "met_cro_3d" },
	     	   	        { "data": "met_dot_3d" }
	     	   	    ],
	    	 "paging":   false,
	    	  "ordering": false,
	    	  "info":     false,
	    	  "searching":false,
	    	  "ajax": {
	              "url": "getFilePathData",
	              "dataType": "json"
	          },
	    	  "columnDefs":[
	    	  {
	              "targets": 1,
	              "render": function(data, type, row) {
	            	  return  "<input type='file' id='"+row.area_id+"1'/>";
	              }
	    	  },
	    	  {
	              "targets": 2,
	              "render": function(data, type, row) {
	            	  return  "<input type='file' id='"+row.area_id+"2'/>";
	              }
	    	  },
	     	  {
	              "targets": 3,
	              "render": function(data, type, row) {
	            	  return  "<input type='file' id='"+row.area_id+"3'/>";
	              }
	    	  },
	    	  {
	              "targets": 4,
	              "render": function(data, type, row) {
	            	  return  "<input type='file' id='"+row.area_id+"3'/>";
	              }
	    	  },
	    	  {
	              "targets": 5,
	              "render": function(data, type, row) {
	            	  return  "<input type='file' id='"+row.area_id+"3'/>";
	              }
	    	  }
	    
	    
	    	  
	    	  ]
	    });
}
function init_tab2(){
	  $('#table_tab2').DataTable({
		   "columns": [
	     	   	        { "data": "area_id" },
	     	   	        {"data": "st_date" },
	     	   	        { "data": "st_time" },
	     	   	        { "data": "episode" },
	     	   	        { "data": "ed_date" }
	     	   	    ],
	    	 "paging":   false,
	    	  "ordering": false,
	    	  "info":     false,
	    	  "searching":false,
	    	  "stateSave":true,
	    	  "autoWidgh":true,
	    	  "ajax": {
	              "url": "getTimeData",
	              "dataType": "json"
	          },
	          "initComplete":function(){
	        	  //$.datepicker.formatDate( 'yyyy-mm-dd', 'oo', '' );
	    		  $('.datepicker').datepicker({format: 'yyyy-mm-dd'});
	    	  },
	    	  "columnDefs":[
	    	  {
	              "targets": 1,
	              "render": function(data, type, row) {
	            	  //console.log(data);
	            	  return " <input type='text' class='timepara datepicker am-form-field'  readonly value="+data+" id='"+row.area_id+"1'/>";
	              }
	    	  },
	    	  {
	              "targets": 2,
	              "render": function(data, type, row) {
	            	  //console.log(data);
	            	  return " <input type='text'  class='timepara am-form-field'  value="+ data +"  id='"+row.area_id+"2'/>";
	              }
	    	  },
	    	  {
	              "targets": 3,
	              "render": function(data, type, row) {
	            	  return " <input type='text'   class='timepara  am-form-field'   value="+ data +"  id='"+row.area_id+"3'/>";
	              }
	    	  },
	     	  {
	              "targets": 4,
	              "render": function(data, type, row) {
	            	  return " <input type='text' class='timepara datepicker am-form-field'   readonly value="+data+" id='"+row.area_id+"4'/>";
	              }
	    	  }
	    	  ]
	    	 
	    });
}

function commitTask(){
	console.log("commit");
	var data={};
	$.ajax({
		url:"commitTask",
		type:"post",
		data:data,
		success:function (data,status){
			if(status== "success"){
				alert(data.result);
			}
		},
		error:function(){
			console.log("bad request");
		}
	});
};

</script>
</body>
</html>
