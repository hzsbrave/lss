$(function(){
	var $key = 0;
	var lival = "";
	var speed = 300;
	$(".sidebar-menu > li").on("click",function(event){
		$key = $(this).index();
		event.stopPropagation();
		$(this).addClass("active").children(".sec-menu").stop().slideToggle();
		$(this).siblings().removeClass("active").children(".sec-menu").stop().slideUp();
	});
	$(".sec-menu > li").click(function(event){
		event.stopPropagation();	
	});
	$(window).click(function(event){
		if(event.target != $(".sidebar-menu li a")){
			lival = $(".sidebar-menu > li").eq($key).children(".sec-menu").css("display");
			if(lival != "block"){
				$(".sidebar-menu > li").eq($key).removeClass("active");
			}
		}
	});
	$(".tooltips").click(function(){
		$("aside").toggleClass("toggle-nav");
		if($("aside").attr("class") == ""){
			$("#sidebar").stop().animate({"margin-left":0},speed);
			$(".main-content").stop().animate({"margin-left":210},speed);
		}else{
			$("#sidebar").stop().animate({"margin-left":-210},speed);
			$(".main-content").stop().animate({"margin-left":0},speed);
		}
	});
});
		  /*模块对话框开始*/
  			

			var modalPanel = {
                "success":{
                    "modalHeader":{"bgc":"#DFF0D8","color":"#3C763D","title":"成功！"},
                    "modalBody":"已启用",
                    "modalFooter":"none"
                    },
                "danger":{
                    "modalHeader":{"bgc":"#F2DEDE","color":"#B84442","title":"警告！"},
                    "modalBody":"确定删除<font style='display:none'></font><font></font>吗",
                    "modalFooter":"inline-block"
                    },
                "comfirm":{
                    "modalHeader":{"bgc":"#D9EDF7","color":"#31708F","title":"提示！"},
                    "modalBody":"确定审核<font style='display:none'></font><font></font>此订单吗",
                    "modalFooter":"inline-block"
                    },
                "warning":{
                    "modalHeader":{"bgc":"#FCF8E3","color":"#8A6D3B","title":"提示！"},
                    "modalBody":"此词条已被修改，请刷新页面！",
                    "modalFooter":"none"
                    }
			} ;
				function modal(modalid,stateID,panelcontent){
                 
                     tips(stateID,panelcontent);
                      $(modalid).modal({
                         keyboard:false,
                         backdrop:false
                      });    
                      $(".modal-backdrop").show();
             } 
                function tips(state,content){
                     $(".modal-header").css({"background":modalPanel[state].modalHeader.bgc,"color":modalPanel[state].modalHeader.color});
                     $(".modal-header > h4").html(modalPanel[state].modalHeader.title);
                    if(state == "success"){
                        $(".modal-body").html("<p>"+content+modalPanel[state].modalBody+"</p>");
						$(".modal-footer > .btn:eq(1)").attr("class","btn btn-success");
                    }else if(state == "danger" || state == "comfirm" || state == "warning"){
                        $(".modal-body").html("<p>"+modalPanel[state].modalBody+"</p>");
						if(state == "danger"){
							$(".modal-footer > .btn:eq(1)").attr("class","btn btn-danger");	
						}else if(state == "comfirm"){
							$(".modal-footer > .btn:eq(1)").attr("class","btn btn-info");	
						}else if(state == "warning"){
							$(".modal-footer > .btn:eq(1)").attr("class","btn btn-warning");	
						}
                    }
                     $(".modal-footer > .btn:eq(1)").css("display",modalPanel[state].modalFooter);
                }
				/*模块对话框结束*/
				/*正则验证表单输入合法性*/
				var ret,val,content,res;
				function checkInput(iptId,reg){
					 content = iptId.parent().siblings(".alert");
					 val = iptId.val();
					 res = reg.test(val);
					if(res == 0)ret = 0;
					else {
						ret = 1;
						}
					return ret;
				}