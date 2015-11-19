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
      <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">运行参数</strong> </div>
    </div>
    <hr/>
    <div class="am-g">
   <form id="myform" class="am-form am-form-horizontal"  action="admin-para" method="post">
    
    		<div  class="am-avg-sm-1 am-avg-md-4 am-margin am-padding am-text-center admin-content-list"> 
				<table id="table_ids"     class=" am-table am-table-striped am-table-hover table-main">
				    <thead>
				        <tr>
				            <th>模拟区域</th>
				            <th>点源程序</th>
				            <th>面源程序</th>
				            <th>天然源程序</th>
				            <th>国家清单耦合</th>
				            <th>面源清单</th>
				            <th>点源清单</th>
				            <th>自动清理临时</th>
				        </tr>
				    </thead>
				</table>
		</div>
    
    <div class="am-u-sm-6am-u-sm-push-6"> 
              <button type="button" onclick="getpara()"  class="am-btn am-btn-primary">下一步</button>
     </div>
     </form>      
   </div>
  <!-- content end -->
</div>
</div>

<script type="text/javascript">

function getpara(){
	  var data = [];
	  $("input[name^='listparaform']").each(function(){
		  data.push($(this).attr("value"));
	  });
	  console.log(data);
	  
	  var projects = [];
	  $("table tr").each(function() {
			var t = $(this).children('td:first').text();
			projects.push(t);
		});
	  
	  projects.shift();
	  
	  console.log(projects);
	  $.post('admin-para',{"listpara":data.join(","),"projects":projects.join(",")});
}

function init(){
	init_table();
}

function init_table(){
	$('#table_ids').DataTable({
   	 "paging":   false,
   	  "ordering": false,
   	  "info":     false,
   	  "searching":false,
   	  "ajax": {
   		     "url": "getParaData",
             //"url": "assets/data/data.json",
             "dataType": "json"
         },
         "initComplete":function(){
        	  $("input[name^='listparaform']").change(function (){
        		  if($(this).attr("value")=="1"){
        			  $(this).attr("value",0);
        		  }else{
        			  $(this).attr("value",1);
        		  }
        	  } );
         },
   	  "columnDefs":[
   	  {
             "targets": 1,
             "render": function(data, type, row,index) {
            
           	  if(data == 1){
	                  return  "<input   type='checkbox'  value=1 checked='checked'  id='"+row[0]+"1' name='listparaform[" +index.row +"].p_run_pt'/>";
           	  }
           	          return  "<input   type='checkbox'   value=0   id='"+row[0]+"1' name='listparaform[" +index.row +"].p_run_pt'/>";
             }
   	  },
   	  {
             "targets": 2,
             "render": function(data, type, row,index) {
              	  if(data == 1){
   	                  return  "<input   type='checkbox'  value=1  checked='checked'  id='"+row[0]+"2' name='listparaform[" +index.row +"].p_run_ar'/>";
              	  }
              	     return  "<input   type='checkbox'  value=0   id='"+row[0]+"2' name='listparaform[" +index.row +"].p_run_ar'/>";
              }
   	  },
   	  {
             "targets": 3,
             "render": function(data, type, row,index) {
             	  if(data == 1){
  	                  return  "<input   type='checkbox' value=1  checked='checked'  id='"+row[0]+"3' name='listparaform[" +index.row +"].p_run_megan'/>";
             	  }
             	     return  "<input   type='checkbox'  value=0   id='"+row[0]+"3' name='listparaform[" +index.row +"].p_run_megan'/>";
               }
   	  },
   	  {
             "targets": 4,
             "render": function(data, type, row,index) {
             	  if(data == 1){
  	                  return  "<input   type='checkbox'  value=1 checked='checked'  id='"+row[0]+"4' name='listparaform[" +index.row +"].p_run_superregion'/>";
             	  }
             	     return  "<input   type='checkbox'    value=0  id='"+row[0]+"4' name='listparaform[" +index.row +"].p_run_superregion'/>";
               }
   	  },
   	  {
             "targets": 5,
             "render": function(data, type, row,index) {
            	  if(data == 1){
 	                  return  "<input   type='checkbox'  value=1 checked='checked'  id='"+row[0]+"5' name='listparaform[" +index.row +"].p_run_ar_layer'/>";
            	  }
            	     return  "<input   type='checkbox'  value=0   id='"+row[0]+"5' name='listparaform[" +index.row +"].p_run_ar_layer'/>";
             }
   	  },
   	  {
             "targets": 6,
             "render": function(data, type, row,index) {
           	  if(data == 1){
	                  return  "<input   type='checkbox'  value=1 checked='checked'  id='"+row[0]+"6' name='listparaform[" +index.row +"].p_pt_layer'/>";
           	  }
           	     return  "<input   type='checkbox'  value=0  id='"+row[0]+"6' name='listparaform[" +index.row +"].p_pt_layer'/>";
             }
   	  },
   	  {
             "targets": 7,
             "render": function(data, type, row,index) {
              	  if(data == 1){
   	                  return  "<input   type='checkbox' value=1 checked='checked'  id='"+row[0]+"7' name='listparaform[" +index.row +"].p_itm_status'/>";
              	  }
              	     return  "<input   type='checkbox'  value=0  id='"+row[0]+"7' name='listparaform[" +index.row +"].p_itm_status'/>";
             }
   	  },
   	  {
          "targets": 0,
          "render": function(data, type, row,index) {
        	       return  row[0] ;
          }
	  }
   	  
   	  ]
   });
}
</script>
</body>
</html>
