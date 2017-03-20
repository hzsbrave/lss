<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="/common/common.jspf" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="zh-CN">
  <head>
    <meta charset="utf-8">
    <title>ECharts</title>
    <!-- 引入 echarts.js -->
    <script type="text/javascript" src="<%=basePath %>common/js/jquery-1.11.1.min.js"></script>
    <script src="<%=basePath %>common/js/echarts.min.js"></script>
</head>
<body>
    <!-- 为ECharts准备一个具备大小（宽高）的Dom -->
    <div id="main" style="width: 600px;height:361px;"></div>

    <script type="text/javascript">
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
   		   $.get('../data/ApartScore.json').done(function (data) {
			    for(var i = 0; i < data.length; i++){
			   		arr[i] = data[i]["classname"];
					statistical[i] = getLevel(data[i]["score"]);
				}
			   console.log(statistical);
			   arr.join();
			   console.log(arr);
			   var myChart = echarts.init(document.getElementById('main'));
		        //var arr = ['12计本1班','12计本2班','12软件1班','12软件2班','12网络1班','12网络2班']
		        // 指定图表的配置项和数据
		        // 
				var json1 = "";
				for(var i = 0; i < arr.length; i++){
					json1 +="{name:'"+arr[i]+"',type:'bar',data:["+statistical[i]+"]},";
				}
				json2 = "["+json1.substring(0, json1.length-1)+"]";
				json2 = eval('(' + json2 + ')');
		        var option = {
		        	title: {
				        text: '分数范围人数统计（单位:人）',
				        subtext: 'From Toby',
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
			}); 
        // 基于准备好的dom，初始化echarts实例
        
    </script>
</body>
</html>