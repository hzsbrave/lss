	var $table = $('#table');
	var $container = $('.container');
    $(function () {//工具组组件
        $('#toolbar').find('select').change(function () {
            $table.bootstrapTable('refreshOptions', {
                exportDataType: $(this).val()
            });
        });
    });
	var id = $('#userid').val();
	var no = $('#studentno').val();
	var list = [];
	$("#table").bootstrapTable({
		   toggle:"table",//不用写 JavaScript 直接启用表格。
		   cache: true,//False to disable caching of AJAX requests.
           url:$('#hidden').val()+"/student/listevaluate.action?id="+id,
           showColumns:true,//True to show the columns drop down list.
           search:true,//显示搜索框
           showRefresh:false,//显示刷新按钮
           showToggle:false,//显示切换表格显示形式的按钮
           pagination:true,//在表格底部生成分页组件
           height:$(window).height() - 250,//定义表格的高度。
           striped:true,//显示行条纹
           pageList:"[10, 25, 50, 100, All]",
    		   toolbar:"#toolbar",   
    		   //detailView:"false",
    		   columns: [{//表列配置对象,看到列属性的更多细节
    				field: 'classCourseId',
    				title: '班级课程ID',
    	            align: 'center',
    	            valign: 'middle',
    	            visible:false
    			   },{
      			field: 'courseName',
      			title: '课程名称',
      			align: 'center'
      		 	},{
      			 field: 'teacherName',
      			 title: '教师名称',
      			 align: 'center'
      		 	},{
      		 		field: 'evaluateScore',
      		 		title: '评价分数',
      		 		align: 'center',
      		 		editable: {
      	                type: 'text',
      	                title: '评价分数',
      	                validate: function (v) {
      	                    if (!v) return '评价分数不能为空';
      	                }
      	            },
      	            sortable: true,
      		 	},{
                    field: 'evaluateText',
                    title: '意见',
                    align: 'center',
                    editable: {
      	                type: 'text',
      	                title: '意见',
      	                validate: function (v) {
      	                    if (!v) return '意见不能为空';
      	                }
      	            }
               }] ,
               onEditableSave: function (field, row, oldValue, $el) {
    			  //四个参数field, row, oldValue, $el分别对应着当前列的名称、当前行数据对象、更新前的值、编辑的当前单元格的jQuery对象
            	  // alert(row.classCourseId+row.courseName+row.evaluateScore+row.evaluateText);
            	   var flag = 0;
            	   if(list!=null&&list.length>0){
            		   for(var i=0;i<list.length;i++){
                		   if(list[i].classCourseId == row.classCourseId){
                			   list[i].evaluateScore = row.evaluateScore;
                			   list[i].evaluateText = row.evaluateText;
                			   flag = 1;
                			   break;
                		   }
                	   }
            	   }
            	   if(flag==0){
            		   row.studentId = no;
                	   list.push(row);
            	   }
            	  // alert(list[list.length-1].classCourseId+list[list.length-1].evaluateScore+list[list.length-1].evaluateText);

               }
	});
	
	$("#submit").on("click",function(){
		var obj = new Object();
		obj.list = list;
		
		$.ajax({
			type:"POST",
			url:$('#hidden').val()+"/student/updateevaluate.action",
			dataType:"json",
			contentType:"application/json",
			data:JSON.stringify(obj),
			success: function(data){
				if(data.success == 1){
					alert("评价成功");
				}else{
					alert("评价失败");
				}
				location.href = $('#hidden').val()+"/student/evaluate.action";
			},
			error:function(){
				alert("评价失败");
			}
		});	
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
