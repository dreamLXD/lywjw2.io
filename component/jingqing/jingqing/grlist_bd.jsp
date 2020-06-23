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
	<meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>已接处的警情</title>
	<link rel="stylesheet" href="<%=basePath%>webpage/lywjw/lyswjwwx/node_modules/jquery-weui/dist/css/jquery-weui.css">
	<link rel="stylesheet" href="<%=basePath%>webpage/lywjw/lyswjwwx/node_modules/jquery-weui/dist/lib/weui.min.css">
	<link rel="stylesheet" href="<%=basePath%>webpage/lywjw/lyswjwwx/component/jingqing/css/allrw.css">
	<link rel="stylesheet" href="<%=basePath%>webpage/lywjw/lyswjwwx/css/biaodan.css">
	<link rel="stylesheet" href="<%=basePath%>webpage/lywjw/lyswjwwx/component/jingqing/css/Detailspage.css">
	<link rel="stylesheet" href="<%=basePath%>webpage/lywjw/lyswjwwx/css/myweui.css">
	<script src="<%=basePath%>webpage/lywjw/lyswjwwx/js/basepath.js"></script>
	<script src="<%=basePath%>webpage/lywjw/lyswjwwx/node_modules/jquery-weui/dist/lib/jquery-2.1.4.js"></script>
	<script src="<%=basePath%>webpage/lywjw/lyswjwwx/node_modules/jquery-weui/dist/js/jquery-weui.min.js"></script>
	<script src="http://res.wx.qq.com/open/js/jweixin-1.0.0.js" type="text/javascript"></script>
	<script type="text/javascript"
		src="http://api.map.baidu.com/api?v=2.0&ak=GzkZlhct3L7gLaibMW9mPicN3pUB33L4"></script>
<script src="<%=basePath%>webpage/lywjw/lyswjwwx/js/jiazai.js"></script>

	<!-- <script src="//cdn.bootcss.com/eruda/1.4.0/eruda.min.js"></script>
 <script>eruda.init();</script> -->
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

		html,
		body {
			height: 100%;
		}

		strong {
			font-size: 18px !important;
		}

		body {
			position: relative;
		}

		.load {
			margin: 0;
			padding: 0;
			position: fixed;
			width: 100%;
			left: 0;
			top: 0;
			height: 100%;
			z-index: 9999999999;
			background-color: rgba(0, 0, 0, 0.5);
			line-height: 100vh;
		}
	</style>
</head>

<body>

	<!-- <div class="load" style="">
		        <i class="weui-loading" style="width:30px;height:30px"></i>
		        <span class="weui-loadmore__tips" style='color: #fff;font-size: 16px;'>正在定位中</span>
	</div> -->
	<iframe style="display: block" id="geoPage" width="100%" height="0%" frameborder=0 scrolling="no"
		src="https://apis.map.qq.com/tools/geolocation?key=7PCBZ-SJ6WQ-J2I5Y-GZIOV-5GZ5F-X7BZL&referer=linyiditu&effect=zoom"></iframe>
	<iframe style="display: block" id="markPage" width="100%" height="0%" frameborder=0 scrolling="no" src=""></iframe>

	<div class="container">
		<h2 class="detail_head">报警信息</h2>
		<div class="detail_boxs">
			<div class="detail_box detail_list">
				<div>
					<span class="b_text">报警人：</span><span class="s_text">${record.bjrxm}</span>
				</div>
				<div>
					<span class="b_text"> 联系电话:</span><span class="s_text">
						<a href="tel:${record.lxdh}">${record.lxdh}</a></span>
				</div>
			</div>
			

			<input id='sjdbh' type="hidden" name="sjdbh" value="${record.sjdbh}" >
			<input id='openid' type="hidden" name="openid" value="${openid}" >

			<div class="detail_box detail_area  orientation">
					<div class="text_area b_text"> 报警时间:</div>
					<div class="text_area s_text">${record.bjsj}</div>
				</div>

			<div class="detail_box detail_area  orientation">
				<div class="text_area b_text">事件单编号:</div>
				<div class="text_area s_text">${record.sjdbh}</div>
			</div>
			<div class="detail_box detail_area  orientation">
				<div class="text_area b_text">地理定位<span class="dldw"></span></div>
				<div class="text_area s_text">${record.bjdz}</div>
			</div>
			<div class="detail_box detail_area">
				<div class="text_area b_text">报警内容:</div>
				<div class="text_area s_text">${record.bjnr}</div>
			</div>

			<!-- <button type="submit" onclick ="deleat()">作废警情</button> -->

			<div class="weui-form-preview__ft">
				<button type="submit"
					class="weui-form-preview__btn weui-form-preview__btn_primary blue_color" >进入警情</button>
			</div>

		</div>
	</div>

	   


	<div id="allmap"></div>

</body>

<script src="<%=basePath%>webpage/lywjw/lyswjwwx/component/jingqing/js/dw.js"></script>

<script type="text/javascript">
	var latitude = '';
	var longitude = '';

	var obj={};
	let openid=$('#openid').val();
	let sjdbh=$('#sjdbh').val()
	
	obj['openid']=openid;
	obj['sjdbh']=sjdbh;
 
	console.log(obj)

	$(function () {
		$.ajax({
			url: base_path + '/wechatcall/Verification',
			type: 'post',
			data: obj,
			dataType: 'json',
			async: false,
			success: function (msg) {
				console.log(msg)
				if (msg == '1') {

					console.log(msg)
					// 初始化内容  
					//alert('地图定位中，请稍候')
					//jiazai('')
					//$.showLoading('地图定位中，请稍候');

					wx.config({
						debug: false, // 开启调试模式,调用的所有api的返回值会在客户端alert出来，若要查看传入的参数，可以在pc端打开，参数信息会通过log打出，仅在pc端时才会打印。
						appId: '${appId}', // 必填，公众号的唯一标识
						timestamp: "${timestamp}", // 必填，生成签名的时间戳
						nonceStr: '${nonceStr}', // 必填，生成签名的随机串
						signature: '${signature}',// 必填，签名，见附录1
						jsApiList: ['getLocation'] // 必填，需要使用的JS接口列表，所有JS接口列表见附录2
					});

					wx.ready(function () {
						wx.getLocation({
							type: 'gcj02', // 默认为wgs84的gps坐标，如果要返回直接给openLocation用的火星坐标，可传入'gcj02'
							success: function (res) {
								latitude = res.latitude; // 纬度，浮点数，范围为90 ~ -90
								longitude = res.longitude; // 经度，浮点数，范围为180 ~ -180。
								var speed = res.speed; // 速度，以米/每秒计
								var accuracy = res.accuracy; // 位置精度
								console.log(longitude)
								//jiazaiHid()
								 $.hideLoading();

							}
						});
					});


					$('.weui-cell_swiped').swipeout()
					$('.blue_color').on('click', (e) => {
						e.preventDefault();
						$.showLoading();
						window.location.href = "<%=basePath%>wx/wechatcall/wechatreceive2?openid=${openid}&sjdbh=${record.sjdbh}&ditu=1&lat=" + latitude + "&lng=" + longitude;
					})
			
		        } else if (msg == '2') {
					console.log(msg)
					

					$.showLoading('地图定位中，请稍候');

					wx.config({
						debug: false, // 开启调试模式,调用的所有api的返回值会在客户端alert出来，若要查看传入的参数，可以在pc端打开，参数信息会通过log打出，仅在pc端时才会打印。
						appId: '${appId}', // 必填，公众号的唯一标识
						timestamp: "${timestamp}", // 必填，生成签名的时间戳
						nonceStr: '${nonceStr}', // 必填，生成签名的随机串
						signature: '${signature}',// 必填，签名，见附录1
						jsApiList: ['getLocation'] // 必填，需要使用的JS接口列表，所有JS接口列表见附录2
					});

					wx.ready(function () {
						wx.getLocation({
							type: 'gcj02', // 默认为wgs84的gps坐标，如果要返回直接给openLocation用的火星坐标，可传入'gcj02'
							success: function (res) {
								latitude = res.latitude; // 纬度，浮点数，范围为90 ~ -90
								longitude = res.longitude; // 经度，浮点数，范围为180 ~ -180。
								var speed = res.speed; // 速度，以米/每秒计
								var accuracy = res.accuracy; // 位置精度
								console.log(longitude)
								//jiazaiHid()
								 $.hideLoading();

							}
						});
					});

					$('.weui-cell_swiped').swipeout()
					$('.blue_color').on('click', (e) => {
						e.preventDefault();
						$.confirm({
							title: '是否在报警位置',
							text: '',
							onOK: function () {
								// 点击确认		
								$.showLoading("正在进入警情");			
								window.location.href = "<%=basePath%>wx/wechatcall/wechatreceive2?openid=${openid}&sjdbh=${record.sjdbh}&ditu=2&lat=" + latitude + "&lng=" + longitude;
							},
							onCancel: function () {


							}
						});
					})


				} else if (msg == '0') {

				}
			}
		})
	})


	function ceshi() {
		window.location.href = "<%=basePath%>wx/wechatcall/wechatreceive2?openid=${openid}&sjdbh=${record.sjdbh}&lat=" + latitude + "&lng=" + longitude;
	}


	function deleat() {
		$.confirm({
							title: '是否作废该警情',
							text: '',
							onOK: function () {
								// 点击确认		
								$.showLoading("正在处理该警情");
								console.log(obj);
								
								$.ajax({
                                                   url:base_path + '/wechatcall/PolicingInvalid',
                                                   type:'post',
                                                   data:obj,
                                                   dataType:'json',
//                                                   async: false,
                                                   success:function (msg) {                             						
                              						 	console.log(msg)
                									   if(msg=='1'){
                                                        $.hideLoading()
														$.showLoading("正在返回首页")         																		          
                                                         window.location.replace(base_path + '/login/PageJump?PageName=police&openid='+openid);
                                                                                                                										        							              										
                									   }else if(msg=='0'){
                                                        $.hideLoading()
                                                         $.toast("作废失败");
                                                         
                									   }else{
                                                        $.hideLoading()
                                                        $.toast("网络波动请重新进行操作任务");
                                                       
                									   }
                					       	}
                                    }) 
							},
							onCancel: function () {


							}
						});
	}





	$('.dldw').on('click', () => {
		window.location.href = '<%=basePath%>wx/jumppolice/navCar?openid=${openid}&xzb=${record.xzb}&yzb=${record.yzb}'
	})


		// alert(latitude)
		// alert(longitude)


		//	console.log(obj)

		//  	var geolocation = new BMap.Geolocation();
		//     geolocation.getCurrentPosition(function(r){
		//     if(this.getStatus() == BMAP_STATUS_SUCCESS){
		//          mk = new BMap.Marker(r.point);
		//  		getAddress(r.point);


		//     }else {
		//         alert('failed'+this.getStatus());
		//      }
		//  });
		//  //获取地址信息，设置地址label
		//  function getAddress(point){
		//      var gc = new BMap.Geocoder();
		//      gc.getLocation(point, function(rs){
		//          var addComp = rs.addressComponents;
		//          var address =  addComp.province +  addComp.city + addComp.district + addComp.street + addComp.streetNumber;//获取地址
		//  		console.log(address);
		//  		alert(address)
		//      });

		//  }


		//H5 获取当前位置经纬度 
		//var location_lon = '',location_lat = '';
		// 经度,纬度 
		//   if (navigator.geolocation)
		//   { navigator.geolocation.getCurrentPosition(function (position) { location_lon = position.coords.longitude; location_lat = position.coords.latitude;
		// 	alert('h5经度：'+location_lon);alert('h5纬度：'+location_lat); }); }else { alert("您的设备不支持定位功能"); }

		// var map = new BMap.Map("allmap");
		// var point = new BMap.Point(116.331398,39.897445);
		// map.centerAndZoom(point,12);

		// var geolocation = new BMap.Geolocation();
		// geolocation.getCurrentPosition(function(r){
		// if(this.getStatus() == BMAP_STATUS_SUCCESS){
		// var mk = new BMap.Marker(r.point);
		// map.addOverlay(mk);
		// map.panTo(r.point);
		// alert('您的位置：'+r.point.lng+','+r.point.lat);
		// latitude=r.point.lat;
		// longitude=r.point.lng;
		// console.log(latitude)
		// console.log(longitude)
		// }
		// else {
		// alert('failed'+this.getStatus());
		// }        
		// },{enableHighAccuracy: true})





</script>


</html>