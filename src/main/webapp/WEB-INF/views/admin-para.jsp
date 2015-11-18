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
   <form class="am-form am-form-horizontal"  action="admin-para" method="post">
    
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
              <button type="submit" class="am-btn am-btn-primary">下一步</button>
     </div>
     </form>      
   </div>
  <!-- content end -->
</div>
</div>

<script type="text/javascript">
function init(){
	$('#table_ids').DataTable({
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
           	  if(data == 1){
	                  return  "<input   type='checkbox'  checked='checked'  id='"+row[0]+"1'/>";
           	  }
           	  return   "<input   type='checkbox'   id='"+row[0]+"1'/>";
             }
   	  },
   	  {
             "targets": 2,
             "render": function(data, type, row) {
           	  if(data == 1){
	                  return  "<input   type='checkbox'  checked='checked'  id='"+row[0]+"2'/>";
           	  }
           	  return   "<input   type='checkbox'   id='"+row[0]+"2'/>";
             }
   	  },
   	  {
             "targets": 3,
             "render": function(data, type, row) {
           	  if(data == 1){
	                  return  "<input   type='checkbox'  checked='checked'  id='"+row[0]+"3'/>";
           	  }
           	  return   "<input   type='checkbox'   id='"+row[0]+"3'/>";
             }
   	  },
   	  {
             "targets": 4,
             "render": function(data, type, row) {
           	  if(data == 1){
	                  return  "<input   type='checkbox'  checked='checked'  id='"+row[0]+"4'/>";
           	  }
           	  return   "<input   type='checkbox'   id='"+row[0]+"4'/>";
             }
   	  },
   	  {
             "targets": 5,
             "render": function(data, type, row) {
           	  if(data == 1){
	                  return  "<input   type='checkbox'  checked='checked'  id='"+row[0]+"5'/>";
           	  }
           	  return   "<input   type='checkbox'   id='"+row[0]+"5'/>";
             }
   	  },
   	  {
             "targets": 6,
             "render": function(data, type, row) {
           	  if(data == 1){
	                  return  "<input   type='checkbox'  checked='checked'  id='"+row[0]+"6'/>";
           	  }
           	  return   "<input   type='checkbox'   id='"+row[0]+"6'/>";
             }
   	  },
   	  {
             "targets": 7,
             "render": function(data, type, row) {
           	  if(data == 1){
	                  return  "<input   type='checkbox'  checked='checked'  id='"+row[0]+"7'/>";
           	  }
           	  return   "<input   type='checkbox'   id='"+row[0]+"7'/>";
             }
   	  }
   	  
   	  ]
   });
}
</script>
</body>
</html>
