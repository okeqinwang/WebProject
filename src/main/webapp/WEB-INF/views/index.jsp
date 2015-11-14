<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>


<body >

<div class="am-cf admin-main">
 

  <!-- content start -->
  <div class="admin-content">
        <div class="am-cf am-padding">
              <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">基本信息</strong> </div>
        </div>
        
        <hr/>
        
    <div class="am-u-sm-12 am-u-md-8 ">
        <form class="am-form am-form-horizontal"  action="index" method="post">
          <div class="am-form-group">
            <label for="user-name" class="am-u-sm-3 am-form-label">案例名称</label>
            <div class="am-u-sm-9">
              <input type="text" id="basic_casename"    name="basic_casename"  >
            </div>
         </div>
         
         
          <div class="am-form-group">
            <label for="user-name" class="am-u-sm-3 am-form-label">案例类别</label>
            <div class="am-u-sm-9">
              <select  id="basic_casetype" class="am-u-sm-2 "  name="basic_casetype"  >
                  <option value="1">区域一</option>
                  <option value="2">选项二</option>
                  <option value="3">选项三</option>
            </select>
            </div>
         </div>

         

          <div class="am-form-group">
            <label for="user-phone" class="am-u-sm-3 am-form-label">创建人</label>
            <div class="am-u-sm-9">
              <input type="text" id="basic_createname" name="basic_createname"  placeholder="创建人">
            </div>
          </div>

          <div class="am-form-group">
            <label for="user-intro" class="am-u-sm-3 am-form-label">案例说明</label>
            <div class="am-u-sm-9">
              <textarea class="" rows="5" id="basic_content"  name="basic_content"  placeholder="输入案例说明"></textarea>
            </div>
          </div>

          <div class="am-form-group">
            <div class="am-u-sm-9 am-u-sm-push-3"> 
              <button type="submit" class="am-btn am-btn-primary">下一步</button>
            </div>
          </div>
        </form>
      </div>
      

  </div>
  <!-- content end -->

</div>


<script type="text/javascript">
function init(){
	$("#basic_createname").val("${username}");
	var flag = "${flag}";
	if(flag == 1){
		$("#basic_casename").val("${m.basic_casename}");
		$("#basic_createname").val("${username}");
		$("#basic_casetype").val("${m.basic_casetype}");
		$("#basic_content").val("${m.basic_content}");
	}
}
</script>

</body>
</html>
