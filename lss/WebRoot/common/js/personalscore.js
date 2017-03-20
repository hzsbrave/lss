	var $table = $('#table');
	var $container = $('.container');

    $(function () {//工具组组件
        $('#toolbar').find('select').change(function () {
            $table.bootstrapTable('refreshOptions', {
                exportDataType: $(this).val()
            });
        });
    });
	$("#table").bootstrapTable({
		   toggle:"table",//不用写 JavaScript 直接启用表格。
		   cache: true,//False to disable caching of AJAX requests.
           url:$('#hidden').val()+"/score/studentScore.action",
           showColumns:true,//True to show the columns drop down list.
           search:true,//显示搜索框
           showRefresh:true,//显示刷新按钮
           showToggle:true,//显示切换表格显示形式的按钮
           pagination:true,//在表格底部生成分页组件
           height:"700",//定义表格的高度。
           striped:true,//显示行条纹
           pageList:"[10, 25, 50, 100, All]",
    		   toolbar:"#toolbar",   
    		   //detailView:"false",
    		   columns: [{
      			field: 'courseName',
      			title: '课程名称',
      			align: 'center'
      		 },{
            field: 'score',
            title: '分数',
            align: 'center'
           }]
		   
	});
	
	$(function () {
    var $result = $('#eventsResult');
   	var $trash = $('#trash');
	var $refresh = $("button[name='refresh']");
	$refresh.click(function(){
         $table.bootstrapTable('refresh', {url: $('#hidden').val()+'/score/studentScore.action'});
	});
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
