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
      <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">排放情景</strong> </div>
    </div>

    <hr/>

    <div class="am-g">

       <div class="am-container ">
            <div class="am-u-sm-2 am-u-md-2 am-text-right">
              排放情景
            </div>
            <div class="am-u-sm-4 am-u-md-4 ">
                <select data-am-selected="{btnSize: 'sm'}">
                  <option value="option1">选项一...</option>
                  <option value="option2">选项二.....</option>
                  <option value="option3">选项三........</option>
                </select>
            </div>
            <div class="am-u-sm-2 am-u-md-2">
                <button type="button" class="am-btn">选择情景</button>
            </div>
            
            <div class="am-u-sm-2 am-u-md-2 am-u-end">
                <button type="button" class="am-btn">查看</button>
            </div>
        </div>
        
       <div class="am-container ">
            <div class="am-u-sm-2 am-u-md-2 am-text-right">
              地区
            </div>
            <div class="am-u-sm-4 am-u-md-4 ">
                <select data-am-selected="{btnSize: 'sm'}">
                  <option value="option1">选项一...</option>
                  <option value="option2">选项二.....</option>
                  <option value="option3">选项三........</option>
                </select>
            </div>
            
            <div class="am-u-sm-2 am-u-md-2 am-text-left">
              排放源类别
            </div>
            <div class="am-u-sm-4 am-u-md-4 ">
                <select data-am-selected="{btnSize: 'sm'}">
                  <option value="option1">选项一...</option>
                  <option value="option2">选项二.....</option>
                  <option value="option3">选项三........</option>
                </select>
            </div>
        </div>
        
        <hr />
        
        <div class="am-container">
            <table class="am-table am-table-bordered am-table-striped am-table-compact">
              <thead>
              <tr>
                <th>网站名称</th>
                <th>网址</th>
                <th>创建时间</th>
              </tr>
              </thead>
              <tbody>
              <tr>
                <td>Amaze UI</td>
                <td>http://amazeui.org</td>
                <td>2012-10-01</td>
              </tr>
              <tr>
                <td>Amaze UI</td>
                <td>http://amazeui.org</td>
                <td>2012-10-01</td>
              </tr>
              <tr class="am-active">
                <td>Amaze UI(Active)</td>
                <td>http://amazeui.org</td>
                <td>2012-10-01</td>
              </tr>
              <tr>
                <td>Amaze UI</td>
                <td>http://amazeui.org</td>
                <td>2012-10-01</td>
              </tr>
              <tr>
                <td>Amaze UI</td>
                <td>http://amazeui.org</td>
                <td>2012-10-01</td>
              </tr>
              </tbody>
            </table>
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
