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
      <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">模拟区域</strong> </div>
    </div>

    <hr/>

    <div class="am-g">

      <div class="am-u-sm-3 am-u-sm-3 ">
          
        <div class="am-panel am-panel-default">
          <div class="am-panel-hd">嵌套区域</div>
          <div class="am-panel-bd">
            面板内容
          </div>
        </div>
        
        
        <div class="am-panel am-panel-default">
          <div class="am-panel-hd">模拟区域列表</div>
          <div class="am-panel-bd">
            面板内容
          </div>
          
          
        </div>
       
      </div>

      <div class="am-u-sm-9 am-u-md-9 ">
        <div class="am-panel am-panel-default">
          <div class="am-panel-hd">坐标系统参数</div>
          <div class="am-panel-bd">
            xxx
          </div>
        </div>
        
        <div class="am-panel am-panel-default">
          <div class="am-panel-hd">模拟区域</div>
          <div class="am-panel-bd">
            <img src="http://s.amazeui.org/media/i/demos/bw-2014-06-19.jpg" class="am-img-responsive" alt=""/>
          </div>
        </div>
      </div>
    </div>
  </div>

  
  <!-- content end -->

</div>

<a href="#" class="am-icon-btn am-icon-th-list am-show-sm-only admin-menu" data-am-offcanvas="{target: '#admin-offcanvas'}"></a>

<footer>
  <hr>
  <p class="am-padding-left">© 2014 AllMobilize, Inc. Licensed under MIT license.</p>
</footer>

<!--[if lt IE 9]>
<script src="http://libs.baidu.com/jquery/1.11.3/jquery.min.js"></script>
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
