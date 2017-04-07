	 var $table = $('#table');
	 var $container = $('.container'),
        $table = $('#table'),
        $small = $('#small'),
        $big = $('#big');



    $(function () {
        $small.click(function () {
            $container.width($container.width() - 50);
            $table.bootstrapTable('resetView');
        });
        $big.click(function () {
            $container.width($container.width() + 50);
            $table.bootstrapTable('resetView');
        });
    });
	function detailFormatter(index, row) {//展开
        var html = [];
        $.each(row, function (key, value) {
            html.push('<p><b>' + key + ':</b> ' + value + '</p>');
        });
        return html.join('');
    }
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
           url:$('#hidden').val()+"/score/get.action",//数据源
           showColumns:true,//True to show the columns drop down list.
           search:true,//显示搜索框
           showRefresh:true,//显示刷新按钮
           showToggle:true,//显示切换表格显示形式的按钮
           pagination:true,//在表格底部生成分页组件
           height:"600",//定义表格的高度。
           striped:true,//显示行条纹
           pageList:"[10, 25, 50, 100, All]",
		   clickToSelect: false,//当单击列时正确选择复选框或radiobox。
		   toolbar:"#tool",   
		   detailView:"true",
		   columns: [{//表列配置对象,看到列属性的更多细节
			field: 'id',
			title: 'ID',
            align: 'center',
            valign: 'middle',
            visible:false
		   }, {
			field: 'studentNo',
			title: '学号',
			align: 'center',
		   },{
			field: 'studentName',
			title: '姓名',
			align: 'center',
		   },{
			   field: 'classesName',
			   title: '班级',
			   align: 'center',
		   },{
			   field: 'courseName',
			   title: '课程',
			   align: 'center',
		   },  {
			field: 'score',
			title: '成绩',
			align: 'center',
			sortable: true,
		   }, ]
		   
	});
$(function () {
    var $result = $('#eventsResult');
   	var $trash = $('#trash');
	var $refresh = $("button[name='refresh']");
	$refresh.click(function(){
         $table.bootstrapTable('refresh', {url: $('#hidden').val()+'/score/get.action'});
	});
    $('#table').on('all.bs.table', function (e, name, args) {
        //console.log('Event:', name, ', data:', args);
    })
    .on('click-row.bs.table', function (e, row, $element) {//监听点击列事件
        $result.text('Event: click-row.bs.table');
    })
    .on('dbl-click-row.bs.table', function (e, row, $element) {//监听双击列事件
        $result.text('Event: dbl-click-row.bs.table');
    })
    .on('sort.bs.table', function (e, name, order) {//监听点击排序按钮事件
        $result.text('Event: sort.bs.table');
    })
    .on('check.bs.table', function (e, row) {//监听tale中的checkbox点击选中事件
        $result.text('Event: check.bs.table');
		$("#trash").removeAttr("disabled");
    })
    .on('uncheck.bs.table', function (e, row) {//监听tale中的checkbox点击未选中事件
        $result.text('Event: uncheck.bs.table');
		$("#trash").attr("disabled","disabled");
    })
    .on('check-all.bs.table', function (e) {//监听tale中的checkbox点击全选事件
        $result.text('Event: check-all.bs.table');
		$("#trash").removeAttr("disabled");
    })
    .on('uncheck-all.bs.table', function (e) {//监听tale中的checkbox点击全选取消事件
        $result.text('Event: uncheck-all.bs.table');
		$("#trash").attr("disabled","disabled");
    })
    .on('load-success.bs.table', function (e, data) {//监听加载（成功）事件
        $result.text('Event: load-success.bs.table');
		$("#trash").attr("disabled","disabled");
    })
    .on('load-error.bs.table', function (e, status) {//监听加载（失败）事件
        $result.text('Event: load-error.bs.table');
		$("#trash").attr("disabled","disabled");
    })
    .on('column-switch.bs.table', function (e, field, checked) {
        $result.text('Event: column-switch.bs.table');
    })
    .on('page-change.bs.table', function (e, number, size) {//监听翻页事件
        $result.text('Event: page-change.bs.table');
    })
    .on('search.bs.table', function (e, text) {//监听搜索框事件
        $result.text('Event: search.bs.table');
    });
	
	/*$trash.click(function () {
            var ids = $.map($table.bootstrapTable('getSelections'), function (row) {
                return row.id;
            });
			console.log(ids);
            $table.bootstrapTable('remove', {
                field: 'id',
                values: ids
            });
    });*/
});