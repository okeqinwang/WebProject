<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!doctype html>
<html class="no-js">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>xx page</title>
  <meta name="description" content="这是一个 index 页面">
  <meta name="keywords" content="index">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
  <meta name="renderer" content="webkit">
  <meta http-equiv="Cache-Control" content="no-siteapp" />
  <link rel="icon" type="image/png" href="assets/i/favicon.png">
  <link rel="apple-touch-icon-precomposed" href="assets/i/app-icon72x72@2x.png">
  <meta name="apple-mobile-web-app-title" content="Amaze UI" />
  <link rel="stylesheet" href="assets/css/amazeui.min.css"/>
  <link rel="stylesheet" href="assets/css/admin.css">
  <link rel="stylesheet" type="text/css" href="assets/css/jquery.dataTables.css">

  
  <decorator:head />
</head>


<body onload="init()">
	<div class="container">
	     <header class="am-topbar admin-header">
  <div class="am-topbar-brand">
    <strong ><a href="welcome">环境XX后台管理</a></strong> 
  </div>

  <button class="am-topbar-btn am-topbar-toggle am-btn am-btn-sm am-btn-success am-show-sm-only" data-am-collapse="{target: '#topbar-collapse'}"><span class="am-sr-only">导航切换</span> <span class="am-icon-bars"></span></button>

  <div class="am-collapse am-topbar-collapse" id="topbar-collapse">

    <ul class="am-nav am-nav-pills am-topbar-nav am-topbar-right admin-header-list">
      <li class="am-dropdown" data-am-dropdown>
        <a class="am-dropdown-toggle" data-am-dropdown-toggle href="javascript:;">
          <span class="am-icon-users"></span> 管理员 <span class="am-icon-caret-down"></span>
        </a>
        <ul class="am-dropdown-content">
          <li><a href="#"><span class="am-icon-user"></span> 资料</a></li>
          <li><a href="#"><span class="am-icon-cog"></span> 设置</a></li>
          <li><a href="logout"><span class="am-icon-power-off"></span> 退出</a></li>
        </ul>
      </li>
    </ul>
  </div>
</header>
          <!-- sidebar start -->
		  <div class="admin-sidebar am-offcanvas" id="admin-offcanvas">
		    <div class="am-offcanvas-bar admin-offcanvas-bar">
		      <ul class="am-list admin-sidebar-list">
		        <li><a href="index"><span class="am-icon-home"></span> 基本信息</a></li>
		        <li><a href="admin-area"><span class="am-icon-table"></span> 模拟区域</a></li>
		        <li><a href="admin-in"><span class="am-icon-pencil-square-o"></span> 排放源输入</a></li>
		        <li><a href="admin-case"><span class="am-icon-sign-out"></span> 排放源情景</a></li>
		        <li><a href="admin-para"><span class="am-icon-table"></span> 运行参数</a></li>
		        <li><a href="admin-test"><span class="am-icon-table"></span> 运行测试</a></li>
		        <li><a href="admin-done"><span class="am-icon-table"></span> 完成</a></li>
		      </ul>
		    </div>
		  </div>
  <!-- sidebar end -->
		<decorator:body />
	</div>
	
<footer>
  <hr>
  <p class="am-padding-left">© edu scut </p>
</footer>

<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/amazeui.min.js"></script>
<script src="assets/js/app.js"></script>
<script type="text/javascript" charset="utf8" src="assets/js/jquery.dataTables.js"></script>
</body>
</html>