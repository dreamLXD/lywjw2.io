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
	<title>租房落户</title>
	<link rel="stylesheet" href="<%=basePath%>webpage/lywjw/lyswjwwx/node_modules/jquery-weui/dist/css/jquery-weui.css">
	<link rel="stylesheet" href="<%=basePath%>webpage/lywjw/lyswjwwx/node_modules/jquery-weui/dist/lib/weui.min.css">
	<link rel="stylesheet" href="<%=basePath%>webpage/lywjw/lyswjwwx/css/weui_biaodan.css">
	<link rel="stylesheet" href="<%=basePath%>webpage/lywjw/lyswjwwx/css/fixbiaodan.css">
	<link rel="stylesheet" href="<%=basePath%>webpage/lywjw/lyswjwwx/css/myweui.css">
	<script src="<%=basePath%>webpage/lywjw/lyswjwwx/js/basepath.js"></script>
	<script src="<%=basePath%>webpage/lywjw/lyswjwwx/component/biaodan/huzheng/js/alert.js"></script>
	<script src="<%=basePath%>webpage/lywjw/lyswjwwx/node_modules/jquery-weui/dist/lib/jquery-2.1.4.js"></script>
	<script src="<%=basePath%>webpage/lywjw/lyswjwwx/node_modules/jquery-weui/dist/js/jquery-weui.js"></script>
	<script src="<%=basePath%>webpage/lywjw/lyswjwwx/node_modules/jquery-weui/dist/js/city-picker.js"></script>
	<script src="<%=basePath%>webpage/lywjw/lyswjwwx/js/jquery.validate.min.js"></script>
	<script src="<%=basePath%>webpage/lywjw/lyswjwwx/js/regular.js"></script>
	<script src="<%=basePath%>webpage/lywjw/lyswjwwx/component/biaodan/huzheng/fixhuzheng/js/RentSettle.js"></script>
	<script src="<%=basePath%>webpage/lywjw/lyswjwwx/js/jiazai.js"></script>
	<link rel="stylesheet" href="<%=basePath%>webpage/lywjw/lyswjwwx/node_modules/layui-src/dist/css/layui.css">
</head>

<body>



	<!-- 容器 -->
	<div class="weui-tab">
		<div class="weui-navbar">
			<a class="weui-navbar__item weui-bar__item--on" href="#tab1">
				进度
			</a>
			<a class="weui-navbar__item" href="#tab2">
				详情
			</a>
		</div>
		<div class="weui-tab__bd">
			<div id="tab1" class="weui-tab__bd-item weui-tab__bd-item--active">
				<iframe src="<%=basePath%>wx/Query/Progress?openid=${openid}&id=${id}" frameborder="0"></iframe>
			</div>
			<div id="tab2" class="weui-tab__bd-item">
					<c:if test="${record.bhpd !='3'}">
							<div class="zzc_box"></div>
							</c:if>
				<!-- <div class="bh_box">
					<div class="bh_title">驳回原因</div>
					<div class="bh_content">
						户政身份证照片不清晰，请重新上传. 户政身份证照片不清晰，请重新上传. 户政身份证照片不清晰，请重新上传.
					</div>
				</div> -->
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
				<form action="javascript:;" method="post" id='signupForm'>
					<section>

						<h1>办理类型</h1>
						<div class="weui-cells weui-cells_form">
							<div class="weui-cell">
								<div class="weui-cell__hd"><label class="weui-label">类型选择：</label></div>
								<div class="weui-cell__bd">
									<input class="weui-input" id="style" required name="bltype" value="${jbxx.bltype }" 
										data-values="${jbxx.bltype_id }" placeholder="请选择类型">
								</div>
							</div>
						</div>

						<h1>申请人信息</h1>
						<div class="weui-cells weui-cells_form">
							<div class="weui-cell">
								<div class="weui-cell__hd"><label class="weui-label">姓名:</label></div>
								<div class="weui-cell__bd">
									<input class="weui-input" type="text" name="blrxm" disabled value="${jbxx.blrxm }"
										required placeholder="">
								</div>
							</div>
							<div class="weui-cell">
								<div class="weui-cell__hd"><label class="weui-label">公民身份证号码:</label></div>
								<div class="weui-cell__bd">
									<input class="weui-input" required name="blrsfz" disabled value="${jbxx.blrsfz }"
										placeholder="">
								</div>
							</div>

							<div class="weui-cell">
								<div class="weui-cell__hd"><label class="weui-label">联系电话:</label></div>
								<div class="weui-cell__bd">
									<input class="weui-input" id="tel" required name="tel" placeholder="请输入电话号码"
										value="${jbxx.blrtel }">
								</div>
							</div>

							<input type="hidden" id="openid" name="openid" value="${jbxx.openid}">
							<input type="hidden" id="uuid" name="uuid" value="${jbxx.uuid}">
							<input type="hidden" id="pid" name="pid" value="${jbxx.id}">
							<input type="hidden" id="bltype_id" name="bltype_id" value="${jbxx.bltype_id}">
						</div>

						<c:if
							test="${jbxx.bltype_id == '82570bd8e27a4fbcac6005ba9757654d'|| jbxx.bltype_id == 'a6a55e6f488049f2ae34ea2eb42b675e'}">
							<div class="fl_type1">
								<h1>受理地点</h1>
								<div class="weui-cells weui-cells_form">
									<div class="weui-cell">
										<div class="weui-cell__hd"><label class="weui-label">选择分局：</label></div>
										<div class="weui-cell__bd">
											<input class="weui-input" id="idfj" required name="blfj" value="${jbxx.blfj }"
											data-values="${jbxx.blfj_id }" placeholder="请先选择分局">
										</div>
									</div>
									<div class="weui-cell">
										<div class="weui-cell__hd"><label class="weui-label">选择派出所：</label></div>
										<div class="weui-cell__bd">
											<input class="weui-input" id="idpcs" required name="blpcs" value="${jbxx.blpcs }"
											data-values="${jbxx.blpcs_id }" placeholder="请选择派出所" readonly>
										</div>
									</div>
								</div>
							</div>
						</c:if>
						<c:if
							test="${jbxx.bltype_id == '82570bd8e27a4fbcac6005ba9757654d'|| jbxx.bltype_id == 'a6a55e6f488049f2ae34ea2eb42b675e'}">
							<div class="fl_type1">
								<h1>被投靠人信息</h1>
								<div class="weui-cells weui-cells_form">

									<div class="weui-cell">
										<div class="weui-cell__hd"><label class="weui-label">姓名:</label></div>
										<div class="weui-cell__bd">
											<input class="weui-input" type="text" name="btkrname" readonly
												value="${jbxx.btkrxm }" required placeholder="">
										</div>
									</div>
									<div class="weui-cell">
										<div class="weui-cell__hd"><label class="weui-label">公民身份证号码:</label></div>
										<div class="weui-cell__bd">
											<input class="weui-input" required name="btkrsfz" readonly
												value="${jbxx.btkrsfz }" placeholder="">
										</div>
									</div>
									<div class="weui-cell">
										<div class="weui-cell__hd"><label class="weui-label">与户主关系:</label></div>
										<div class="weui-cell__bd">
											<input class="weui-input" id="btkryhzgx" required name="btkryhzgx"
												value="${jbxx.btkryhzgx }" data-values="${jbxx.btkryhzgx_id }"
												placeholder="请选择关系">
										</div>
									</div>

								</div>


								<h1>投靠人信息</h1>
								<div class="weui-cells weui-cells_form xinxi tkrxx">
									<div class="weui-cell">
										<div class="weui-cell__hd block require">
											<span>投靠人信息</span>
											<span class="tianjia"></span>
										</div>
									</div>

									<c:forEach items="${jbxx.tkrlist}" var="idxStatus" varStatus="status" >
					
											<div class="weui-cells weui-cells_form">
												<div class="weui-cell">
													<div class="weui-cell__hd"><label class="weui-label">姓名：</label></div>
													<div class="weui-cell__bd padr_40">
														<input class="weui-input" required name="tkr_name${ status.index + 100}" value="${idxStatus.tkrxm}"
															placeholder="请输入姓名">
													</div>
												</div>
												<div class="weui-cell">
													<div class="weui-cell__hd"><label class="weui-label">公民身份证号码：</label></div>
													<div class="weui-cell__bd">
														<input class="weui-input" required name="tkr_sfz${ status.index +100}" value="${idxStatus.tkrsfz}"
															placeholder="请输入身份证号码">
													</div>
												</div>
												<div class="weui-cell">
													<div class="weui-cell__hd"><label class="weui-label">联系电话：</label></div>
													<div class="weui-cell__bd">
														<input class="weui-input" required name="tkr_lxdh${ status.index + 100}" value="${idxStatus.tkrtel}"
															placeholder="请输入号码">
													</div>
												</div>
						
						
												<div class="weui-cell">
													<div class="weui-cell__hd"><label class="weui-label">与申请人关系：</label></div>
													<div class="weui-cell__bd">
														<input class="weui-input" id="tkr_ysqrgx${ status.index + 100}" required name="tkr_ysqrgx${ status.index + 100}"
															value="${idxStatus.ysqrgx}" data-values="${idxStatus.ysqrgx_id}"
															placeholder="请选择关系">
													</div>
												</div>
						
											</div>
						
										</c:forEach>
								</div>
							</div>
						</c:if>
						<c:if test="${jbxx.bltype_id == '22b1c3879f2e491780cf6c66e0eb03e4'}">
							<div class="fl_type2">
								<h1>申报信息</h1>
								<div class="weui-cells weui-cells_form">

									<div class="weui-cell">
										<div class="weui-cell__hd"><label class="weui-label">姓名:</label></div>
										<div class="weui-cell__bd">
											<input class="weui-input" type="text" name="sbrname" required
												value="${jbxx.hzxm }" required placeholder="请输入姓名">
										</div>
									</div>
									<div class="weui-cell">
										<div class="weui-cell__hd"><label class="weui-label">公民身份证号码:</label></div>
										<div class="weui-cell__bd">
											<input class="weui-input" required name="sbrsfz" required
												value="${jbxx.hzsfz }" placeholder="请输入公民身份证号码">
										</div>
									</div>
									<div class="weui-cell">
										<div class="weui-cell__hd"><label class="weui-label">联系电话:</label></div>
										<div class="weui-cell__bd">
											<input class="weui-input" id="sbrlxdh" required name="sbrlxdh"
												placeholder="请输入电话号码" value="${jbxx.hztel }">
										</div>
									</div>

								</div>
								<h1>落户地址信息</h1>
								<div class="weui-cells weui-cells_form ">
									<div class="weui-cell">
										<div class="weui-cell__hd"><label class="weui-label">地市:</label></div>
										<div class="weui-cell__bd">
											<input class="weui-input" type="text" id="dishi" name="dishi" value="${jbxx.lhdishi }"  data-values="${jbxx.lhdishi_id }" required
												placeholder="请选择地市">
										</div>
									</div>
									<div class="weui-cell">
										<div class="weui-cell__hd"><label class="weui-label">县区:</label></div>
										<div class="weui-cell__bd">
											<input class="weui-input" type="text" id="xianqu" name="xianqu" value="${jbxx.xianqu }" data-values="${jbxx.xianqu_id }" required
												placeholder="请选择县区">
										</div>
									</div>
									<div class="weui-cell">
										<div class="weui-cell__hd"><label class="weui-label">派出所:</label></div>
										<div class="weui-cell__bd">
											<input class="weui-input" type="text" id="blpaichusuo" name="blpaichusuo" value="${jbxx.blpaichusuo }" data-values="${jbxx.blpaichusuo_id }"
												required placeholder="请选择派出所">
										</div>
									</div>
									<div class="weui-cell">
										<div class="weui-cell__hd"><label class="weui-label">详细地址:</label></div>
									</div>
									<div class="weui-cell">
										<div class="weui-cell__bd">
											<textarea class="weui-textarea" placeholder="请输入地址" rows="3" value="${jbxx.xxdz }"
												name="xxdz">${jbxx.xxdz }</textarea>
											<div class="weui-textarea-counter"><span>0</span>/200</div>
										</div>
									</div>

								</div>

								<h1>随迁人信息</h1>
								<div class="weui-cells weui-cells_form xinxi sqrxx">
									<div class="weui-cell">
										<div class="weui-cell__hd block require">
											<span>随迁人信息</span>
											<span class="tianjia "></span>
										</div>
									</div>
									<c:forEach items="${jbxx.tkrlist}" var="idxStatus" varStatus="status" >
					
								<div class="weui-cells weui-cells_form">
									<div class="weui-cell">
										<div class="weui-cell__hd"><label class="weui-label">姓名：</label></div>
										<div class="weui-cell__bd padr_40">
											<input class="weui-input" required name="sqr_name${ status.index + 100}" value="${idxStatus.tkrxm}"
												placeholder="请输入姓名">
										</div>
									</div>
									<div class="weui-cell">
										<div class="weui-cell__hd"><label class="weui-label">公民身份证号码：</label></div>
										<div class="weui-cell__bd">
											<input class="weui-input" required name="sqr_sfz${ status.index +100}" value="${idxStatus.tkrsfz}"
												placeholder="请输入身份证号码">
										</div>
									</div>
									<div class="weui-cell">
										<div class="weui-cell__hd"><label class="weui-label">联系电话：</label></div>
										<div class="weui-cell__bd">
											<input class="weui-input" required name="sqr_lxdh${ status.index + 100}" value="${idxStatus.tkrtel}"
												placeholder="请输入号码">
										</div>
									</div>
			
			
									<div class="weui-cell">
										<div class="weui-cell__hd"><label class="weui-label">与申请人关系：</label></div>
										<div class="weui-cell__bd">
											<input class="weui-input" id="sqr_ysqrgx${ status.index + 100}" required name="sqr_ysqrgx${ status.index + 100}"
												value="${idxStatus.ysqrgx}" data-values="${idxStatus.ysqrgx_id}"
												placeholder="请选择关系">
										</div>
									</div>
			
								</div>
			
							</c:forEach>

								</div>
							</div>
						</c:if>

						<h1>上传材料</h1>
						<!--  居民户口簿 -->
						<c:forEach items="${photoes}" var="photoes">
							<c:if test="${photoes.type_id == 'f4e05d3d86fb49af9202dc7798414d07' }">
								<div class="weui-cells weui-cells_form">
									<div class="container">
										<div class="weui_cells weui_cells_form">
											<div class="weui_cell">
												<div class="weui_cell_bd weui_cell_primary">
													<div class="weui_uploader">
														<div class="weui_uploader_hd weui_cell">
															<div class="weui_cell_bd weui_cell_primary">居民户口簿
															</div>
															<i
																class="weui-icon-warn weui-icon_msg-primary imgwarn img_i_base1"></i>
														</div>
														<div class="weui_uploader_bd">
															<ul class="weui_uploader_files one">
																<c:forEach items="${photoes.zplist}" var="photoesdata">
																	<li class="weui_uploader_file weui_uploader_status"
																		style="background-image:url('${photoesdata.zplj} ')">
																		<div class='fgc'></div>
																	</li>
																</c:forEach>
															</ul>
															<div class="weui_uploader_input_wrp">
																<input class="weui_uploader_input js_file1" type="file"
																	name="img" accept="image/*" multiple></div>
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
												请上传户口簿正面，内页，登记卡，索引页等，照片大小不超过5兆。
											</p>
											<img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/shili/wjwhztstp/hkb/jmhkb.jpg"
												alt="">
											<img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/shili/wjwhztstp/hkb/jmhkbny.jpg"
												alt="">
											<img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/shili/wjwhztstp/hkb/jmhkbsy.jpg"
												alt="">
											<img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/shili/wjwhztstp/hkb/jmhkbsyb.jpg"
												alt="">
											<button>确定</button>
										</div>
									</div>
								</div>
							</c:if>
						</c:forEach>

						<!-- 居民身份证 -->
						<c:forEach items="${photoes}" var="photoes">
							<c:if test="${photoes.type_id == '48fb29abf5374017a1650fedb110ded2' }">
								<div class="weui-cells   weui-cells_form">
									<div class="container">
										<div class="weui_cells weui_cells_form">
											<div class="weui_cell">
												<div class="weui_cell_bd weui_cell_primary">
													<div class="weui_uploader">
														<div class="weui_uploader_hd weui_cell">
															<div class="weui_cell_bd weui_cell_primary">
																居民身份证
															</div>
															<i
																class="weui-icon-warn weui-icon_msg-primary imgwarn img_i_base2"></i>
														</div>
														<div class="weui_uploader_bd">
															<ul class="weui_uploader_files two">
																<c:forEach items="${photoes.zplist}" var="photoesdata">
																	<li class="weui_uploader_file weui_uploader_status"
																		style="background-image:url('${photoesdata.zplj} ')">
																		<div class='fgc'></div>
																	</li>
																</c:forEach>
															</ul>
															<div class="weui_uploader_input_wrp">
																<input class="weui_uploader_input js_file2" type="file"
																	name="img" accept="image/*" multiple></div>
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
												请上传身份证正反面，并保障照片清晰度（图片大小不超过5兆）
											</p>
											<img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/shili/wjwhztstp/sfz/sfzfm.jpg"
												alt="">
											<img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/shili/wjwhztstp/sfz/sfzzm.jpg"
												alt="">
											<button>确定</button>
										</div>

									</div>
								</div>
							</c:if>
						</c:forEach>

						<!--2.房管部门备案的房屋租赁登记证明； -->
						<c:forEach items="${photoes}" var="photoes">
							<c:if test="${photoes.type_id == 'e5dc025922c645399de8b50cdddbeb1c' }">
								<div class="weui-cells     weui-cells_form">
									<div class="container">
										<div class="weui_cells weui_cells_form">
											<div class="weui_cell">
												<div class="weui_cell_bd weui_cell_primary">
													<div class="weui_uploader">
														<div class="weui_uploader_hd weui_cell">
															<div class="weui_cell_bd weui_cell_primary">
																房管部门备案的房屋租赁登记证明
															</div>
															<i
																class="weui-icon-warn weui-icon_msg-primary imgwarn img_i_base3"></i>
														</div>
														<div class="weui_uploader_bd">
															<ul class="weui_uploader_files three">
																<c:forEach items="${photoes.zplist}" var="photoesdata">
																	<li class="weui_uploader_file weui_uploader_status"
																		style="background-image:url('${photoesdata.zplj} ')">
																		<div class='fgc'></div>
																	</li>
																</c:forEach>
															</ul>
															<div class="weui_uploader_input_wrp">
																<input class="weui_uploader_input js_file3" type="file"
																	name="img" accept="image/*" multiple></div>
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
											<p class="title"> 详细介绍 </p>
											<!--<img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/shili/shili.jpg" alt="">-->
											<p class="zhushi">
												请上传房管部门备案的房屋租赁登记证明，照片大小不超过5兆。
											</p>
											<img src="<%=basePath%>webpage/lywjw/lyswjwwx/component/biaodan/huzheng/img/fwzpht/fwzpht.jpg"
												alt="">
											<img src="<%=basePath%>webpage/lywjw/lyswjwwx/component/biaodan/huzheng/img/fwzpht/fwzpht1.jpg"
												alt="">
											<img src="<%=basePath%>webpage/lywjw/lyswjwwx/component/biaodan/huzheng/img/fwzpht/fwzpht2.jpg"
												alt="">
											<img src="<%=basePath%>webpage/lywjw/lyswjwwx/component/biaodan/huzheng/img/fwzpht/fwzpht3.jpg"
												alt="">
											<img src="<%=basePath%>webpage/lywjw/lyswjwwx/component/biaodan/huzheng/img/fwzpht/fwzpht4.jpg"
												alt="">
											<img src="<%=basePath%>webpage/lywjw/lyswjwwx/component/biaodan/huzheng/img/fwzpht/fwzpht5.jpg"
												alt="">

											<button>确定</button>
										</div>
									</div>
								</div>
							</c:if>
						</c:forEach>

						<!--  社保证明  -->
						<c:forEach items="${photoes}" var="photoes">
							<c:if test="${photoes.type_id == '229483c5ba26490b8cc69e7b7091930b' }">
								<div class="weui-cells     weui-cells_form">
									<div class="container">
										<div class="weui_cells weui_cells_form">
											<div class="weui_cell">
												<div class="weui_cell_bd weui_cell_primary">
													<div class="weui_uploader">
														<div class="weui_uploader_hd weui_cell">
															<div class="weui_cell_bd weui_cell_primary">
																社保证明
															</div>
															<i
																class="weui-icon-warn weui-icon_msg-primary imgwarn img_i_base4"></i>
														</div>
														<div class="weui_uploader_bd">
															<ul class="weui_uploader_files four">
																<c:forEach items="${photoes.zplist}" var="photoesdata">
																	<li class="weui_uploader_file weui_uploader_status"
																		style="background-image:url('${photoesdata.zplj} ')">
																		<div class='fgc'></div>
																	</li>
																</c:forEach>
															</ul>
															<div class="weui_uploader_input_wrp">
																<input class="weui_uploader_input js_file4" type="file"
																	name="img" accept="image/*" multiple></div>
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
												请上传社保证明，暂无示例图片，照片大小不超过5兆。
											</p>
											<button>确定</button>
										</div>
									</div>
								</div>
							</c:if>
						</c:forEach>

						<!--3.房屋产权人同意落户承诺书（落社区集体户的除外）；-->
						<c:forEach items="${photoes}" var="photoes">
							<c:if test="${photoes.type_id == '6b3b65d28d5345eaa5a7e147199f20ed' }">
								<div class="weui-cells   weui-cells_form">
									<div class="container">
										<div class="weui_cells weui_cells_form">
											<div class="weui_cell">
												<div class="weui_cell_bd weui_cell_primary">
													<div class="weui_uploader">
														<div class="weui_uploader_hd weui_cell">
															<div class="weui_cell_bd weui_cell_primary">
																房屋产权人同意落户承诺书（落社区集体户的除外）
															</div>
															<i
																class="weui-icon-warn weui-icon_msg-primary imgwarn img_i_base5"></i>
														</div>
														<div class="weui_uploader_bd">
															<ul class="weui_uploader_files five">
																<c:forEach items="${photoes.zplist}" var="photoesdata">
																	<li class="weui_uploader_file weui_uploader_status"
																		style="background-image:url('${photoesdata.zplj} ')">
																		<div class='fgc'></div>
																	</li>
																</c:forEach>
															</ul>
															<div class="weui_uploader_input_wrp">
																<input class="weui_uploader_input js_file5" type="file"
																	name="img" accept="image/*" multiple></div>
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
											<!--<img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/shili/shili.jpg" alt="">-->
											<p class="zhushi">
												请上传房屋产权人同意落户承诺书（落社区集体户的除外），暂无示例图片，照片大小不超过5兆。
											</p>
											<button>确定</button>
										</div>
									</div>
								</div>
							</c:if>
						</c:forEach>

						<!-- 4.随迁人员亲属关系材料。 -->
						<c:if test="${jbxx.bltype_id =='22b1c3879f2e491780cf6c66e0eb03e4'}">
							<c:forEach items="${photoes}" var="photoes">
								<c:if test="${photoes.type_id == '7f42c080ed20468399c7b0a4ce5b1406' }">
									<div class="weui-cells style1  weui-cells_form">
										<div class="container">
											<div class="weui_cells weui_cells_form">
												<div class="weui_cell">
													<div class="weui_cell_bd weui_cell_primary">
														<div class="weui_uploader">
															<div class="weui_uploader_hd weui_cell">
																<div class="weui_cell_bd weui_cell_primary">
																	随迁人员亲属关系材料
																</div>
																<i
																	class="weui-icon-warn weui-icon_msg-primary imgwarn img_i_base6"></i>
															</div>
															<div class="weui_uploader_bd">
																<ul class="weui_uploader_files six">
																	<c:forEach items="${photoes.zplist}"
																		var="photoesdata">
																		<li class="weui_uploader_file weui_uploader_status"
																			style="background-image:url('${photoesdata.zplj} ')">
																			<div class='fgc'></div>
																		</li>
																	</c:forEach>
																</ul>
																<div class="weui_uploader_input_wrp">
																	<input class="weui_uploader_input js_file6"
																		type="file" name="img" accept="image/*"
																		multiple></div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="weui_dialog_alert" style="display: none;">
											<div class="weui_mask"></div>
											<div class="weui_dialog">
												<div class="weui_dialog_hd"> <strong
														class="weui_dialog_title">警告</strong>
												</div>
												<div class="weui_dialog_bd">弹窗内容，告知当前页面信息等</div>
												<div class="weui_dialog_ft">
													<a href="javascript:;" class="weui_btn_dialog primary">确定</a>
												</div>
											</div>
										</div>
										<div class="imgshow imgshow_base6">
											<div>
												<p class="title"> 详细介绍 </p>
												<!--<img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/shili/shili.jpg" alt="">-->
												<p class="zhushi">
													请上传随迁人员亲属关系材料，暂无示例图片，照片大小不超过5兆。
												</p>
												<button>确定</button>
											</div>
										</div>
									</div>
								</c:if>
							</c:forEach>
						</c:if>
					</section>
					<c:if test="${record.bhpd =='3'}">
							<footer>
								<button>修改</button>
							</footer>
							</c:if>
				</form>
			</div>
		</div>
	</div>


</body>


</html>