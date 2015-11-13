<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<body>


<div class="am-cf admin-main">
  

<form action="admin-test" method="post">
  <!-- content start -->
  <div class="admin-content">
    <div class="am-cf am-padding">
      <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">运行测试</strong></div>
    </div>

    <hr/>



    <button type="submit" class="am-btn am-btn-primary am-btn-xs">下一步</button>

  </div>

  <!-- content end -->
</form>
</div>


<script type="text/javascript">
function init(){

}
</script>
</body>
</html>
