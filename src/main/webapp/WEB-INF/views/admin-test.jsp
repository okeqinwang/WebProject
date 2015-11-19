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
				            <th>模拟区域</th>
				            <th>xx1</th>
				            <th>xx2</th>
				            <th>xx3</th>
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
     
     </div>
     
<!-- content end -->



</div>
</form>
</div>

<script type="text/javascript">
function init(){
	init_tab1();
	init_tab2();
	var para ="${allpara}";
	console.log(para);
	$("#params").append(para);
};

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



function init_tab1(){
	  $('#table_tab1').DataTable({
	    	 "paging":   false,
	    	  "ordering": false,
	    	  "info":     false,
	    	  "searching":false,
	    	  "ajax": {
	              "url": "assets/data/data.json",
	              "dataType": "json"
	          },
	    	  "columnDefs":[
	    	  {
	              "targets": 1,
	              "render": function(data, type, row) {
	            	  return  "<input type='file' id='"+row[0]+"1'/>";
	              }
	    	  },
	    	  {
	              "targets": 2,
	              "render": function(data, type, row) {
	            	  return  "<input type='file' id='"+row[0]+"2'/>";
	              }
	    	  },
	     	  {
	              "targets": 3,
	              "render": function(data, type, row) {
	            	  return  "<input type='file' id='"+row[0]+"3'/>";
	              }
	    	  }
	    	  
	    	  ]
	    });
}


function init_tab2(){
	  $('#table_tab2').DataTable({
	    	 "paging":   false,
	    	  "ordering": false,
	    	  "info":     false,
	    	  "searching":false,
	    	  "stateSave":true,
	    	  "autoWidgh":true,
	    	  "ajax": {
	              "url": "assets/data/data.json",
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
	            	  return " <input type='text' class='datepicker am-form-field'  readonly id='"+row[0]+"1'/>";
	              }
	    	  },
	     	  {
	              "targets": 3,
	              "render": function(data, type, row) {
	            	  return " <input type='text' class='datepicker am-form-field'  readonly id='"+row[0]+"3'/>";
	              }
	    	  }
	    	  ]
	    	 
	    });
}

</script>
</body>
</html>
