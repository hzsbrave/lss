	var $table = $('#table');
	var $container = $('.container');
    $(function () {//工具组组件
        $('#toolbar').find('select').change(function () {
            $table.bootstrapTable('refreshOptions', {
                exportDataType: $(this).val()
            });
        });
    });
	var course_id = $('#course').val();
	var teacher_id = $('#teacherId').val();
    $(function(){
    	init();
    });
    function init(){

    	$("#table").bootstrapTable({
    		   toggle:"table",//不用写 JavaScript 直接启用表格。
    		   cache: true,//False to disable caching of AJAX requests.
               url:$('#hidden').val()+"/teacher/listAnalysisDetail.action?course_id="+course_id+"&teacher_id="+teacher_id,
               showColumns:false,//True to show the columns drop down list.
               search:false,//显示搜索框
               showRefresh:false,//显示刷新按钮
               showToggle:false,//显示切换表格显示形式的按钮
               pagination:true,//在表格底部生成分页组件
               height:$(window).height() - 450,//定义表格的高度。
               striped:true,//显示行条纹
               pageList:"[10, 25, 50, 100, All]",
               toolbar:"#toolbar",   
               columns: [{
          		field: 'evaluateText',
          		title: '评价',
          		align: 'center'
          		},{
          		field: 'evaluateScore',
          		title: '分数',
          		align: 'center'
          		}] 
    	});
    }
	
    function change(obj){
    	  $("#table").bootstrapTable('refresh',{url: $('#hidden').val()+'/teacher/listAnalysisDetail.action?course_id='+$(obj).val()+"&teacher_id="+teacher_id});
    }
    
	$(function () {
    var $result = $('#eventsResult');
   	var $trash = $('#trash');
/*	var $refresh = $("button[name='refresh']");
	$refresh.click(function(){
         $table.bootstrapTable('refresh', {url: $('#hidden').val()+'/score/studentScore.action'});
	});*/
    $('#table').on('all.bs.table', function (e, name, args) {
        //console.log('Event:', name, ', data:', args);
    })
    .on('load-success.bs.table', function (e, data) {//监听加载（成功）事件
        $result.text('Event: load-success.bs.table');
		$("#trash").attr("disabled","disabled");
    })
    .on('load-error.bs.table', function (e, status) {//监听加载（失败）事件
        $result.text('Event: load-error.bs.table');
		$("#trash").attr("disabled","disabled");
    })
});
