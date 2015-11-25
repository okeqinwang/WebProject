(function($) {
  'use strict';

  $(function() {
    var $fullText = $('.admin-fullText');
    $('#admin-fullscreen').on('click', function() {
      $.AMUI.fullscreen.toggle();
    });

    $(document).on($.AMUI.fullscreen.raw.fullscreenchange, function() {
      $fullText.text($.AMUI.fullscreen.isFullscreen ? '退出全屏' : '开启全屏');
    });
  });
})(jQuery);



function getlog(){
	//console.log("begin to get log...");
	$("#logs").empty();
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
					//console.log("check");
					//console.log("stop",stop);
					if(stop == "0"){
						//console.log("go on  stop == 0..");
					    updater.poll();
					}
				},
				onSuccess : function(data, dataStatus) {
					try {
					stop = data.stop;
					console.log(stop);
					lastTimeFileSize =data.lastTimeFileSize;
					//console.log(data.data);
					$("#logs").empty();
					$("#logs").append(data.data);
					} catch (e) {
						//console.log(e);
						//updater.onError();
						//return;
					}
					interval = setTimeout(updater.check,2000);
				},
				onError : function() {
					console.log("获取日志失败");
				}
			};
	    updater.poll();
	}