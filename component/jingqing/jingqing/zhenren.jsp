<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>警情确认</title>
<link rel="stylesheet"
	href="<%=basePath%>webpage/lywjw/lyswjwwx/node_modules/jquery-weui/dist/css/jquery-weui.css">
<link rel="stylesheet"
	href="<%=basePath%>webpage/lywjw/lyswjwwx/node_modules/jquery-weui/dist/lib/weui.min.css">
<link rel="stylesheet"
	href="<%=basePath%>webpage/lywjw/lyswjwwx/component/jingqing/css/allrw.css">
<link rel="stylesheet"
	href="<%=basePath%>webpage/lywjw/lyswjwwx/css/biaodan.css">
<link rel="stylesheet"
	href="<%=basePath%>webpage/lywjw/lyswjwwx/component/jingqing/css/Detailspage.css">
<script
	src="<%=basePath%>webpage/lywjw/lyswjwwx/node_modules/jquery-weui/dist/lib/jquery-2.1.4.js"></script>
<script
	src="<%=basePath%>webpage/lywjw/lyswjwwx/node_modules/jquery-weui/dist/js/jquery-weui.min.js"></script>
<script src="<%=basePath%>webpage/lywjw/lyswjwwx/js/basepath.js"></script>
<style>
#type_show {
	border: 1px solid #eee;
	padding: 5px;
}

.weui-dialog__bd .weui-cell {
	padding: 10px 15px;
}

.weui-btn {
	width: 100%;
}

html, body {
	height: 100%;
}

strong {
	font-size: 18px !important;
}
</style>
</head>
<body>
	<iframe style="display: block" id="geoPage" width="100%" height="0%"
		frameborder=0 scrolling="no"
		src="https://apis.map.qq.com/tools/geolocation?key=7PCBZ-SJ6WQ-J2I5Y-GZIOV-5GZ5F-X7BZL&referer=linyiditu&effect=zoom"></iframe>
	<iframe style="display: block" id="markPage" width="100%" height="0%"
		frameborder=0 scrolling="no" src=""></iframe>

	<div class="container">
		<h2 class="detail_head">报警信息</h2>
		<div class="detail_boxs">
			<div class="detail_box detail_list">
				<div>
					<span class="b_text">报警人：</span><span class="s_text">${record.bjrxm}</span>
				</div>
				<div>
					<span class="b_text"> 联系电话:</span><span class="s_text"><a
						href="tel:${record.lxdh}">${record.lxdh}</a></span>
				</div>
			</div>
			<div class="detail_box detail_list">
				<div>
					<span> 报警时间:</span>
				</div>
				<div>
					<span>${record.bjsj}</span>
				</div>

			</div>
			
			<%-- <input id='sjdbh' type="hidden" name="sjdbh" value="${sjdbh}"> --%>
				<input id='openid' type="hidden" name="openid" value="${openid}">
				<input id='openid' type="hidden" name="jyopenid" value="${jyopenid}">

			<div class="detail_box detail_area  orientation">
				<div class="text_area b_text">事件单编号:</div>
				<div class="text_area s_text">${record.sjdbh}</div>
			</div>
			<div class="detail_box detail_area  orientation">
				<div class="text_area b_text">地理定位</div>
				<div class="text_area s_text">${record.bjdz}</div>
			</div>
			<div class="detail_box detail_area">
				<div class="text_area b_text">报警内容:</div>
				<div class="text_area s_text">${record.bjnr}</div>
			</div>

			<div class="detail_box detail_area">
				<div class="text_area b_text">我的评价:</div>
				<div class="text_area s_text">
					<textarea name="text" id="wdpj" style="width: 95%;" cols="25"
						rows="6" placeholder="请输入对本次警情的评价">${record.proposal }</textarea>
				</div>
			</div>

			<div class="weui-form-preview__ft">
				<button type="submit"
					class="weui-form-preview__btn weui-form-preview__btn_primary blue_color">确定</button>
			</div>

		</div>
	</div>
	</div>

</body>
<script
	src="<%=basePath%>webpage/lywjw/lyswjwwx/component/jingqing/js/dw.js"></script>
<script>


/* let sjdbh=$('#sjdbh').val() */

    $('.weui-cell_swiped').swipeout()
    $('.blue_color').on('click', (e) => {
        console.log("a")
        e.preventDefault(); 
      let wdpj=$('#wdpj').val();
      let openid=$('#openid').val();
      let jyopenid=$('#jyopenid').val();
    
$.post("<%=basePath%>wx/wechatcall/wechatsign","openid=${openid}&&jyopenid=${jyopenid}&sjdbh=${sjdbh}&wdpj="+wdpj,function(result){
   
if(result==1){
 window.location.href = "http://lywjw.cn:80/lyswjw_wechat/wx/login/index?type=2"
}else if(result==2){

}else{

}
  });

})

</script>


</html>