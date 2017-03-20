	var $table = $('#table');
	var html;
	 var operateEvents = {
			'click .compile': function (e, value, row, index) {
				//alert('You click like action, row: ' + JSON.stringify(row));
				var info = JSON.stringify(row);
				info = JSON.parse(info);
				modal("#teacherModal",'comfirm');
			html = "";
	   html +='<form class="form-horizontal" role="form">';
	   html+= '<div class="form-group" style="display:none;">';
		html+= '   <label class="col-sm-3 control-label" for="major">id：</label>';
		html+= '   <div class="col-sm-5">';
		html+= '      <input class="form-control" id="teacher" type="text" value='+info.id+'>';
		html+= '    </div>';
		html+= ' </div> ';
         html +='         <div class="form-group">';
         html +='            <label class="col-sm-2 control-label" for="teacherid">教师号：</label>';
         html +='            <div class="col-sm-5">';
         html +='               <input class="form-control" id="teacherNo" type="text" value='+info.teacheNo+'>';
         html +='            </div>';
         html +='            <div class="col-sm-3 alert alert-danger"></div>';
         html +='         </div>';
         html +='         <div class="form-group">';
         html +='            <label class="col-sm-2 control-label" for="teachername">姓名：</label>';
         html +='            <div class="col-sm-5">';
         html +='               <input class="form-control" id="teacherName" type="text" value='+info.teacherName+'>';
         html +='            </div>';
         html +='            <div class="col-sm-3 alert alert-danger"></div>';
         html +='         </div>';
         /*
         html +='         <div class="form-group">';
         html +='            <label class="col-sm-2 control-label" for="staffid">职工号：</label>';
         html +='            <div class="col-sm-5">';
         html +='               <input class="form-control" id="staffid" type="text" value='+info.staffid+'>';
         html +='            </div>';
         html +='            <div class="col-sm-3 alert alert-danger"></div>';
         html +='         </div>';
         */
         html +='         <div class="form-group">';
         html +='            <label class="col-sm-2 control-label">性别：</label>';
         html +='            <div class="col-sm-5">';
         html +='               <label class="checkbox-inline">';
         if(info.gender==0){
         	html += '          <input type="radio" name="gender" value="0" checked>男';
         }else{
         	html += '          <input type="radio" name="gender" value="0">男';
         }
         html += '       </label>';
         html += '       <label class="checkbox-inline">';
         if(info.gender==1){
         	 html += '          <input type="radio" name="gender" value="1" checked>女';
         }else{
         	 html += '          <input type="radio" name="gender" value="1">女';
         }
         html +='             </label>';
         html +='            </div>';
         html +='            <div class="col-sm-3 alert alert-danger"></div>';
         html +='         </div>';
         /*
         html +='         <div class="form-group">';
         html +='            <label class="col-sm-2 control-label" for="birthplace">籍贯：</label>';
         html +='            <div class="col-sm-5">';
         html +='               <input class="form-control" id="birthplace" type="text" value='+info.birthplace+'>';
         html +='            </div>';
         html +='            <div class="col-sm-3 alert alert-danger"></div>';
         html +='         </div>';
         html +='          <div class="form-group">';
         html +='            <label class="col-sm-2 control-label" for="nation">民族：</label>';
         html +='            <div class="col-sm-5">';
         html +='               <input class="form-control" id="nation" type="text" value='+info.nation+'>';
         html +='            </div>';
         html +='            <div class="col-sm-3 alert alert-danger"></div>';
         html +='         </div>';
         html +='         <div class="form-group">';
         html +='            <label class="col-sm-2 control-label" for="birth">出生年月：</label>';
         html +='            <div class="col-sm-5">';
         html +='               <input class="form-control" id="birth" type="month" value='+info.birth+'>';
         html +='            </div>';
         html +='            <div class="col-sm-3 alert alert-danger"></div>';
         html +='         </div>';
         html +='         <div class="form-group">';
         html +='            <label class="col-sm-2 control-label" for="entrytime">入职时间：</label>';
         html +='            <div class="col-sm-5">';
         html +='               <input class="form-control" id="entrytime" type="month" value='+info.entrytime+'>';
         html +='            </div>';
         html +='            <div class="col-sm-3 alert alert-danger"></div>';
         html +='         </div>';
         html +='         <div class="form-group">';
         html +='            <label class="col-sm-2 control-label" for="address">家庭住址：</label>';
         html +='            <div class="col-sm-5">';
         html +='               <input class="form-control" id="address" type="text" value='+info.address+'>';
         html +='            </div>';
         html +='            <div class="col-sm-3 alert alert-danger"></div>';
         html +='         </div>';
         html +='         <div class="form-group">';
         html +='            <label class="col-sm-2 control-label" for="dwelling">现住址：</label>';
         html +='            <div class="col-sm-5">';
         html +='               <input class="form-control" id="dwelling" type="text" value='+info.dwelling+'>';
         html +='            </div>';
         html +='            <div class="col-sm-3 alert alert-danger"></div>';
         html +='         </div>';
         html +='         <div class="form-group">';
         html +='            <label class="col-sm-2 control-label" for="phone">联系方式：</label>';
         html +='            <div class="col-sm-5">';
         html +='               <input class="form-control" id="phone" type="tel" value='+info.phone+'>';
         html +='            </div>';
         html +='            <div class="col-sm-3 alert alert-danger"></div>';
         html +='         </div>';
         html +='         <div class="form-group">';
         html +='            <label class="col-sm-2 control-label" for="identity">身份证：</label>';
         html +='            <div class="col-sm-5">';
         html +='               <input class="form-control" id="identity" type="text" value='+info.identity+'>';
         html +='            </div>';
         html +='            <div class="col-sm-3 alert alert-danger"></div>';
         html +='         </div>';
         html +='         <div class="form-group">';
         html +='            <label class="col-sm-2 control-label" for="politicsStatus">政治面貌：</label>';
         html +='            <div class="col-sm-5">';
         html +='               <input class="form-control" id="politicsStatus" type="text" value='+info.politicsStatus+'>';
         html +='            </div>';
         html +='            <div class="col-sm-3 alert alert-danger"></div>';
         html +='         </div>';
         */
         html +='         <div class="form-group">';
         html +='            <label class="col-sm-2 control-label" for="edubackground">学历：</label>';
         html +='            <div class="col-sm-5">';
         //html +='               <input class="form-control" id="xueliId" type="text" value='+info.xueliId+'>';
         html += '         <select class="form-control" id="xueliId">';
         html += '          </select>';
         html +='            </div>';
         html +='            <div class="col-sm-3 alert alert-danger"></div>';
         html +='         </div>';
         
         html +='         <div class="form-group">';
         html +='            <label class="col-sm-2 control-label" for="edubackground">所属学院：</label>';
         html +='            <div class="col-sm-5">';
         html += '         <select class="form-control" id="academyId">';
         html += '          </select>';
         html +='            </div>';
         html +='            <div class="col-sm-3 alert alert-danger"></div>';
         html +='         </div>';
         
         html +='      </form>';
                $(".modal-body").html(html);
                var appendOption = "";
				appendOption += '<option value="0">本科</option>';
				appendOption += '<option value="1">硕士</option>';
				appendOption += '<option value="2">教授</option>';
				appendOption += '<option value="3">博士</option>';
				$("#xueliId").append(appendOption);
				
				$.get($('#hidden').val()+"/teacher/add2.action",function(data){
	               var appendOption = "";
	               var list = data.academyList;
	               for(var j=0;j<list.length;j++){
	                  appendOption += '<option value='+list[j].id+'>'+list[j].academyName+'</option>';
	               }
	               $("#academyId").append(appendOption);
	            });
			},
			'click .remove': function (e, value, row, index) {
				modal("#teacherModal",'danger');
				$(".modal-footer > button:eq(1)").attr("class","btn btn-danger single");
				$("font:eq(0)").html(row.id).siblings().html(row.majorName);
				/*$table.bootstrapTable('remove', {
					field: 'id',
					values: [row.id]
				});*/
			}
	};
	 
		$('#selectModel').modal({
		    show:true,
		    backdrop:true
		})//手动显示模态框
	 
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
            '<a class="btn btn-info btn-xs compile" href="javascript:void(0)" title="编辑">',
            '<i class="glyphicon glyphicon-pencil"></i>',
            '</a>  ',
            '<a class="btn btn-danger btn-xs remove" href="javascript:void(0)" title="删除">',
            '<i class="glyphicon glyphicon-remove"></i>',
            '</a>'
        ].join('');
    }
	$("#table").bootstrapTable({
		 method: 'post',
		 toggle:"table",//不用写 JavaScript 直接启用表格。
		 cache: true,//False to disable caching of AJAX requests.
         url:$('#hidden').val()+"/teacher/get.action",//数据源/graduationProject/data/data1.json
         showColumns:true,//True to show the columns drop down list.
         search:false,// 不显示搜索框
         showRefresh:false,//显示刷新按钮
         showToggle:true,//显示切换表格显示形式的按钮
         pagination:true,//在表格底部生成分页组件
         height:$(window).height() - 250,//定义表格的高度。
         striped:true,//显示行条纹
         pageList:"[15, 20, 25, 30]",
         dataType: "json",
         pageSize: 10,  
         pageNumber:1, 
         sidePagination: "server",
         contentType:"application/x-www-form-urlencoded",
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
            visible: false,
		   }, {
			field: 'teacheNo',
			title: '教师号',
			align: 'center',
			sortable: true,
		   }, {
			field: 'teacherName',
			title: '姓名',
			align: 'center',
		   }, {
			field: 'staffid',
			title: '职工号',
			align: 'center',
			visible: false,
		   }, {
			field: 'genderStr',
			title: '性别',
			align: 'center',
		   }, {
			field: 'birthplace',
			title: '籍贯',
			align: 'center',
			visible: false,
		   }, {
			field: 'nation',
			title: '民族',
			align: 'center',
			visible: false,
		   }, {
			field: 'birth',
			title: '出生年月',
			align: 'center',
			visible: false,
		   }, {
			field: 'entrytime',
			title: '入职时间',
			align: 'center',
			visible: false,
		   },{
			field: 'address',
			title: '家庭住址',
			align: 'center',
			visible: false,
		   },{
			field: 'dwelling',
			title: '现住址',
			align: 'center',
			visible: false,
		   },{
			field: 'phone',
			title: '联系方式',
			align: 'center',
			visible: false,
		   },{
			field: 'identity',
			title: '身份证',
			align: 'center',
			visible: false,
		   },{
			field: 'politicsStatus',
			title: '政治面貌',
			align: 'center',
			visible: false,
		   },{
			field: 'xueliId',
			title: '学历',
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
         $table.bootstrapTable('refresh', {url: $('#hidden').val()+'/teacher/get.action'});
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
   		 var id = $('#teacher').val();
   		 var teacherNo = $('#teacherNo').val();
   		 var teacherName = $('#teacherName').val();
   		 var gender = $('input[name="gender"]:checked').val();
   		 var xueliId = $('#xueliId').val();
   		 var academyId = $('#academyId').val();
   		 var url = '&id='+id+'&teacherNo='+teacherNo+'&teacherName='+teacherName+'&gender='+gender+'&xueliId='+xueliId+'&academyId='+academyId;
   		 $.ajax({
	        	url:$('#hidden').val()+"/teacher/update.action",
	        	type:"post",
	        	data:url,
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
	        	url:$('#hidden').val()+"/teacher/deleteList.action",
	        	type:"post",
	      		traditional:true,
	        	data:{stuIds:ids},
	        	dataType:"json",
	        	success:function (data) {
	        		 if(data>0){
					  	alert("恭喜您 ，删除成功，共删除了"+data+"条记录！");
					  	$table.bootstrapTable('refresh', {url: $('#hidden').val()+'/teacher/get.action'});
					  	//location.reload();
					  	$(".modal-backdrop").hide();
					  }else{
					  	alert("对不起 ，删除失败！");								  
					  }
	        	},
	        	error: function (XMLHttpRequest, textStatus, errorThrown) {
	        		 alert('删除错误','请联系管理员！','error');
	        	}
	        });
   	 }
   });
});
