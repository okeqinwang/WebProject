<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<body>

<div class="am-cf admin-main">
  
<form action="admin-case" method="post">
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
        
              <div class="am-u-sm-6am-u-sm-push-6"> 
              <button type="submit" class="am-btn am-btn-primary">下一步</button>
    	     </div>
        
    </div>
  </div>
  <!-- content end -->
  </form>
</div>
<script type="text/javascript">
function init(){
	console.log("dddd");
}
</script>
</body>
</html>
