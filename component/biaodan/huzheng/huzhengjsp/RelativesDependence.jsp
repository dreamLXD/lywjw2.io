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
	<title>投靠其他亲属（限因父母死亡投靠其他监护人）</title>
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
	<script src="<%=basePath%>webpage/lywjw/lyswjwwx/component/biaodan/huzheng/js/RelativesDependence.js"></script>
	<script src="<%=basePath%>webpage/lywjw/lyswjwwx/js/jiazai.js"></script>
</head>

<body>
	<%-- <div class="imgshow" style="display: block; z-index: 1000;">
		<div>
			<p class="title"> 类型选择 </p>
			<p class="zhushi" style="color: red;text-align: center">
				请在类型中选择符合自己的所办事项
			</p>
			<img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/shili/shili1.png" alt="">
			<button class="submit">确定</button>
		</div>
	</div> --%>
	<form action="#" method="post" id='signupForm'>
		<section>

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

			<h1>被投靠人信息</h1>
			<div class="weui-cells weui-cells_form">
			
				<div class="weui-cell">
					<div class="weui-cell__hd"><label class="weui-label">姓名:</label></div>
					<div class="weui-cell__bd">
						<input class="weui-input" type="text"  name="btkrname" readonly value="${jbxx.zsxm }" required
							placeholder="">
					</div>
				</div>
				<div class="weui-cell">
					<div class="weui-cell__hd"><label class="weui-label">公民身份证号码:</label></div>
					<div class="weui-cell__bd">
						<input class="weui-input" required name="btkrsfz" readonly value="${jbxx.sfzh }" placeholder="">
					</div>
				</div>
			
<!-- 				<div class="weui-cell">
					<div class="weui-cell__hd"><label class="weui-label">姓名:</label></div>
					<div class="weui-cell__bd">
						<input class="weui-input" type="text" name="btkrname" required placeholder="请输入姓名">
					</div>
				</div>
				<div class="weui-cell">
					<div class="weui-cell__hd"><label class="weui-label">公民身份证号码:</label></div>
					<div class="weui-cell__bd">
						<input class="weui-input" required name="btkrsfz" placeholder="请输入身份证号码">
					</div>
				</div> -->
				<div class="weui-cell">
					<div class="weui-cell__hd"><label class="weui-label">与户主关系:</label></div>
					<div class="weui-cell__bd">
						<input class="weui-input" id="btkryhzgx" required name="btkryhzgx" placeholder="请选择关系">
					</div>
				</div>
			</div>
			<h1>投靠人信息</h1>
			<div class="weui-cells weui-cells_form xinxi">
				<div class="weui-cell">
					<div class="weui-cell__hd block require">
						<span>投靠人信息</span>
						<span class="tianjia"></span>
					</div>
				</div>
				<!-- <div class="weui-cells weui-cells_form">
					<div class="weui-cell">
						<div class="weui-cell__hd"><label class="weui-label">姓名：</label></div>
						<div class="weui-cell__bd padr_40">
							<input class="weui-input" required name="tkr_name" placeholder="请输入姓名">
						</div>
					</div>
					<div class="weui-cell">
						<div class="weui-cell__hd"><label class="weui-label">公民身份证号码：</label></div>
						<div class="weui-cell__bd">
							<input class="weui-input" required name="tkr_sfz" placeholder="请输入身份证号码">
						</div>
					</div>
					<div class="weui-cell">
						<div class="weui-cell__hd"><label class="weui-label">联系电话：</label></div>
						<div class="weui-cell__bd">
							<input class="weui-input" required name="tkr_lxdh" placeholder="请输入号码">
						</div>
					</div>


					<div class="weui-cell">
						<div class="weui-cell__hd"><label class="weui-label">与申请人关系：</label></div>
						<div class="weui-cell__bd">
							<input class="weui-input" id="tkr_ysqrgx" required name="tkr_ysqrgx" placeholder="请选择关系">
						</div>
					</div>

				</div> -->
			</div>


			<h1>上传材料</h1>
			<!--  双方居民户口簿 -->
			<div class="weui-cells weui-cells_form">
				<div class="container">
					<div class="weui_cells weui_cells_form">
						<div class="weui_cell">
							<div class="weui_cell_bd weui_cell_primary">
								<div class="weui_uploader">
									<div class="weui_uploader_hd weui_cell">
										<div class="weui_cell_bd weui_cell_primary">双方居民户口簿
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
							请上传双方居民户口簿正面，内页，登记卡，索引页等，照片大小不超过5兆。
						</p>
						<img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/shili/wjwhztstp/hkb/jmhkb.jpg" alt="">
						<img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/shili/wjwhztstp/hkb/jmhkbny.jpg" alt="">
						<img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/shili/wjwhztstp/hkb/jmhkbsy.jpg" alt="">
						<img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/shili/wjwhztstp/hkb/jmhkbsyb.jpg" alt="">
						<button>确定</button>
					</div>
				</div>
			</div>

			<!-- 双方居民身份证 -->
			<div class="weui-cells   weui-cells_form">
				<div class="container">
					<div class="weui_cells weui_cells_form">
						<div class="weui_cell">
							<div class="weui_cell_bd weui_cell_primary">
								<div class="weui_uploader">
									<div class="weui_uploader_hd weui_cell">
										<div class="weui_cell_bd weui_cell_primary">双方居民身份证</div>
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
					<div class="weui_dialog">
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
						<p class="title"> 示例图片 </p>
						<p class="zhushi">
							请上传双方居民身份证正反面，并保障照片清晰度（图片大小不超过5兆）
						</p>
						<img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/shili/wjwhztstp/sfz/sfzfm.jpg" alt="">
						<img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/shili/wjwhztstp/sfz/sfzzm.jpg" alt="">
						<button>确定</button>
					</div>
				</div>
			</div>

			<!--父母死亡证明 -->
			<div class="weui-cells   weui-cells_form">
				<div class="container">
					<div class="weui_cells weui_cells_form">
						<div class="weui_cell">
							<div class="weui_cell_bd weui_cell_primary">
								<div class="weui_uploader">
									<div class="weui_uploader_hd weui_cell">
										<div class="weui_cell_bd weui_cell_primary">
											父母死亡证明
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
					<div class="weui_dialog">
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
						<p class="title"> 示例图片 </p>
						<p class="zhushi">
							请上传父母死亡证明，保证图片清晰，最大不超过5兆。
						</p>
						<img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/shili/wjwhztstp/swyxzm/swyxzm.jpg" alt="">
						<button>确定</button>
					</div>
				</div>
			</div>
			<!--  指定或约定抚养权  -->
			<div class="weui-cells    weui-cells_form">
				<div class="container">
					<div class="weui_cells weui_cells_form">
						<div class="weui_cell">
							<div class="weui_cell_bd weui_cell_primary">
								<div class="weui_uploader">
									<div class="weui_uploader_hd weui_cell">
										<div class="weui_cell_bd weui_cell_primary">
											指定或约定抚养权、监护权的材料
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
					<div class="weui_dialog">
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
							请上传指定或约定抚养权、监护权的材料，暂无示例图片，照片大小不超过5兆。
						</p>
						<button>确定</button>
					</div>
				</div>
			</div>

			<!-- 监护权的材料
			<div class="weui-cells  weui-cells_form">
				<div class="container">
					<div class="weui_cells weui_cells_form">
						<div class="weui_cell">
							<div class="weui_cell_bd weui_cell_primary">
								<div class="weui_uploader">
									<div class="weui_uploader_hd weui_cell">
										<div class="weui_cell_bd weui_cell_primary">
											监护权的材料
										</div>
										<i class="weui-icon-warn weui-icon_msg-primary imgwarn img_i_base5"></i>
									</div>
									<div class="weui_uploader_bd">
										<ul class="weui_uploader_files five">
										</ul>
										<div class="weui_uploader_input_wrp">
											<input class="weui_uploader_input js_file5" type="file" name="img"
												accept="image/*" multiple=""></div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="weui_dialog_alert" style="display: none;">
					<div class="weui_mask"></div>
					<div class="weui_dialog">
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
						<p class="title"> 详细介绍 </p>
						<img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/shili/shili.jpg" alt="">
						<p class="zhushi">
							非婚生育说明：第1页、第2页、第3页…。
							<br><br>
							亲子鉴定报告：封面、内页1、内页2、内页3…
						</p>
						<button>确定</button>
					</div>
				</div>
			</div> -->



		</section>
		<footer>
			<button>提交</button>
		</footer>
	</form>
</body>

</html>