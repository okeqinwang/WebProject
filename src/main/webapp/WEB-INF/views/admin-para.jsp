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
    
    <div class="am-u-sm-6am-u-sm-push-6"> 
              <button type="submit" class="am-btn am-btn-primary">下一步</button>
     </div>
     </form>      
   
  </div>

  
  <!-- content end -->

</div>

<script type="text/javascript">
function init(){

}
</script>

</body>
</html>
