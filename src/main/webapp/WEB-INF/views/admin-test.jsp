<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<body>


<div class="am-cf admin-main">
  <form  id="admin-test-form"  action="admin-test" method="post">
<!-- content start -->
<div class="admin-content">

  <div class="am-cf am-padding">
    <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">运行测试</strong> </div>
  </div>

  <div class="am-tabs am-margin" data-am-tabs>
    <ul class="am-tabs-nav am-nav am-nav-tabs">
      <li class='am-active'><a href="#tab1">气象输入</a></li>
      <li><a href="#tab2">时间</a></li>
      <li ><a href="#tab3">模型运行</a></li>
      <li><a href="#tab4">QA/QC</a></li>
      <li><a href="#tab5">结果输出</a></li>
    </ul>

    <div class="am-tabs-bd">
      <div class="am-tab-panel am-fade am-in am-active" id="tab1">
        <div class="am-g am-margin-top">
          <div class="am-u-sm-4 am-u-md-2 am-text-right">显示状态</div>
          <div class="am-u-sm-8 am-u-md-10">
            <div class="am-btn-group" data-am-button>
              <label class="am-btn am-btn-default am-btn-xs">
                <input type="radio" name="options" id="option1"> 正常
              </label>
              <label class="am-btn am-btn-default am-btn-xs">
                <input type="radio" name="options" id="option2"> 待审核
              </label>
              <label class="am-btn am-btn-default am-btn-xs">
                <input type="radio" name="options" id="option3"> 不显示
              </label>
            </div>
          </div>
        </div>
      </div>
      
     <div class="am-tab-panel am-fade am-in " id ="tab2">
     	<div class="am-g am-margin-top-sm">
     		tab2
     	</div>
     </div>
     
    
     
      <div class="am-tab-panel am-fade am-in " id ="tab3">
    
     	<div class="am-g am-margin-top-sm">
     		<div class="am-u-md-6">
     		
     			<div class="am-g error-log">
			      <div class="am-u-sm-12 am-u-sm-centered">
			      		<pre id="params" class="am-pre-scrollable">
		        	
		        		
		               </pre>
			      
			        </div>
			      </div>
     		
     		
     		
     		</div>
     		
     		<div class="am-u-md-6">
     		
     		<div class="am-g error-log">
		      <div id="log" class="am-u-sm-12 am-u-sm-centered">
		        <pre id="logs" class="am-pre-scrollable">
		        		
		        </pre>
		        </div>
		      </div>
     		
     		</div>
     	</div>
     	
     	<hr/>
       <button type="button" onclick="commitTask()"   class="am-btn am-btn-primary am-btn-xs">运行</button>
       <button type="button"  onclick="getlog()" class="am-btn am-btn-primary am-btn-xs">获取日志</button>
     </div>

    
     <div class="am-tab-panel am-fade am-in " id ="tab4">
     	<div class="am-g am-margin-top-sm">
     		tab4
     	</div>
     </div>
    
     <div class="am-tab-panel am-fade am-in " id ="tab5">
     	<div class="am-g am-margin-top-sm">
     		tab5
     	</div>
     </div>
     
     
     </div>
     
     </div>
     
<!-- content end -->



</div>
</form>
</div>

<script type="text/javascript">
function init(){
	console.log("test init page");
	var para ="${allpara}";
	console.log(para);
	$("#params").append(para);
};

function commitTask(){
	console.log("commit");
	var data={};
	$.ajax({
		url:"commitTask",
		type:"post",
		data:data,
		success:function (data,status){
			if(status== "success"){
				alert("run success");
			}
		},
		error:function(){
			console.log("err data");
		}
	});
};


function getlog(){
	var stop = "0";
	var lastTimeFileSize ="0";
	var updater = {
				poll : function() {
					$.ajax({
						url : "getLog",
						type : "POST",
						//contentType: "application/json; charset=utf-8",
						data: {"lastTimeFileSize": lastTimeFileSize},
						dataType : "json",
						success : updater.onSuccess,
						error : updater.onError
					});
				},
				check: function (){
					console.log("check");
					//console.log("stop",stop);
					if(stop == "0"){
						console.log("go on  stop == 0..");
					    updater.poll();
					}
				},
				onSuccess : function(data, dataStatus) {
					try {
					stop = data.stop;
					lastTimeFileSize =data.lastTimeFileSize;
					$("#logs").append(data.data);
					} catch (e) {
						//console.log(e);
						//updater.onError();
						//return;
					}
					interval = setTimeout(updater.check,5000);
				},
				onError : function() {
					console.log("获取日志失败");
				}
			};
	    updater.poll();
	}
</script>
</body>
</html>
