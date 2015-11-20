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
              <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">完成</strong> </div>
        </div>
        
        <hr/>
	<div  class="am-avg-sm-1 am-avg-md-4 am-margin am-padding am-text-center admin-content-list"> 
	   <button type="button" onclick="saveresult()"   class="am-btn am-btn-primary am-btn-md">保存结果</button>
    </div>
  </div>
  <!-- content end -->

</div>


<script type="text/javascript">
function init(){
}

function saveresult(){
	$.ajax({
		"url":"saveResult",
		"type":"get",
		"success":function(data,status){
			 if(status == "success"){
				 alert(data.msg);
			 }
		},
		"error":function(){
			alert("服务器未知错误，请求失败");
		}
	});
}
</script>
</body>
</html>
