 // 基于准备好的dom，初始化echarts实例
  function chart(){
        var arr = new Array();
           var statistical = new Array();
               function getLevel(score){
                    var tempScore,f = 0,e = 0,d = 0,c = 0,b = 0,a = 0;
                    for(var j = 0; j < score.length; j++){
                         tempScore = parseInt(score[j]/10);
                            switch (tempScore){
                                case 10: a = a + 1;break;
                                case 9:  b = b + 1;break;
                                case 8:  c = c + 1;break;
                                case 7:  d = d + 1;break;
                                case 6:  e = e + 1;break;
                                default: f = f + 1;break;
                        }
                    }
                    return [f,e,d,c,b,a];
                }
               var grade = $("#grade").val();
               var course = $("#course").val();
               var classes = $("#pickListResult option").map(function(){return $(this).attr("id");}).get().join(", ");
               console.log("学年:"+grade+";课程："+course+";班级名称："+classes);
               $.ajax({
                   url:"http://localhost:4414/lss/score/getScore.action",
                   data:{grade:grade,course:course,classes:classes},
                   type:"post",
                   dataType:"json",
                   success:function(data){
                       for(var i = 0; i < data.length; i++){
                           arr[i] = data[i]["classname"];
                           statistical[i] = getLevel(data[i]["scores"]);
                       }
                       arr.join();
                       var myChart = echarts.init(document.getElementById('chart'));
                       //var arr = ['12计本1班','12计本2班','12软件1班','12软件2班','12网络1班','12网络2班']
                       // 指定图表的配置项和数据
                       //
                       var json1 = "";
                       for(var i = 0; i < arr.length; i++){
                           json1 +="{name:'"+arr[i]+"',type:'bar',data:["+statistical[i]+"]},";
                       }
                       json2 = "["+json1.substring(0, json1.length-1)+"]";
                       json2 = eval('(' + json2 + ')');
                       console.log(arr);
                       console.log(json2);
                       var option = {
                           title: {
                               text: '分数范围人数统计（单位:人）',
                               subtext: '统计的课程:  '+curriculumName,
                               //sublink: 'http://e.weibo.com/1341556070/AjQH99che'
                           },
                           tooltip : {
                               trigger: 'axis',
                               axisPointer : {            // 坐标轴指示器，坐标轴触发有效
                                   type : 'shadow'        // 默认为直线，可选为：'line' | 'shadow'
                               }
                           },
                           legend: {
                               top:'15%',
                               data:arr
                           },
                           grid: {
                               top:'25%',
                               left: '3%',
                               right: '4%',
                               bottom: '5%',
                               containLabel: true
                           },
                           xAxis : [
                               {
                                   type : 'category',
                                   data : ['0-59','60-69','70-79','80-89','90-99','100']
                               }
                           ],
                           yAxis : [
                               {
                                   type : 'value'
                               }
                           ],
                           series : json2
                       };
                       // 使用刚指定的配置项和数据显示图表。
                       myChart.setOption(option);
                   }
               });
        // 基于准备好的dom，初始化echarts实例
}