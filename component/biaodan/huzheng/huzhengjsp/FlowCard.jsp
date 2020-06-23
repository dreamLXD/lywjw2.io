<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>流动人口居住证</title>
	<link rel="stylesheet" href="<%=basePath%>webpage/lywjw/lyswjwwx/node_modules/jquery-weui/dist/css/jquery-weui.css">
	<link rel="stylesheet" href="<%=basePath%>webpage/lywjw/lyswjwwx/node_modules/jquery-weui/dist/lib/weui.min.css">
	<link rel="stylesheet" href="<%=basePath%>webpage/lywjw/lyswjwwx/css/weui_biaodan.css">
	<link rel="stylesheet" href="<%=basePath%>webpage/lywjw/lyswjwwx/css/biaodan.css">
		<link rel="stylesheet" href="<%=basePath%>webpage/lywjw/lyswjwwx/css/myweui.css">
	<script src="<%=basePath%>webpage/lywjw/lyswjwwx/js/basepath.js"></script>
	<script src="<%=basePath%>webpage/lywjw/lyswjwwx/component/biaodan/huzheng/js/alert.js"></script>
	<script src="<%=basePath%>webpage/lywjw/lyswjwwx/node_modules/jquery-weui/dist/lib/jquery-2.1.4.js"></script>
	<script src="<%=basePath%>webpage/lywjw/lyswjwwx/node_modules/jquery-weui/dist/js/jquery-weui.js"></script>
	<script src="<%=basePath%>webpage/lywjw/lyswjwwx/node_modules/jquery-weui/dist/js/city-picker.js"></script>
	<script src="<%=basePath%>webpage/lywjw/lyswjwwx/js/jquery.validate.min.js"></script>
	<script src="<%=basePath%>webpage/lywjw/lyswjwwx/js/regular.js"></script>
	<script src="<%=basePath%>webpage/lywjw/lyswjwwx/component/biaodan/huzheng/js/FlowCard.js"></script>
	<script src="<%=basePath%>webpage/lywjw/lyswjwwx/js/jiazai.js"></script>

</head>

<body>
	<div class="imgshow" style="display: block; z-index: 1000;">
		<div>
			<p class="title"> 类型选择 </p>
			<p class="zhushi" style="color: red;text-align: center">
				请在类型中选择符合自己的所办事项
			</p>
			<img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/shili/shili1.png" alt="">
			<button class="submit">确定</button>
		</div>
	</div>
	<form action="#" method="post" id='signupForm'>
		<section>

			<h1>办理类型</h1>
			<div class="weui-cells weui-cells_form">
				<div class="weui-cell">
					<div class="weui-cell__hd"><label class="weui-label">类型选择：</label></div>
					<div class="weui-cell__bd">
						<input class="weui-input" id="style" required name="bltype" placeholder="请选择类型">
					</div>
				</div>
			</div>

			<h1>申请人信息</h1>
			<div class="weui-cells weui-cells_form">
				<div class="weui-cell">
					<div class="weui-cell__hd"><label class="weui-label">姓名:</label></div>
					<div class="weui-cell__bd">
						<input class="weui-input" type="text" name="blrxm" disabled value="${jbxx.zsxm }" required
							placeholder="">
					</div>
				</div>
				<div class="weui-cell">
					<div class="weui-cell__hd"><label class="weui-label">公民身份证号码:</label></div>
					<div class="weui-cell__bd">
						<input class="weui-input" required name="blrsfz" disabled value="${jbxx.sfzh }" placeholder="">
					</div>
				</div>
				
				<div class="weui-cell">
					<div class="weui-cell__hd"  ><label class="weui-label">联系电话:</label></div>
					<div class="weui-cell__bd">
						<input class="weui-input" id="tel" required name="tel" placeholder="请输入电话号码" value="${jbxx.tel }" >
					</div>
				</div>				
<!-- 				<div class="weui-cell"> -->
<!-- 					<div class="weui-cell__hd"><label class="weui-label">性别:</label></div> -->
<!-- 					<div class="weui-cell__bd"> -->
<%-- 						<input class="weui-input" required name="blrxb" id="blrxb" disabled value="${jbxx.zsxb }" --%>
<!-- 							placeholder=""> -->
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 				<div class="weui-cell"> -->
<!-- 					<div class="weui-cell__hd"><label class="weui-label">联系电话:</label></div> -->
<!-- 					<div class="weui-cell__bd"> -->
<%-- 						<input class="weui-input" required name="blrtel" disabled value="${jbxx.tel }" placeholder=""> --%>
<!-- 					</div> -->
<!-- 				</div> -->
				<input type="hidden" id="openid" name="openid" value="${jbxx.openid}">
				<input type="hidden" id="uuid" name="uuid" value="${jbxx.uuid}">
			</div>

			<h1>受理地点</h1>
			<div class="weui-cells weui-cells_form">
				<div class="weui-cell">
					<div class="weui-cell__hd"><label class="weui-label">选择分局：</label></div>
					<div class="weui-cell__bd">
						<input class="weui-input" id="idfj" required name="blfj" placeholder="请先选择分局">
					</div>
				</div>
				<div class="weui-cell">
					<div class="weui-cell__hd"><label class="weui-label">选择派出所：</label></div>
					<div class="weui-cell__bd">
						<input class="weui-input" id="idpcs" required name="blpcs" placeholder="请选择派出所" readonly>
					</div>
				</div>
			</div>

			<h1>申请人基本信息</h1>
			<div class="weui-cells weui-cells_form">
			
				<div class="weui-cell">
					<div class="weui-cell__hd"><label class="weui-label">姓名:</label></div>
					<div class="weui-cell__bd">
						<input class="weui-input" type="text"  name="sbrxm" required value="${jbxx.zsxm }" required
							placeholder="请输入姓名">
					</div>
				</div>
				<div class="weui-cell">
					<div class="weui-cell__hd"><label class="weui-label">身份证号码:</label></div>
					<div class="weui-cell__bd">
						<input class="weui-input" required name="sbrsfz" required value="${jbxx.sfzh }" placeholder="请输入身份证号码">
					</div>
				</div>
			
			
			
<!-- 			
				<div class="weui-cell">
					<div class="weui-cell__hd"><label class="weui-label">姓名:</label></div>
					<div class="weui-cell__bd">
						<input class="weui-input" type="text" name="sbrxm" required placeholder="请输入姓名">
					</div>
				</div>
				<div class="weui-cell">
					<div class="weui-cell__hd"><label class="weui-label">身份证号码:</label></div>
					<div class="weui-cell__bd">
						<input class="weui-input" required name="sbrsfz" placeholder="请输入身份证号码">
					</div>
				</div> -->
				<div class="weui-cell">
					<div class="weui-cell__hd"><label class="weui-label">曾用名:</label></div>
					<div class="weui-cell__bd">
						<input class="weui-input" required name="sbrcym" placeholder="请输入曾用名">
					</div>
				</div>
				<div class="weui-cell">
					<div class="weui-cell__hd"><label class="weui-label">性别:</label></div>
					<div class="weui-cell__bd">
						<input class="weui-input" id="sex" required name="sbrxb" placeholder="请选择性别">
					</div>
				</div>
				<div class="weui-cell">
					<div class="weui-cell__hd"><label class="weui-label">手机号:</label></div>
					<div class="weui-cell__bd">
						<input class="weui-input" required name="sbrtel" placeholder="请输入手机号">
					</div>
				</div>

				<div class="weui-cell">
					<div class="weui-cell__hd"><label class="weui-label">固定电话:</label></div>
					<div class="weui-cell__bd">
						<input class="weui-input" required name="sbrgddh" placeholder="请输入固定电话">
					</div>
				</div>
				<div class="weui-cell">
					<div class="weui-cell__hd"><label class="weui-label">邮箱:</label></div>
					<div class="weui-cell__bd">
						<input class="weui-input" required name="sbryx" placeholder="请输入邮箱">
					</div>
				</div>
				<div class="weui-cell">
					<div class="weui-cell__hd"><label class="weui-label">其它联系方式:</label></div>
					<div class="weui-cell__bd">
						<input class="weui-input" required name="sbrqtlxfs" placeholder="请输入其它联系方式">
					</div>
				</div>

			</div>

			<h1>申报信息</h1>
			<div class="weui-cells weui-cells_form">
				<div class="weui-cell">
					<div class="weui-cell__hd"><label class="weui-label">现居地所属市局:</label></div>
					<div class="weui-cell__bd">
						<input class="weui-input" type="text" id="xjdsssj" name="xjdsssj" required
							placeholder="请选择现居地所属市局">
					</div>
				</div>
				<div class="weui-cell">
					<div class="weui-cell__hd"><label class="weui-label">现居地所属分局:</label></div>
					<div class="weui-cell__bd">
						<input class="weui-input" required id="xjdssfj" name="xjdssfj" placeholder="请选择现居地所属分局">
					</div>
				</div>
				<div class="weui-cell">
					<div class="weui-cell__hd"><label class="weui-label">现居地所属派出所:</label></div>
					<div class="weui-cell__bd">
						<input class="weui-input" required id="xjdsspcs" name="xjdsspcs" placeholder="请选择现居地所属派出所">
					</div>
				</div>
				<div class="weui-cell">
						<div class="weui-cell__hd"><label class="weui-label">现居地详细地址:</label></div>
					</div>
					<div class="weui-cell">
						<div class="weui-cell__bd">
							<textarea class="weui-textarea" placeholder="请输入现居地详细地址" rows="3" name="xjdxxdz"></textarea>
							<div class="weui-textarea-counter"><span>0</span>/200</div>
						</div>
					</div>
				<div class="weui-cell">
					<div class="weui-cell__hd"><label class="weui-label">住所类别:</label></div>
					<div class="weui-cell__bd">
						<input class="weui-input" id="zslb" id="zslb" required name="zslb" placeholder="请选择住所类别">
					</div>
				</div>

				<div class="weui-cell">
					<div class="weui-cell__hd"><label class="weui-label">居住事由:</label></div>
					<div class="weui-cell__bd">
						<input class="weui-input" id="jzsy" required name="jzsy" placeholder="请选择居住事由">
					</div>
				</div>
				<div class="weui-cell">
					<div class="weui-cell__hd"><label class="weui-label">婚姻状况:</label></div>
					<div class="weui-cell__bd">
						<input class="weui-input" id="hyzk" required name="hyzk" placeholder="请选择婚姻状况">
					</div>
				</div>
				<div class="weui-cell">
					<div class="weui-cell__hd"><label class="weui-label">政治面貌:</label></div>
					<div class="weui-cell__bd">
						<input class="weui-input" id="zzmm" required name="zzmm" placeholder="请选择政治面貌">
					</div>
				</div>
				<div class="weui-cell">
					<div class="weui-cell__hd"><label class="weui-label">文化程度:</label></div>
					<div class="weui-cell__bd">
						<input class="weui-input" id="whcd" required name="whcd" placeholder="请选择文化程度">
					</div>
				</div>
				<div class="weui-cell">
					<div class="weui-cell__hd"><label class="weui-label">服兵役状况:</label></div>
					<div class="weui-cell__bd">
						<input class="weui-input" id="fbyzk" required name="fbyzk" placeholder="请选择服兵役状况">
					</div>
				</div>
				<div class="weui-cell">
					<div class="weui-cell__hd"><label class="weui-label">到达本市日期：</label></div>
					<div class="weui-cell__bd">
						<input class="weui-input" type="text" data-toggle='date' id="time" name="ddbdrq" required
							placeholder="请选择到达本市日期">
					</div>
				</div>
				<div class="weui-cell">
					<div class="weui-cell__hd"><label class="weui-label">来本市原因:</label></div>
					<div class="weui-cell__bd">
						<input class="weui-input" id="lbsyy" required name="lbsyy" placeholder="请选择来本市原因">
					</div>
				</div>
				<div class="weui-cell">
					<div class="weui-cell__hd"><label class="weui-label">拟定居住期限:</label></div>
					<div class="weui-cell__bd">
						<input class="weui-input" id="ndjzqx" required name="ndjzqx" placeholder="请选择拟定居住期限">
					</div>
				</div>


			</div>
			<h1>上传材料</h1>
			<!--1.本人居民户口簿或居民身份证-->
			<div class="weui-cells  weui-cells_form">
				<div class="container">
					<div class="weui_cells weui_cells_form">
						<div class="weui_cell">
							<div class="weui_cell_bd weui_cell_primary">
								<div class="weui_uploader">
									<div class="weui_uploader_hd weui_cell">
										<div class="weui_cell_bd weui_cell_primary">
											本人居民户口簿或居民身份证
										</div>
										<i class="weui-icon-warn weui-icon_msg-primary imgwarn img_i_base1"></i>
									</div>
									<div class="weui_uploader_bd">
										<ul class="weui_uploader_files one">
										</ul>
										<div class="weui_uploader_input_wrp">
											<input class="weui_uploader_input js_file1" type="file" name="img"
												accept="image/*" multiple></div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="weui_dialog_alert" style="display: none;">
					<div class="weui_mask"></div>
					<div class="weui_dialog ">
						<div class="weui_dialog_hd"> <strong class="weui_dialog_title">警告</strong>
						</div>
						<div class="weui_dialog_bd">弹窗内容，告知当前页面信息等</div>
						<div class="weui_dialog_ft">
							<a href="javascript:;" class="weui_btn_dialog primary">确定</a>
						</div>
					</div>
				</div>
				<div class="imgshow imgshow_base1">
					<div>
						<p class="title"> 示例图片</p>
						<p class="zhushi">
							请上传本人居民户口簿或居民身份证,居民户口簿需要正面，内页，登记卡，索引页等，居民身份证则需要身份证正反面,
							保证清晰，照片大小不超过5兆。
						</p>
						<img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/shili/wjwhztstp/hkb/jmhkb.jpg" alt="">
						<img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/shili/wjwhztstp/hkb/jmhkbny.jpg" alt="">
						<img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/shili/wjwhztstp/sfz/sfzfm.jpg" alt="">
						<img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/shili/wjwhztstp/sfz/sfzzm.jpg" alt="">
						<button>确定</button>
					</div>
				</div>
			</div>
			<!--2.房屋产权证明-->
			<div class="weui-cells style1 weui-cells_form">
				<div class="container">
					<div class="weui_cells weui_cells_form">
						<div class="weui_cell">
							<div class="weui_cell_bd weui_cell_primary">
								<div class="weui_uploader">
									<div class="weui_uploader_hd weui_cell">
										<div class="weui_cell_bd weui_cell_primary">
											房屋产权证明
										</div>
										<i class="weui-icon-warn weui-icon_msg-primary imgwarn img_i_base2"></i>
									</div>
									<div class="weui_uploader_bd">
										<ul class="weui_uploader_files two">
										</ul>
										<div class="weui_uploader_input_wrp">
											<input class="weui_uploader_input js_file2" type="file" name="img"
												accept="image/*" multiple></div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="weui_dialog_alert" style="display: none;">
					<div class="weui_mask"></div>
					<div class="weui_dialog ">
						<div class="weui_dialog_hd"> <strong class="weui_dialog_title">警告</strong>
						</div>
						<div class="weui_dialog_bd">弹窗内容，告知当前页面信息等</div>
						<div class="weui_dialog_ft">
							<a href="javascript:;" class="weui_btn_dialog primary">确定</a>
						</div>
					</div>
				</div>
				<div class="imgshow imgshow_base2">
					<div>
						<p class="title"> 详细介绍 </p>
						<!--<img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/shili/shili.jpg" alt="">-->
						<p class="zhushi">
						请上传房屋产权证明，以房产证为例。图片保证清晰。最大不超过5兆。如不确定，可多种类型进行上传
						</p>
						<img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/shili/wjwhztstp/fcz/fczOne.jpg" alt="">
						<img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/shili/wjwhztstp/fcz/fczTwo.jpg" alt="">
						<img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/shili/wjwhztstp/fcz/fczThree.jpg" alt="">
						<img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/shili/wjwhztstp/fcz/fczFour.jpg" alt="">
						<button>确定</button>
					</div>
				</div>
			</div>

			<!--2.房屋租赁合同或其他居住以及于清居住半年以上的证明材料-->
			<div class="weui-cells style2 weui-cells_form">
				<div class="container">
					<div class="weui_cells weui_cells_form">
						<div class="weui_cell">
							<div class="weui_cell_bd weui_cell_primary">
								<div class="weui_uploader">
									<div class="weui_uploader_hd weui_cell">
										<div class="weui_cell_bd weui_cell_primary">
											房屋租赁合同或其他居住以及于清居住半年以上的证明材料
										</div>
										<i class="weui-icon-warn weui-icon_msg-primary imgwarn img_i_base3"></i>
									</div>
									<div class="weui_uploader_bd">
										<ul class="weui_uploader_files three">
										</ul>
										<div class="weui_uploader_input_wrp">
											<input class="weui_uploader_input js_file3" type="file" name="img"
												accept="image/*" multiple></div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="weui_dialog_alert" style="display: none;">
					<div class="weui_mask"></div>
					<div class="weui_dialog ">
						<div class="weui_dialog_hd"> <strong class="weui_dialog_title">警告</strong>
						</div>
						<div class="weui_dialog_bd">弹窗内容，告知当前页面信息等</div>
						<div class="weui_dialog_ft">
							<a href="javascript:;" class="weui_btn_dialog primary">确定</a>
						</div>
					</div>
				</div>
				<div class="imgshow imgshow_base3">
					<div>
						<p class="title"> 详细介绍 </p>
						<!--<img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/shili/shili.jpg" alt="">-->
						<p class="zhushi">
							请上传房屋租赁合同或其他居住以及于清居住半年以上的证明材料，暂无示例图片。注意照片大小不超过5兆。
						</p>
						<button>确定</button>
					</div>
				</div>
			</div>

			<!--2.单位用合同或单位书面说明-->
			<div class="weui-cells style3 style4 weui-cells_form">
				<div class="container">
					<div class="weui_cells weui_cells_form">
						<div class="weui_cell">
							<div class="weui_cell_bd weui_cell_primary">
								<div class="weui_uploader">
									<div class="weui_uploader_hd weui_cell">
										<div class="weui_cell_bd weui_cell_primary">
											单位用合同或单位书面说明
										</div>
										<i class="weui-icon-warn weui-icon_msg-primary imgwarn img_i_base4"></i>
									</div>
									<div class="weui_uploader_bd">
										<ul class="weui_uploader_files four">
										</ul>
										<div class="weui_uploader_input_wrp">
											<input class="weui_uploader_input js_file4" type="file" name="img"
												accept="image/*" multiple></div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="weui_dialog_alert" style="display: none;">
					<div class="weui_mask"></div>
					<div class="weui_dialog ">
						<div class="weui_dialog_hd"> <strong class="weui_dialog_title">警告</strong>
						</div>
						<div class="weui_dialog_bd">弹窗内容，告知当前页面信息等</div>
						<div class="weui_dialog_ft">
							<a href="javascript:;" class="weui_btn_dialog primary">确定</a>
						</div>
					</div>
				</div>
				<div class="imgshow imgshow_base4">
					<div>
						<p class="title"> 详细介绍 </p>
						<!--<img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/shili/shili.jpg" alt="">-->
						<p class="zhushi">
							请上传单位用合同或单位书面说明，暂无示例图片，照片大小不超过5兆。
						</p>
						<button>确定</button>
					</div>
				</div>
			</div>
			<!--  -->

			<!-- 单位户口协管人员的居民户口簿或居民身份证 -->
			<div class="weui-cells style4 weui-cells_form">
				<div class="container">
					<div class="weui_cells weui_cells_form">
						<div class="weui_cell">
							<div class="weui_cell_bd weui_cell_primary">
								<div class="weui_uploader">
									<div class="weui_uploader_hd weui_cell">
										<div class="weui_cell_bd weui_cell_primary">
											单位户口协管人员的居民户口簿或居民身份证
										</div>
										<i class="weui-icon-warn weui-icon_msg-primary imgwarn img_i_base5"></i>
									</div>
									<div class="weui_uploader_bd">
										<ul class="weui_uploader_files five">
										</ul>
										<div class="weui_uploader_input_wrp">
											<input class="weui_uploader_input js_file5" type="file" name="img"
												accept="image/*" multiple></div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="weui_dialog_alert" style="display: none;">
					<div class="weui_mask"></div>
					<div class="weui_dialog ">
						<div class="weui_dialog_hd"> <strong class="weui_dialog_title">警告</strong>
						</div>
						<div class="weui_dialog_bd">弹窗内容，告知当前页面信息等</div>
						<div class="weui_dialog_ft">
							<a href="javascript:;" class="weui_btn_dialog primary">确定</a>
						</div>
					</div>
				</div>
				<div class="imgshow imgshow_base5">
					<div>
						<p class="title"> 示例图片 </p>
						<p class="zhushi">
							请上传单位户口协管人员的居民户口簿或居民身份证。保证图片清晰。图片大小不超过5兆
						</p>
						<img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/shili/wjwhztstp/hkb/jmhkb.jpg" alt="">
						<img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/shili/wjwhztstp/hkb/jmhkbny.jpg" alt="">
						<img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/shili/wjwhztstp/sfz/sfzfm.jpg" alt="">
						<img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/shili/wjwhztstp/sfz/sfzzm.jpg" alt="">

						<button>确定</button>
					</div>

				</div>
			</div>

			<!--2.房主合法稳定住所证明-->
			<div class="weui-cells style5 weui-cells_form">
				<div class="container">
					<div class="weui_cells weui_cells_form">
						<div class="weui_cell">
							<div class="weui_cell_bd weui_cell_primary">
								<div class="weui_uploader">
									<div class="weui_uploader_hd weui_cell">
										<div class="weui_cell_bd weui_cell_primary">
											房主合法稳定住所证明
										</div>
										<i class="weui-icon-warn weui-icon_msg-primary imgwarn img_i_base6"></i>
									</div>
									<div class="weui_uploader_bd">
										<ul class="weui_uploader_files six">
										</ul>
										<div class="weui_uploader_input_wrp">
											<input class="weui_uploader_input js_file6" type="file" name="img"
												accept="image/*" multiple></div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="weui_dialog_alert" style="display: none;">
					<div class="weui_mask"></div>
					<div class="weui_dialog ">
						<div class="weui_dialog_hd"> <strong class="weui_dialog_title">警告</strong>
						</div>
						<div class="weui_dialog_bd">弹窗内容，告知当前页面信息等</div>
						<div class="weui_dialog_ft">
							<a href="javascript:;" class="weui_btn_dialog primary">确定</a>
						</div>
					</div>
				</div>
				<div class="imgshow imgshow_base6">
					<div>
						<p class="title"> 示例图片 </p>
						<p class="zhushi">
							请上传房主合法稳定住所证明，以房产证为例。图片保证清晰。最大不超过5兆。如不确定，可多种类型进行上传
						</p>
						<img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/shili/wjwhztstp/fcz/fczOne.jpg" alt="">
						<img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/shili/wjwhztstp/fcz/fczTwo.jpg" alt="">
						<img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/shili/wjwhztstp/fcz/fczThree.jpg" alt="">
						<img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/shili/wjwhztstp/fcz/fczFour.jpg" alt="">
						<button> 确定 </button>
					</div>
				</div>
			</div>
			<!--2.个人亲属关系证明-->
			<div class="weui-cells style5 weui-cells_form">
				<div class="container">
					<div class="weui_cells weui_cells_form">
						<div class="weui_cell">
							<div class="weui_cell_bd weui_cell_primary">
								<div class="weui_uploader">
									<div class="weui_uploader_hd weui_cell">
										<div class="weui_cell_bd weui_cell_primary">
											个人亲属关系证明
										</div>
										<i class="weui-icon-warn weui-icon_msg-primary imgwarn img_i_base7"></i>
									</div>
									<div class="weui_uploader_bd">
										<ul class="weui_uploader_files seven">
										</ul>
										<div class="weui_uploader_input_wrp">
											<input class="weui_uploader_input js_file7" type="file" name="img"
												accept="image/*" multiple></div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="weui_dialog_alert" style="display: none;">
					<div class="weui_mask"></div>
					<div class="weui_dialog ">
						<div class="weui_dialog_hd"> <strong class="weui_dialog_title">警告</strong>
						</div>
						<div class="weui_dialog_bd">弹窗内容，告知当前页面信息等</div>
						<div class="weui_dialog_ft">
							<a href="javascript:;" class="weui_btn_dialog primary">确定</a>
						</div>
					</div>
				</div>
				<div class="imgshow imgshow_base7">
					<div>
						<p class="title"> 详细介绍 </p>
						<!--<img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/shili/shili.jpg" alt="">-->
						<p class="zhushi">
									请上传个人亲属关系证明，暂无示例图片，图片大小不超过5兆。
						</p>
						<button>确定</button>
					</div>
				</div>
			</div>
			<!--2.房主居民户口簿或居民身份证-->
			<div class="weui-cells style5 weui-cells_form">
				<div class="container">
					<div class="weui_cells weui_cells_form">
						<div class="weui_cell">
							<div class="weui_cell_bd weui_cell_primary">
								<div class="weui_uploader">
									<div class="weui_uploader_hd weui_cell">
										<div class="weui_cell_bd weui_cell_primary">
											房主居民户口簿或居民身份证
										</div>
										<i class="weui-icon-warn weui-icon_msg-primary imgwarn img_i_base8"></i>
									</div>
									<div class="weui_uploader_bd">
										<ul class="weui_uploader_files eight">
										</ul>
										<div class="weui_uploader_input_wrp">
											<input class="weui_uploader_input js_file8" type="file" name="img"
												accept="image/*" multiple></div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="weui_dialog_alert" style="display: none;">
					<div class="weui_mask"></div>
					<div class="weui_dialog ">
						<div class="weui_dialog_hd"> <strong class="weui_dialog_title">警告</strong>
						</div>
						<div class="weui_dialog_bd">弹窗内容，告知当前页面信息等</div>
						<div class="weui_dialog_ft">
							<a href="javascript:;" class="weui_btn_dialog primary">确定</a>
						</div>
					</div>
				</div>
				<div class="imgshow imgshow_base8">
					<div>
						<p class="title"> 示例图片</p>
						<p class="zhushi">
							请上传房主居民户口簿或居民身份证,居民户口簿需要正面，内页，登记卡，索引页等，居民身份证则需要身份证正反面,
							保证清晰，照片大小不超过5兆。
						</p>
						<img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/shili/wjwhztstp/hkb/jmhkb.jpg" alt="">
						<img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/shili/wjwhztstp/hkb/jmhkbny.jpg" alt="">
						<img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/shili/wjwhztstp/sfz/sfzfm.jpg" alt="">
						<img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/shili/wjwhztstp/sfz/sfzzm.jpg" alt="">
						<button>确定</button>
					</div>
				</div>
			</div>
			<!--2.学生证或其他在校证明-->
			<div class="weui-cells style6 weui-cells_form">
				<div class="container">
					<div class="weui_cells weui_cells_form">
						<div class="weui_cell">
							<div class="weui_cell_bd weui_cell_primary">
								<div class="weui_uploader">
									<div class="weui_uploader_hd weui_cell">
										<div class="weui_cell_bd weui_cell_primary">
											学生证或其他在校证明
										</div>
										<i class="weui-icon-warn weui-icon_msg-primary imgwarn img_i_base9"></i>
									</div>
									<div class="weui_uploader_bd">
										<ul class="weui_uploader_files nine">
										</ul>
										<div class="weui_uploader_input_wrp">
											<input class="weui_uploader_input js_file9" type="file" name="img"
												accept="image/*" multiple></div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="weui_dialog_alert" style="display: none;">
					<div class="weui_mask"></div>
					<div class="weui_dialog ">
						<div class="weui_dialog_hd"> <strong class="weui_dialog_title">警告</strong>
						</div>
						<div class="weui_dialog_bd">弹窗内容，告知当前页面信息等</div>
						<div class="weui_dialog_ft">
							<a href="javascript:;" class="weui_btn_dialog primary">确定</a>
						</div>
					</div>
				</div>
				<div class="imgshow imgshow_base9">
					<div>
						<p class="title"> 详细介绍 </p>
						<!--<img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/shili/shili.jpg" alt="">-->
						<p class="zhushi">
							请上传学生证或其他在校证明，暂无示例图片，照片大小不超过5兆。
						</p>
						<button>确定</button>
					</div>
				</div>
			</div>


		</section>
		<footer>
			<button>提交</button>
		</footer>
	</form>
</body>

</html>