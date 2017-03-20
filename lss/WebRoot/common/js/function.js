$(function () {
    var $result = $('#eventsResult');
   	var $trash = $('#trash');
	var $refresh = $("button[name='refresh']");
	var $table = $('#table');
	$refresh.click(function(){
         $table.bootstrapTable('refresh', {url: '/graduationProject/data/score.json'});
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
