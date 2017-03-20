	var $table = $('#table');
	 var operateEvents = {
			'click .compile': function (e, value, row, index) {
				//alert('You click like action, row: ' + JSON.stringify(row));
				var info = JSON.stringify(row);
				info = JSON.parse(info);
				modal("#studentsModal",'comfirm');
				var html = "";
				html += '<form class="form-horizontal" role="form">';
				html+= '<div class="form-group" style="display:none;">';
				html+= '   <label class="col-sm-3 control-label" for="major">id：</label>';
				html+= '   <div class="col-sm-5">';
				html+= '      <input class="form-control" id="student" type="text" value='+info.id+'>';
				html+= '    </div>';
				html+= ' </div> ';
                html += '   <div class="form-group">';
                html += '      <label class="col-sm-3 control-label" for="stuid">学号：</label>';
                html += '      <div class="col-sm-5">';
                html += '         <input class="form-control" id="studentNo" type="text" value='+info.studentNo+'>';
                html += '      </div>';
                html += '      <div class="col-sm-3 alert alert-danger"></div>';
                html += '   </div>';
                html += '   <div class="form-group">';
                html += '      <label class="col-sm-3 control-label" for="stuname">姓名：</label>';
                html += '      <div class="col-sm-5">';
                html += '         <input class="form-control" id="studentName" type="text" value='+info.studentName+'>';
                html += '      </div>';
                html += '      <div class="col-sm-3 alert alert-danger"></div>';
                html += '   </div>';
                html += '   <div class="form-group">';
                html += '      <label class="col-sm-3 control-label" for="grade">年级：</label>';
                html += '      <div class="col-sm-5">';
                html += '         <input class="form-control" id="grade" type="text" value='+info.grade+'>';
                html += '      </div>';
                html += '      <div class="col-sm-3 alert alert-danger"></div>';
                html += '   </div>';
                html += '   <div class="form-group">';
                html += '      <label class="col-sm-3 control-label" for="classid">班级：</label>';
                html += '      <div class="col-sm-5">';
                html += '         <select class="form-control" id="classId">';
                html += '          </select>';
                html += '     	</div>';
                html += '   </div>';
                html += '   <div class="form-group">';
                html += '      <label class="col-sm-3 control-label">性别：</label>';
                html += '      <div class="col-sm-5">';
                html += '         <label class="checkbox-inline">';
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
                html += '       </label>';
                html += '      </div>';
                html += '      <div class="col-sm-3 alert alert-danger"></div>';
                html += '   </div>';
                html += '   <div class="form-group">';
                html += '      <label class="col-sm-3 control-label" for="termbegin">入学时间：</label>';
                html += '      <div class="col-sm-5">';
                html += '         <input class="form-control" id="enterDate" type="date" value='+info.enterTime+'>';
                html += '      </div>';
                html += '      <div class="col-sm-3 alert alert-danger"></div>';
                html += '   </div>';
                /*
                html += '   <div class="form-group">';
                html += '      <label class="col-sm-2 control-label" for="birth">出生年月：</label>';
                html += '      <div class="col-sm-5">';
                html += '         <input class="form-control" id="birth" type="month" value='+info.birth+'>';
                html += '      </div>';
                html += '      <div class="col-sm-3 alert alert-danger"></div>';
                html += '   </div>';
                html += '    <div class="form-group">';
                html += '      <label class="col-sm-2 control-label" for="nation">民族：</label>';
                html += '      <div class="col-sm-5">';
                html += '         <input class="form-control" id="nation" type="text" value='+info.nation+'>';
                html += '      </div>';
                html += '      <div class="col-sm-3 alert alert-danger"></div>';
                html += '   </div>';
                html += '   <div class="form-group">';
                html += '      <label class="col-sm-2 control-label" for="birthplace">籍贯：</label>';
                html += '      <div class="col-sm-5">';
                html += '         <input class="form-control" id="birthplace" type="text" value='+info.birthplace+'>';
                html += '      </div>';
                html += '      <div class="col-sm-3 alert alert-danger"></div>';
                html += '   </div>';
                html += '   <div class="form-group">';
                html += '      <label class="col-sm-2 control-label" for="sog">毕业中学：</label>';
                html += '      <div class="col-sm-5">';
                html += '         <input class="form-control" id="sog" type="text" value='+info.sog+'>';
                html += '      </div>';
                html += '      <div class="col-sm-3 alert alert-danger"></div>';
                html += '   </div>';
                html += '   <div class="form-group">';
                html += '      <label class="col-sm-2 control-label" for="politicsStatus">政治面貌：</label>';
                html += '      <div class="col-sm-5">';
                html += '         <input class="form-control" id="politicsStatus" type="text" value='+info.politicsStatus+'>';
                html += '      </div>';
                html += '      <div class="col-sm-3 alert alert-danger"></div>';
                html += '   </div>';
                html += '   <div class="form-group">';
                html += '      <label class="col-sm-2 control-label" for="address">家庭住址：</label>';
                html += '      <div class="col-sm-5">';
                html += '         <input class="form-control" id="address" type="text" value='+info.address+'>';
                html += '      </div>';
                html += '      <div class="col-sm-3 alert alert-danger"></div>';
                html += '   </div>';
                html += '   <div class="form-group">';
                html += '      <label class="col-sm-2 control-label" for="year">学制：</label>';
                html += '      <div class="col-sm-5">';
                html += '         <input class="form-control" id="year" type="text" value='+info.year+'>';
                html += '      </div>';
                html += '      <div class="col-sm-3 alert alert-danger"></div>';
                html += '   </div>';
                html += '   <div class="form-group">';
                html += '      <label class="col-sm-2 control-label" for="phone">手机号码：</label>';
                html += '      <div class="col-sm-5">';
                html += '         <input class="form-control" id="phone" type="text" value='+info.phone+'>';
                html += '      </div>';
                html += '      <div class="col-sm-3 alert alert-danger"></div>';
                html += '   </div>';
                html += '   <div class="form-group">';
                html += '      <label class="col-sm-2 control-label" for="qqnumber">QQ：</label>';
                html += '      <div class="col-sm-5">';
                html += '         <input class="form-control" id="qqnumber" type="text" value='+info.qqnumber+'>';
                html += '      </div>';
                html += '      <div class="col-sm-3 alert alert-danger"></div>';
                html += '   </div>';
                html += '   <div class="form-group">';
                html += '      <label class="col-sm-2 control-label" for="email">邮箱：</label>';
                html += '      <div class="col-sm-5">';
                html += '         <input class="form-control" id="email" type="email" value='+info.email+'>';
                html += '      </div>';
                html += '      <div class="col-sm-3 alert alert-danger"></div>';
                html += '   </div>';
                */
                html += '</form>';
                $(".modal-body").html(html);
                
                $.get($('#hidden').val()+"/class/get.action",function(data){
					var json = eval(data);
					$("#classId").empty();
					var appendOption = "";
					for(var i = 0; i<json.length; i++){
						if(json[i].className == info.className){
							appendOption += '<option value='+json[i].id+' selected>'+json[i].className+'</option>';
						}else{
							appendOption += '<option value='+json[i].id+'>'+json[i].className+'</option>';
						}
					}
					$("#classId").append(appendOption);
				});
				
			},
			'click .remove': function (e, value, row, index) {
				modal("#studentsModal",'danger');
				$(".modal-footer > button:eq(1)").attr("class","btn btn-danger single");
				$("font:eq(0)").html(row.id).siblings().html(row.majorName);
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
            '<a class="btn btn-info btn-xs compile" href="javascript:void(0)" title="编辑">',
            '<i class="glyphicon glyphicon-pencil"></i>',
            '</a>  ',
            '<a class="btn btn-danger btn-xs remove" href="javascript:void(0)" title="删除">',
            '<i class="glyphicon glyphicon-remove"></i>',
            '</a>'
        ].join('');
    }
	$("#table").bootstrapTable({
		   toggle:"table",//不用写 JavaScript 直接启用表格。
		   cache: true,//False to disable caching of AJAX requests.
           url:$('#hidden').val()+"/student/getStudent.action",//数据源/graduationProject/data/data1.json
           showColumns:true,//True to show the columns drop down list.
           search:true,//显示搜索框
           showRefresh:true,//显示刷新按钮
           showToggle:true,//显示切换表格显示形式的按钮
           pagination:true,//在表格底部生成分页组件
           height:$(window).height() - 250,//定义表格的高度。
           striped:true,//显示行条纹
           pageList:"[5, 10, 15, 20, All]",
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
			field: 'studentNo',
			title: '学号',
			align: 'center',
			sortable: true,
		   }, {
			field: 'studentName',
			title: '姓名',
			align: 'center',
		   },{
			field: 'grade',
			title: '年级',
			align: 'center',
		   },{
			field: 'className',
			title: '班级',
			align: 'center',
		   },{
			field: 'genderStr',
			title: '性别',
			align: 'center',
		   },{
			field: 'birthday',
			title: '出生年月',
			align: 'center',
			visible: false,
		   },{
			field: 'national',
			title: '民族',
			align: 'center',
			visible: false,
		   },{
			field: 'natives',
			title: '籍贯',
			align: 'center',
			visible: false,
		   },{
			field: 'middleSchool',
			title: '毕业中学',
			align: 'center',
			visible: false,
		   },{
			field: 'political',
			title: '政治面貌',
			align: 'center',
			visible: false,
		   },{
			   field: 'idcard',
			   title: '身份证',
			   align: 'center',
			   visible: false,
		   },{
			   field: 'familyPhone',
			   title: '家庭电话',
			   align: 'center',
			   visible: false,
		   },{
			field: 'address',
			title: '家庭住址',
			align: 'center',
			visible: false,
		   },{
			field: 'enterTime',
			title: '入学时间',
			align: 'center',
			visible: true,
		   },{
			field: 'phone',
			title: '手机号码',
			align: 'center',
			visible: false,
		   },{
			field: 'qq',
			title: 'QQ',
			align: 'center',
			visible: false,
		   },{
			field: 'email',
			title: '邮箱',
			align: 'center',
			visible: false,
		   },{
			   field: 'examinee',
			   title: '考生号',
			   align: 'center',
			   visible: false,
		   },{
            field: 'control',
            title: '操作',
            align: 'center',
			events: operateEvents,
           // formatter: operateFormatter,
           }, ]
		   
	});
	
	$(function () {
    var $result = $('#eventsResult');
   	var $trash = $('#trash');
	var $refresh = $("button[name='refresh']");
	$refresh.click(function(){
         $table.bootstrapTable('refresh', {url: $('#hidden').val()+'/student/getStudent.action'});
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
	
    $('#comfirm').click(function () {
    	 $(".modal-backdrop").hide();
    	 if($('#comfirm').hasClass("btn-info")){
    		 var id = $('#student').val();
    		 var studentNo = $('#studentNo').val();
    		 var studentName = $('#studentName').val();
    		 var grade = $('#grade').val();
    		 var classId = $('#classId').val();
    		 var gender = $('input[name="gender"]:checked').val();
    		 var enterDate = $('#enterDate').val();
    		 var url = '&id='+id+'&studentNo='+studentNo+'&studentName='+studentName+'&grade='+grade+'&classId='+classId
    		 		+'&gender='+gender+'&enterDate='+enterDate;
    		 $.ajax({
 	        	url:$('#hidden').val()+"/student/update.action",
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
 	        	url:$('#hidden').val()+"/student/deleteList.action",
 	        	type:"post",
 	      		traditional:true,
 	        	data:{stuIds:ids},
 	        	dataType:"json",
 	        	success:function (data) {
 	        		 if(data>0){
 					  	alert("恭喜您 ，删除成功，共删除了"+data+"条记录！");
 					  	$table.bootstrapTable('refresh', {url: $('#hidden').val()+'/student/getStudent.action'});
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
