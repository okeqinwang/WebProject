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
      <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">排放源输入</strong></div>
    </div>

    <hr/>


     <div class="am-g">
         
       
          <div class="am-u-sm-6">
          <label for="case-name" class="am-u-sm-3 am-form-label">排放源输入</label>
            
            <select  class="am-u-sm-2 " data-am-selected="{btnSize: 'sm'}">
              <option value="option1">区域一</option>
              <option value="option2">选项二</option>
              <option value="option3">选项三</option>
            </select>
           </div>
           
        <div class="am-u-sm-6">
         <button type="button" class="am-btn ">配置下一区域</button>
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
            <select data-am-selected="{btnSize: 'sm'}">
              <option value="option1">选项一...</option>
              <option value="option2">选项二.....</option>
              <option value="option3">选项三........</option>
            </select>
          </div>
          <div class="am-u-md-4  ">
              <button type="button" class="am-btn">预览</button>
          </div>
        </div>

        <div class="am-g am-margin-top">
          <div class="am-u-md-4  am-text-right">排放清单</div>
          <div class="am-u-md-4 ">
            <select data-am-selected="{btnSize: 'sm'}">
              <option value="option1">选项一...</option>
              <option value="option2">选项二.....</option>
              <option value="option3">选项三........</option>
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
        <form class="am-form">
            
            <div class="am-g am-margin-top">
              <div class="am-u-md-4  am-text-right">时间分配方案</div>
              <div class="am-u-md-4 ">
                <select data-am-selected="{btnSize: 'sm'}">
                  <option value="option1">选项一...</option>
                  <option value="option2">选项二.....</option>
                  <option value="option3">选项三........</option>
                </select>
              </div>
              <div class="am-u-md-4  ">
                  <button type="button" class="am-btn">预览</button>
              </div>
            </div>
            
            <div class="am-g am-margin-top">
              <div class="am-u-md-4  am-text-right">排放源类别</div>
              <div class="am-u-md-4 ">
                <select data-am-selected="{btnSize: 'sm'}">
                  <option value="option1">选项一...</option>
                  <option value="option2">选项二.....</option>
                  <option value="option3">选项三........</option>
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

          

        </form>
      </div>
    
      <div class="am-tab-panel am-fade" id="tab3">
        <form class="am-form">
              
        <div class="am-g am-margin-top-sm">
            <div class="am-g">
                <div class="am-u-md-4 am-text-right">
                    空间分配方案
                </div>
                <div class="am-u-md-4  ">
                        <select data-am-selected="{btnSize: 'sm'}">
                          <option value="option1">选项一...</option>
                          <option value="option2">选项二.....</option>
                          <option value="option3">选项三........</option>
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
                    <select data-am-selected="{btnSize: 'sm'}">
                        <option value="option1">选项一...</option>
                        <option value="option2">选项二.....</option>
                        <option value="option3">选项三........</option>
                    </select>
                </div>
                
                 <div class="am-u-sm-2 am-text-right">
                        空间分配代码
                </div>
                <div class="am-u-sm-2  ">
                    <select data-am-selected="{btnSize: 'sm'}">
                        <option value="option1">选项一...</option>
                        <option value="option2">选项二.....</option>
                        <option value="option3">选项三........</option>
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
        </form>
      </div>

      <div class="am-tab-panel am-fade" id="tab4">
        <form class="am-form">
              
        <div class="am-g am-margin-top-sm">
            <div class="am-g">
                <div class="am-u-md-4 am-text-right">
                    大气化学物种分配方案
                </div>
                <div class="am-u-md-4  ">
                        <select data-am-selected="{btnSize: 'sm'}">
                          <option value="option1">选项一...</option>
                          <option value="option2">选项二.....</option>
                          <option value="option3">选项三........</option>
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
                    <select data-am-selected="{btnSize: 'sm'}">
                        <option value="option1">选项一...</option>
                        <option value="option2">选项二.....</option>
                        <option value="option3">选项三........</option>
                    </select>
                </div>
                
                 <div class="am-u-sm-2 am-text-right">
                        污染物
                </div>
                <div class="am-u-sm-2  ">
                    <select data-am-selected="{btnSize: 'sm'}">
                        <option value="option1">选项一...</option>
                        <option value="option2">选项二.....</option>
                        <option value="option3">选项三........</option>
                    </select>
                </div>
                
                 <div class="am-u-sm-2 am-text-right">
                        排放源类别
                </div>
                <div class="am-u-sm-1 am-u-end  ">
                    <select data-am-selected="{btnSize: 'sm'}">
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
        </form>
      </div>

      <div class="am-tab-panel am-fade" id="tab5">
        <form class="am-form">
          <div class="am-g am-margin-top-sm">
            <div class="am-u-sm-2 am-u-md-2 am-text-right">
              植被功能型
            </div>
            <div class="am-u-sm-6 am-u-md-4 ">
                <select data-am-selected="{btnSize: 'sm'}">
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
                <select data-am-selected="{btnSize: 'sm'}">
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
                    <select data-am-selected="{btnSize: 'sm'}">
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
          
        </form>
    </div>



    </div>
  </div>

  <div class="am-margin">
    <button type="button" class="am-btn am-btn-primary am-btn-xs">提交保存</button>
    <button type="button" class="am-btn am-btn-primary am-btn-xs">放弃保存</button>
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
