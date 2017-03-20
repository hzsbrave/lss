	var $table = $('#table');
	 var operateEvents = {
			'click .like': function (e, value, row, index) {
				//alert('You click like action, row: ' + JSON.stringify(row));
				var info = JSON.stringify(row);
				info = JSON.parse(info);
				modal("#academyModal",'comfirm');
				var html = "";
				html += '<form class="form-horizontal" role="form">';
				html+= '<div class="form-group" style="display:none;">';
				html+= '   <label class="col-sm-3 control-label" for="academy">id：</label>';
				html+= '   <div class="col-sm-5">';
				html+= '      <input class="form-control" id="academy" type="text" value='+info.id+'>';
				html+= '    </div>';
				html+= ' </div> ';
				html+= '<div class="form-group">';
				html+= '   <label class="col-sm-3 control-label" for="academy">学院名称：</label>';
				html+= '   <div class="col-sm-5">';
				html+= '      <input class="form-control" id="academyName" type="text" value='+info.academyName+'>';
				html+= '    </div>';
				html+= '    <div class="col-sm-3 alert alert-danger"></div>';
				html+= ' </div> ';
                html+= ' </form>';
				$(".modal-body").html(html);
			},
			'click .remove': function (e, value, row, index) {
				modal("#academyModal",'danger');
				$(".modal-footer > button:eq(1)").attr("class","btn btn-danger single");
				$("font:eq(0)").html(row.id).siblings().html(row.academyName);
				//alert(row.id);
				/*$table.bootstrapTable('remove', {
					field: 'id',
					values: [row.id]
				});*/
			}
	};
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
	 function operateFormatter(value, row, index) {
        return [
            '<a class="btn btn-info btn-xs like" href="javascript:void(0)" title="Like">',
            '<i class="glyphicon glyphicon-pencil"></i>',
            '</a>  ',
            '<a class="btn btn-danger btn-xs remove" href="javascript:void(0)" title="Remove">',
            '<i class="glyphicon glyphicon-remove"></i>',
            '</a>'
        ].join('');
    }
	$("#table").bootstrapTable({
		   method: 'post',
		   toggle:"table",//不用写 JavaScript 直接启用表格。
		   cache: true,//False to disable caching of AJAX requests.
           url:$('#hidden').val()+"/academy/get.action",//数据源/graduationProject/data/data1.json
           showColumns:true,//True to show the columns drop down list.
           search:false,// 不显示搜索框
           showRefresh:true,//显示刷新按钮
           showToggle:true,//显示切换表格显示形式的按钮
           pagination:true,//在表格底部生成分页组件
           height:$(window).height() - 250,//定义表格的高度。
           striped:true,//显示行条纹
           pageList:"[15, 20, 25, 30, All]",

           dataType: "json",
           pageSize: 10,  
           pageNumber:1, 
           sidePagination: "server",
           
           queryParams: function (params) {
        	   return {
	        	   pagedIndex: this.pageNumber,
	        	   pagedSize: this.pageSize,
        	   };
           },
           
		   clickToSelect: false,//当单击列时正确选择复选框或radiobox。
		   toolbar:"#toolbar",   
		   detailView:"true",
		   
		   columns: [{//表列配置对象,看到列属性的更多细节
			field: 'state',
            checkbox: true,
            align: 'center',
            valign: 'middle'
		   }, {
			field: 'id',
			title: 'ID',
            align: 'center',
            valign: 'middle',
		   }, {
			field: 'academyName',
			title: '学院名称',
			align: 'center',
		   },{
            field: 'control',
            title: '操作',
            align: 'center',
			events: operateEvents,
            formatter: operateFormatter,
           }, ]
		   
	});
	
$(function () {
    var $result = $('#eventsResult');
   	var $trash = $('#trash');
	var $refresh = $("button[name='refresh']");
	$refresh.click(function(){
         $table.bootstrapTable('refresh', {url: $('#hidden').val()+'/academy/get.action'});
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
    $('#comfirm').click(function () {
    	 $(".modal-backdrop").hide();
    	 if($('#comfirm').hasClass("btn-info")){
    		 var id = $('#academy').val();
    		 var academyName = $('#academyName').val();
    		 $.ajax({
 	        	url:$('#hidden').val()+"/academy/update.action",
 	        	type:"post",
 	        	data:'&id='+id+'&academyName='+academyName,
 	        	dataType:"json",
 	        	success:function (data) {
 	        		 if(data>0){
 					  	alert("成功");
 					  	location.reload();
 					  }else{
 					  	alert("失败！");								  
 					  }
 	        	},
 	        	error: function (XMLHttpRequest, textStatus, errorThrown) {
 	        		 alert('错误','请联系管理员！','error');
 	        	}
 	        });
    	 }else{
	    	 var ids;
			if($('#comfirm').hasClass("multidel")){
				 ids = $.map($table.bootstrapTable('getSelections'), function (row) {
	                return row.id;
	            });
			}
			if($('#comfirm').hasClass("single")){
				console.log($("font:eq(0)").html())
				ids = $("font:eq(0)").html();
			}  
	        $.ajax({
	        	url:$('#hidden').val()+"/academy/deleteList.action",
	        	type:"post",
	      		traditional:true,
	        	data:{stuIds:ids},
	        	dataType:"json",
	        	success:function (data) {
	        		 if(data>0){
					  	alert("恭喜您 ，删除成功，共删除了"+data+"条记录，若无法删除的，则该学院下属有未删除的专业信息，不允许删除！");
					  	$table.bootstrapTable('refresh', {url:$('#hidden').val()+ '/academy/get.action'});
					  	//location.reload();
					  	$(".modal-backdrop").hide();
					  }else{
					  	alert("对不起 ，删除失败，该学院下属有未删除的专业信息，不允许删除！");								  
					  }
	        	},
	        	error: function (XMLHttpRequest, textStatus, errorThrown) {
	        		 alert('删除错误','请联系管理员！','error');
	        	}
	        });
    	 }
		
            
    });
});
