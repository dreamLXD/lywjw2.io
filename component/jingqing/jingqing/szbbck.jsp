<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>民警换班查看</title>
	<link rel="stylesheet" href="<%=basePath%>webpage/lywjw/lyswjwwx/node_modules/layui-src/dist/css/layui.css">

<script src="<%=basePath%>webpage/lywjw/lyswjwwx/node_modules/jquery-weui/dist/lib/jquery-2.1.4.js"></script>
<script src="<%=basePath%>webpage/lywjw/lyswjwwx/node_modules/layui-src/dist/layui.all.js"></script>
<style>
.layui-table, .layui-table-view{
	margin-top: 0;
}
td,th{
	text-align: center;
}
th .layui-table-cell{
	text-align: center;
}
</style>
</head>
<body>
	<input type="hidden" id='hd' style="display: none" value="${openid}" name="" id="">
	<table class="layui-hide" id="test"></table>
</body>

<script type="text/html" id="logins" >
		{{#  if(d.type=='1'){ }}
		   <a class="layui-btn layui-btn-xs" href="#" lay-event="edit" style="background-color: #ff6830">警员</a>
		{{#  } else { }}
		   <a class="layui-btn layui-btn-xs" href="#" lay-event="edit" style="background-color: #339cff">代班所长</a>
		{{#  } }}
</script>
<script>
		console.log($('#hd').val())
	      $.ajax({
          url: '<%=basePath%>wx/reportonduty/reportOnDutyDataList',
          type: 'post',
          data: {'openid':$('#hd').val()},
          dataType: 'json',
          success: function (msg) {
			console.log(msg)
          }
      })
	layui.use('table', function () {
		var table = layui.table;

		table.render({
			elem: '#test'
			, url: '<%=basePath%>wx/reportonduty/reportOnDutyDataList',
			method:'post',
			where:{'openid':$('#hd').val()},	
			cellMinWidth: 80      //全局定义常规单元格的最小宽度，layui 2.2.1 新增
			, cols: [[
				{ field: 'zsxm', width: 100, title: '姓名'}
				, { field: 'sbsj', width: 180,title:'时间' }
				, { field: 'type',  title: '状态', toolbar:'#logins' }
			]]
		});
	});


</script>

</html>