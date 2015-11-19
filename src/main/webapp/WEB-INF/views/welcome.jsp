<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>





  <link rel="stylesheet" href="assets/css/amazeui.min.css"/>
  <link rel="stylesheet" href="assets/css/admin.css">
  <link rel="stylesheet" type="text/css" href="assets/css/jquery.dataTables.css">
  <link rel="stylesheet" type="text/css" href="assets/css/amazeui.datetimepicker.css">



<body >

<form action="checkStatus" method="get" id="myform">
<div class="am-cf admin-main">
   <!-- content start -->
  <div class="admin-content">
        <div class="am-cf am-padding">
              <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">欢迎 ${username} 来到这个页面</strong> </div>
        </div>
        
         <ul class="am-avg-sm-1 am-avg-md-4 am-margin am-padding am-text-center admin-content-list ">
	      <li><a href="javascript: void(0)" onclick="showlog()" class="am-text-success"   data-am-modal="{target: '#doc-modal-1', closeViaDimmer: 0, width: 800, height: 525}" ><span class="am-icon-btn am-icon-file-text"></span><br/>创建案例</a></li>
	      <li><a href="#" class="am-text-warning"><span class="am-icon-btn am-icon-briefcase"></span><br/>案例管理</a></li>
	      <li><a href="#" class="am-text-danger"><span class="am-icon-btn am-icon-recycle"></span><br/>数据管理</a></li>
	      <li><a href="#" class="am-text-secondary"><span class="am-icon-btn am-icon-user-md"></span><br/>其他模块</a></li>
	    </ul>
	    
	    <div class="am-modal am-modal-no-btn" tabindex="-1" id="doc-modal-1">
		  <div class="am-modal-dialog">
		    <div class="am-modal-hd"> 运行日志
		      <a href="javascript: void(0)" class="am-close am-close-spin" data-am-modal-close>&times;</a>
		    </div>
		    <div  class="am-modal-bd">
		      <div id="log" class="am-u-sm-12 am-u-sm-centered">
		        <pre id="logs" class="am-pre-scrollable">
		        		
		        </pre>
		      </div>
		    </div>
		  </div>
		</div>
	
		<div  class="am-avg-sm-1 am-avg-md-4 am-margin am-padding am-text-center admin-content-list"> 
				
			  <button type="button" class="am-btn am-btn-primary js-modal-open">打开 Modal</button>
  <button type="button" class="am-btn am-btn-secondary js-modal-close">关闭 Modal</button>
  <button type="button" class="am-btn am-btn-danger js-modal-toggle">Toggle Modal</button>
				
				<div class="am-modal am-modal-no-btn" tabindex="-1" id="my-modal">
				  <div class="am-modal-dialog">
				    <div class="am-modal-hd">Modal 标题
				      <a href="index" class="am-close am-close-spin " data-am-modal-close>&times;</a>
				    </div>
				    <div class="am-modal-bd">
				      Modal 内容。
				    </div>
				  </div>
				</div>
				
		</div>
	
		
		
  </div>
  <!-- content end -->
</div>
</form>


<script type="text/javascript">


function add(){
	console.log("modual");
	var $modal = $("#my-modal");

    $modal.siblings('.am-btn').on('click', function(e) {
      var $target = $(e.target);
      if (($target).hasClass('js-modal-open')) {
        $modal.modal();
      } else if (($target).hasClass('js-modal-close')) {
        $modal.modal('close');
      } else {
        $modal.modal('toggle');
      }
    });
}

function init(){

	console.log("init welcome page");
	add();

}

function showlog(){
	console.log("suimit");
	$("#myform").submit();
}

</script>

<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/amazeui.min.js"></script>
<script src="assets/js/app.js"></script>
<script src="assets/js/jquery.dataTables.js"></script>
<script src="assets/js/amazeui.datetimepicker.js"></script>
</body>
</html>
