<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<body>


<form id="myform" action="admin-in" method="post">
<div class="am-cf admin-main">

  <!-- content start -->
  <div class="admin-content">
    <div class="am-cf am-padding">
      <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">排放源输入</strong></div>
    </div>

    <hr/>


     <div class="am-g">
         
       
          <div class="am-u-sm-6">
          <label for="case-name" class="am-u-sm-2 am-form-label">排放源输入</label>
            
            <select  class="am-u-sm-4 "  id="area_id" name="area_id"  >
              <option value="hello">hello</option>
              <option value="world">world</option>
              <option value="java">java</option>
            </select>
           </div>
           
        <div class="am-u-sm-6">
         <button type="button"  onclick="savecase()" class="am-btn ">保存当前区域配置</button>
         <button type="button" class="am-btn ">配置下一区域</button>
        </div>
    </div>
    
    <hr/>
    
    <div class="am-tabs am-margin" data-am-tabs>
    <ul class="am-tabs-nav am-nav am-nav-tabs">
      <li class="am-active"><a href="#tab1">排放清单</a></li>
      <li><a href="#tab2">时间分配方案</a></li>
      <li><a href="#tab3">空间分配方案</a></li>
      <li><a href="#tab4">物种分配方案</a></li>
      <li><a href="#tab5">天然源输入方案</a></li>
    </ul>

    <div class="am-tabs-bd">
      <div class="am-tab-panel am-fade am-in am-active" id="tab1">
        <div class="am-g am-margin-top">
          <div class="am-u-md-4  am-text-right">排放清单</div>
          <div class="am-u-md-4 ">
            <select id="pf_qd" name="pf_qd">
              <option value="1">选项一...</option>
              <option value="2">选项二.....</option>
              <option value="3">选项三........</option>
            </select>
          </div>
          <div class="am-u-md-4  ">
              <button type="button" class="am-btn">预览</button>
          </div>
        </div>

        <div class="am-g am-margin-top">
          <div class="am-u-md-4  am-text-right">排放清单</div>
          <div class="am-u-md-4 ">
            <select id="pf_gxl" name="pf_gxl">
              <option value="1">选项一...</option>
              <option value="2">选项二.....</option>
              <option value="3">选项三........</option>
            </select>
          </div>
          <div class="am-u-md-4 am-u-end ">
              <button type="button" class="am-btn">预览</button>
          </div>
        </div>
        
        
        <hr />
        
        <div class="am-g am-margin-top">
          <div class="am-u-md-6  am-text-right">
              <table class="am-table am-table-bordered">
                <thead>
                    <tr>
                        <th>区域</th>
                        <th>源类别</th>
                        <th>污染物</th>
                        <th>排放量</th>
                        <th>单位</th>
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
          <div class="am-u-md-6 ">
            <img src="http://s.amazeui.org/media/i/demos/bw-2014-06-19.jpg" class="am-img-responsive" alt=""/>
          </div>
         
        </div>

      </div>

      <div class="am-tab-panel am-fade" id="tab2">
            
            <div class="am-g am-margin-top">
              <div class="am-u-md-4  am-text-right">时间分配方案</div>
              <div class="am-u-md-4 ">
                <select id="sj_plan" name="sj_plan">
                  <option value="1">选项一...</option>
                  <option value="2">选项二.....</option>
                  <option value="3">选项三........</option>
                </select>
              </div>
              <div class="am-u-md-4  ">
                  <button type="button" class="am-btn">预览</button>
              </div>
            </div>
            
            <div class="am-g am-margin-top">
              <div class="am-u-md-4  am-text-right">排放源类别</div>
              <div class="am-u-md-4 ">
                <select id="sj_pf_type" name="sj_pf_type">
                  <option value="1">选项一...</option>
                  <option value="2">选项二.....</option>
                  <option value="3">选项三........</option>
                </select>
              </div>
              <div class="am-u-md-4  ">
                  <button type="button" class="am-btn">确定</button>
              </div>
            </div>
            
            <hr />
            
            <div class="am-g am-margin-top">
              <img src="http://s.amazeui.org/media/i/demos/bw-2014-06-19.jpg" class="am-img-responsive" alt=""/>
            </div>
            
            <div class="am-g am-margin-top">
              <div class="am-u-md-6">
                  <img src="http://s.amazeui.org/media/i/demos/bw-2014-06-19.jpg" class="am-img-responsive" alt=""/>
              </div>
              
              <div class="am-u-md-6">
                  <img src="http://s.amazeui.org/media/i/demos/bw-2014-06-19.jpg" class="am-img-responsive" alt=""/>
              </div>
            </div>

          

      </div>
    
      <div class="am-tab-panel am-fade" id="tab3">
              
        <div class="am-g am-margin-top-sm">
            <div class="am-g">
                <div class="am-u-md-4 am-text-right">
                    空间分配方案
                </div>
                <div class="am-u-md-4  ">
                        <select id="kj_plan" name="kj_plan">
                          <option value="1">选项一...</option>
                          <option value="2">选项二.....</option>
                          <option value="3">选项三........</option>
                        </select>
                </div>
                
                
                
                
                <div class="am-u-md-2 am-text-left am-u-end">
                    <button type="button" class="am-btn ">预览</button>
                </div>
               
            </div>
        </div>
        
        <hr/>
        
        
           <div class="am-g am-margin-top-sm">
            <div class="am-g">
                <div class="am-u-sm-2 am-text-right">
                        区域
                </div>
                <div class="am-u-sm-2  ">
                    <select id="kj_area" name="kj_area">
                        <option value="1">选项一...</option>
                        <option value="2">选项二.....</option>
                        <option value="3">选项三........</option>
                    </select>
                </div>
                
                 <div class="am-u-sm-2 am-text-right">
                        空间分配代码
                </div>
                <div class="am-u-sm-2  ">
                    <select id="kj_code" name="kj_code">
                        <option value="1">选项一...</option>
                        <option value="2">选项二.....</option>
                        <option value="3">选项三........</option>
                    </select>
                </div>
                 
                <div class="am-u-sm-2 ">
                </div>
                
                <div class="am-u-sm-2 ">
                         <button type="button" class="am-btn ">确定</button>
                </div>
                
               
            </div>
        </div>
      
        
        
        
         <div class="am-g am-margin-top-sm">
            <div class="am-g">
                <img src="http://s.amazeui.org/media/i/demos/bw-2014-06-19.jpg" class="am-img-responsive" alt=""/>
            </div>
         </div>
      </div>

      <div class="am-tab-panel am-fade" id="tab4">
              
        <div class="am-g am-margin-top-sm">
            <div class="am-g">
                <div class="am-u-md-4 am-text-right">
                    大气化学物种分配方案
                </div>
                <div class="am-u-md-4  ">
                        <select id="wz_plan" name="wz_plan">
                          <option value="1">选项一...</option>
                          <option value="2">选项二.....</option>
                          <option value="3">选项三........</option>
                        </select>
                </div>
                <div class="am-u-md-2 am-text-left am-u-end">
                    <button type="button" class="am-btn ">预览</button>
                </div>
               
            </div>
        </div>
        
        <hr/>
        
        <div class="am-g am-margin-top-sm">
            <div class="am-g">
                <div class="am-u-sm-2 am-text-right">
                        化学机制
                </div>
                <div class="am-u-sm-2  ">
                    <select id="wz_jz" name="wz_jz">
                        <option value="option1">选项一...</option>
                        <option value="option2">选项二.....</option>
                        <option value="option3">选项三........</option>
                    </select>
                </div>
                
                 <div class="am-u-sm-2 am-text-right">
                        污染物
                </div>
                <div class="am-u-sm-2  ">
                    <select id="wz_wrw" name="wz_wrw">
                        <option value="option1">选项一...</option>
                        <option value="option2">选项二.....</option>
                        <option value="option3">选项三........</option>
                    </select>
                </div>
                
                 <div class="am-u-sm-2 am-text-right">
                        排放源类别
                </div>
                <div class="am-u-sm-1 am-u-end  ">
                    <select id="wz_type" name="wz_type">
                        <option value="option1">选项一...</option>
                        <option value="option2">选项二.....</option>
                        <option value="option3">选项三........</option>
                    </select>
                </div>
               
            </div>
        </div>
        
        
         <div class="am-g am-margin-top-sm">
            <div class="am-g">
                <div class="am-u-sm-6">
                    <img src="http://s.amazeui.org/media/i/demos/bw-2014-06-19.jpg" class="am-img-responsive" alt=""/>
                </div>
                
                <div class="am-u-sm-6">
                    <img src="http://s.amazeui.org/media/i/demos/bw-2014-06-19.jpg" class="am-img-responsive" alt=""/>
                </div>
            </div>
         </div>
      </div>

      <div class="am-tab-panel am-fade" id="tab5">
          <div class="am-g am-margin-top-sm">
            <div class="am-u-sm-2 am-u-md-2 am-text-right">
              植被功能型
            </div>
            <div class="am-u-sm-6 am-u-md-4 ">
                <select id="try_pft" name="try_pft">
                  <option value="option1">选项一...</option>
                  <option value="option2">选项二.....</option>
                  <option value="option3">选项三........</option>
                </select>
            </div>
            <div class="am-u-sm-2 am-u-md-1">
                <button type="button" class="am-btn">选择</button>
            </div>
            <div class="am-u-sm-2 am-u-md-1 am-u-end">
                <button type="button" class="am-btn">编辑</button>
            </div>
          </div>

          
        <div class="am-g am-margin-top-sm">
            <div class="am-u-sm-2 am-u-md-2 am-text-right">
              排放因子-页面指数
            </div>
            <div class="am-u-sm-6 am-u-md-4 ">
                <select id="try_ef_lai" name="try_ef_lai">
                  <option value="option1">选项一...</option>
                  <option value="option2">选项二.....</option>
                  <option value="option3">选项三........</option>
                </select>
            </div>
            <div class="am-u-sm-2 am-u-md-1">
                <button type="button" class="am-btn">选择</button>
            </div>
            <div class="am-u-sm-2 am-u-md-1 am-u-end">
                <button type="button" class="am-btn">编辑</button>
            </div>
        </div>
        
        <hr />
        
        <div class="am-g">
            <div class="am-u-md-8">
                 <div class="am-u-sm-2 am-u-md-2 am-text-right">
                    预览选项
                </div>
                <div class="am-u-sm-6 am-u-md-4 am-u-end ">
                    <select id="try_show" name="try_show">
                      <option value="option1">选项一...</option>
                      <option value="option2">选项二.....</option>
                      <option value="option3">选项三........</option>
                    </select>
                </div>
                
            </div>
           
        </div>
        
         <div class="am-g am-margin-top-sm">
        
         <div class="am-g">
                   <table class="am-table am-table-bordered">
                <thead>
                    <tr>
                        <th>区域</th>
                        <th>源类别</th>
                        <th>污染物</th>
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





  <div class="am-margin">
    <a type="button"  href="admin-case"  class="am-btn am-btn-primary am-btn-xs">下一步</a>
    </div>
</div>
</div>
</div>
</div>


  <!-- content end -->

</form>
<script type="text/javascript">


function init(){
	var areaname = $("#area_id option:selected").text();
	getEmission(areaname);
	
	$("#area_id").change(function(){
		var areaname = $("#area_id option:selected").text();
		getEmission(areaname);
	});
};


function savecase(){
	$("#myform").submit();
};

function getEmission(areaname){
	$.ajax({
		"url":"getEmissonByAreaName",
		"type":"get",
		"data" :{"areaname":areaname},
		"success":function(data){
			initdata(data);
		},
		"error":function(){
			console.log("bad request");
		}
	});
}

function initdata(data){
	//do in here
	var flag = data.flag;
	var m = data.data;
	if(flag == 1){
		$("#area_id").val(m.area_id);
		$("#pf_qd").val(m.pf_qd);
		$("#pf_gxl").val(m.pf_gxl);
		
		$("#sj_plan").val(m.sj_plan);
		$("#sj_pf_type").val(m.sj_pf_type);
		
		$("#kj_plan").val(m.kj_plan);
		$("#kj_area").val(m.kj_area);
		$("#kj_code").val(m.kj_code);
		
		$("#wz_plan").val(m.wz_plan);
		$("#wz_jz").val(m.wz_jz);
		$("#wz_wrw").val(m.wz_wrw);
		$("#wz_type").val(m.wz_type);
		
		$("#try_pft").val(m.try_pft);
		$("#try_ef_lai").val(m.try_ef_lai);
		$("#try_show").val(m.try_show);
	}
	
}


</script>


</body>
</html>
