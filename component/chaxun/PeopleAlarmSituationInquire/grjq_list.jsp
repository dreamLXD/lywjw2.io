
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
	<title>报警查看</title>
	<link rel="stylesheet" href="<%=basePath%>webpage/lywjw/lyswjwwx/node_modules/jquery-weui/dist/css/jquery-weui.css">
	<link rel="stylesheet" href="<%=basePath%>webpage/lywjw/lyswjwwx/node_modules/jquery-weui/dist/lib/weui.min.css">
	<link rel="stylesheet" href="<%=basePath%>webpage/lywjw/lyswjwwx/component/chaxun/PeopleAlarmSituationInquire/css/allrw.css">
	<link rel="stylesheet" href="<%=basePath%>webpage/lywjw/lyswjwwx/component/chaxun/PeopleAlarmSituationInquire/css/grlist_bd.css">
	<link rel="stylesheet" href="<%=basePath%>webpage/lywjw/lyswjwwx/component/chaxun/PeopleAlarmSituationInquire/css/biaodan.css">
	<link rel="stylesheet" href="<%=basePath%>webpage/lywjw/lyswjwwx/component/chaxun/PeopleAlarmSituationInquire/css/Detailspage.css">
	<script src="<%=basePath%>webpage/lywjw/lyswjwwx/node_modules/jquery-weui/dist/lib/jquery-2.1.4.js"></script>
	<script src="<%=basePath%>webpage/lywjw/lyswjwwx/node_modules/jquery-weui/dist/js/jquery-weui.min.js"></script>
	<link rel="stylesheet" href="<%=basePath%>webpage/lywjw/lyswjwwx/node_modules/layui-src/dist/css/layui.css">
	<style>
		#type_show {
			border: 1px solid #eee;
			padding: 5px;

		}

		.weui-dialog__bd .weui-cell {
			padding: 10px 15px;
		}
		.container,body,html{
			height: 100%;
		}
		#tab2,#tab1{
			background-color: #fff;
		}
		.detail_list div{
			padding: 5px;
			padding-left:10px;
		}
	</style>
	<style>
		ul.layui-timeline {
			padding: 40px;
			box-sizing: border-box;
		}
	
		.layui-timeline-title span {
			display: block;
		}
	
		.layui-timeline-title span:nth-of-type(2) {
			font-size: 14px;
			color: #999;
		}
		
		.layui-timeline-title {
			margin-bottom: 5px;
		}
	
		.layui-timeline-title .pj {
			display: inline-block;
			background-color: #007aff;
			color: #fff;
			padding: 5px 15px;
			border-radius: 5px;
			font-size: 14px;
		}
	
		.layui-timeline-axis {
			color: #007aff;
		}
		.layui-timeline-content p{
				white-space: nowrap;
				text-overflow: ellipsis;
				overflow: hidden;
		}
	</style>
</head>

<body>
	
	<div class="container">
		<div class="weui-tab">
			<div class="weui-navbar">
				<a class="weui-navbar__item weui-bar__item--on" href="#tab1">
					报警详情
				</a>
				<a class="weui-navbar__item" href="#tab2">
					进度查看
				</a>
			</div>
			<div class="weui-tab__bd">
				<div id="tab1" class="weui-tab__bd-item weui-tab__bd-item--active">
						<div class="detail_boxs">
							<div class="detail_box detail_list">
								<div><span class="b_text">报警人：</span><span class="s_text">${record.record_call.bjrxm}</span></div>
								<div><span class="b_text"> 联系电话:</span><span class="s_text"><a href="tel:108237189131">${record.record_call.lxdh}</a></span>

							</div>
							
							
							</div>
							<div class="detail_box detail_area  orientation">
									<div class="text_area b_text">报警时间:</div>
									<div class="text_area s_text">${record.record_call.bjsj}</div>
								</div>

							<!-- <div class="detail_box detail_area  orientation">
								<div class="text_area b_text">事件单编号:</div>
								<div class="text_area s_text">${record.sjdbh}</div>
							</div> -->
							<div class="detail_box detail_area">
								<div class="text_area b_text">地理定位 </div>
								<div class="text_area s_text">${record.record_call.bjdz}</div>
							</div>
							<div class="detail_box detail_area">
								<div class="text_area b_text">报警内容:</div>
								<div class="text_area s_text">${record.record_call.bjnr}</div>
							</div>
							<!-- <div class="weui-form-preview__ft">
								<a type="submit" href='jindu/jindu.html'
									class="weui-form-preview__btn weui-form-preview__btn_primary blue_color">进度查看</a>
							</div> -->
						</div>
				</div>
				<div id="tab2" class="weui-tab__bd-item">
					<ul class="layui-timeline">
						<li class="layui-timeline-item" <c:if test="${record.record_call.state ne '000' }">style="display:none" </c:if>>
							<i class="layui-icon layui-timeline-axis">&#xe63f;</i>
							<div class="layui-timeline-content layui-text">
								<h3 class="layui-timeline-title"><span><c:if test="${record.record_call.state eq '000' }">已提交</c:if></span><span>${record.record_call.bjsj}</span> </h3>
								<p>
									报警人：${record.record_call.bjrxm}
								</p>
							</div>
						</li>
						<li class="layui-timeline-item" <c:if test="${record.record_JJDB.state ne '0' }">style="display:none" </c:if>>
							<i class="layui-icon layui-timeline-axis">&#xe63f;</i>
							<div class="layui-timeline-content layui-text">
								<h3 class="layui-timeline-title"><span><c:if test="${record.record_JJDB.state eq '0' }">已接警</c:if></span><span>${record.record_JJDB.jjsj }</span> </h3>
								<p>
										管辖单位：${record.record_JJDB.jjdw }
									</p>
							</div>
						</li>
						<li class="layui-timeline-item" <c:if test="${record.record_feedback.state ne '1' }">style="display:none" </c:if> >
							<i class="layui-icon layui-timeline-axis">&#xe63f;</i>
							<div class="layui-timeline-content layui-text">
								<h3 class="layui-timeline-title"><span><c:if test="${record.record_feedback.state eq '1' }">已出警</c:if></span><span>${record.record_feedback.create_date }</span></h3>
								<p>
									出警单位：${record.record_feedback.sspcs }
								</p>
					
							</div>
						</li>
						<li class="layui-timeline-item" <c:if test="${record.record_arrice.state ne '2' }">style="display:none" </c:if> >
							<i class="layui-icon layui-timeline-axis">&#xe63f;</i>
							<div class="layui-timeline-content layui-text">
								<h3 class="layui-timeline-title"><span><c:if test="${record.record_arrice.state eq '2' }">已到场</c:if></span><span>${record.record_arrice.create_date }</span></h3>
								
							</div>
						</li>
						<li class="layui-timeline-item" <c:if test="${record.record_alarmlist.state ne '3' }">style="display:none" </c:if> >
								<i class="layui-icon layui-timeline-axis">&#xe63f;</i>
								<div class="layui-timeline-content layui-text">
									<h3 class="layui-timeline-title"><span><c:if test="${record.record_alarmlist.state eq '3' }">已处理完成</c:if></span><span>${record.record_alarmlist.create_date }</span></h3>
									<p>
										警情类型：${record.record_alarmlist.jqxldm }<br/>
										处理结果：${record.record_alarmlist.jqcljg }
									</p>
								</div>
							</li>
						<li class="layui-timeline-item" <c:if test="${record.record_alarmlist.state ne '3' }">style="display:none" </c:if>>
							<i class="layui-icon layui-timeline-axis">&#xe63f;</i>
							<div class="layui-timeline-content layui-text">
								<h3 class="layui-timeline-title"><span class="pj">评价</span></h3>			
							</div>
						</li>
					</ul>
				</div>
			</div>
		</div>


		

	</div>

</body>
<script>
	  $(function () {
			$('.pj').on('click', function () {
				window.location.href = 'myd.html'
			})
		// 	$('.pj').on('click', function () {
        //      window.location.href = "<%=basePath%>wx/Query/Evaluate?openid=${openid}&id=${id}&sjdbh="+sjdbh;
        //  })
		})
</script>


</html>