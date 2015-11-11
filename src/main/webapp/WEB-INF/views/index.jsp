<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
HttpSession s = request.getSession();  
%>

<body>

<div class="am-cf admin-main">
 

  <!-- content start -->
  <div class="admin-content">
        <div class="am-cf am-padding">
              <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">基本信息</strong> </div>
        </div>
        
        <hr/>
        
    <div class="am-u-sm-12 am-u-md-8 ">
        <form class="am-form am-form-horizontal"  action="admin-area" method="get">
          <div class="am-form-group">
            <label for="user-name" class="am-u-sm-3 am-form-label">案例名称</label>
            <div class="am-u-sm-9">
              <input type="text" id="user-name"    value= "${m.basic_casename }"  name="basic_casename"  >
            </div>
         </div>
         
         
          <div class="am-form-group">
            <label for="user-name" class="am-u-sm-3 am-form-label">案例名称</label>
            <div class="am-u-sm-9">
              <select  class="am-u-sm-2 " data-am-selected="{btnSize: 'sm'}">
                  <option value="option1">区域一</option>
                  <option value="option2">选项二</option>
                  <option value="option3">选项三</option>
            </select>
            </div>
         </div>

         

          <div class="am-form-group">
            <label for="user-phone" class="am-u-sm-3 am-form-label">创建人</label>
            <div class="am-u-sm-9">
              <input type="text" id="user-phone" name="basic_createname"   value="${m.basic_createname}" placeholder="创建人">
            </div>
          </div>

          <div class="am-form-group">
            <label for="user-intro" class="am-u-sm-3 am-form-label">案例说明</label>
            <div class="am-u-sm-9">
              <textarea class="" rows="5" id="user-intro"  name="basic_content"  placeholder="输入案例说明"></textarea>
            </div>
          </div>

          <div class="am-form-group">
            <div class="am-u-sm-9 am-u-sm-push-3"> session   value  :  <%s.getAttribute("user");%> dgd
              <button type="submit" class="am-btn am-btn-primary">下一步</button>
            </div>
          </div>
        </form>
      </div>
      

  </div>
  <!-- content end -->

</div>

<a href="#" class="am-show-sm-only admin-menu" data-am-offcanvas="{target: '#admin-offcanvas'}">
  <span class="am-icon-btn am-icon-th-list"></span>
</a>

<footer>
  <hr>
  <p class="am-padding-left">© 2014 AllMobilize, Inc. Licensed under MIT license.</p>
</footer>

<!--[if lt IE 9]>
<script src="http://libs.baidu.com/jquery/1.11.1/jquery.min.js"></script>
<script src="http://cdn.staticfile.org/modernizr/2.8.3/modernizr.js"></script>
<script src="assets/js/amazeui.ie8polyfill.min.js"></script>
<![endif]-->

<!--[if (gte IE 9)|!(IE)]><!-->
<script src="assets/js/jquery.min.js"></script>
<!--<![endif]-->
<script src="assets/js/amazeui.min.js"></script>
<script src="assets/js/app.js"></script>
</body>
</html>
