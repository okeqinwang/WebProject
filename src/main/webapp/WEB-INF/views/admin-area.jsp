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
   <form class="am-form am-form-horizontal"  action="admin-area" method="post">
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
            <input type=text"  id="apple" name="apple" />
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
    
    <hr/>
    
    <div class="am-u-sm-6am-u-sm-push-6"> 
              <button type="submit" class="am-btn am-btn-primary">下一步</button>
     </div>
     
        
   
  </div>

  
  <!-- content end -->


<script type="text/javascript">
function init(){
}
</script>
</body>
</html>
