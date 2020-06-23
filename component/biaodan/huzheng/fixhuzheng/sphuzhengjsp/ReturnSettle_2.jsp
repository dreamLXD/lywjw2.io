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
	<title>回国（境）定居落户</title>
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
	<script src="<%=basePath%>webpage/lywjw/lyswjwwx/component/biaodan/huzheng/fixhuzheng/js/ReturnSettle.js"></script>
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
				<form action="#" method="post" id='signupForm'>
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
							<input type="hidden" id="flag" name="flag" value="${flag}">
						</div>

						<c:if test="${flag == '2'}">
							<div class="fl_type1">
								<h1>受理地点</h1>
								<div class="weui-cells weui-cells_form">
									<div class="weui-cell">
										<div class="weui-cell__hd"><label class="weui-label">选择分局：</label></div>
										<div class="weui-cell__bd">
											<input class="weui-input" id="idfj" required name="blfj"
												value="${jbxx.blfj }" data-values="${jbxx.blfj_id }"
												placeholder="请先选择分局">
										</div>
									</div>
									<div class="weui-cell">
										<div class="weui-cell__hd"><label class="weui-label">选择派出所：</label></div>
										<div class="weui-cell__bd">
											<input class="weui-input" id="idpcs" required name="blpcs"
												value="${jbxx.blpcs }" data-values="${jbxx.blpcs_id }"
												placeholder="请选择派出所" readonly>
										</div>
									</div>
								</div>
							</div>
						</c:if>
						<c:if test="${flag == '2'}">
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

									<c:forEach items="${jbxx.tkrlist}" var="idxStatus" varStatus="status">

										<div class="weui-cells weui-cells_form">
											<div class="weui-cell">
												<div class="weui-cell__hd"><label class="weui-label">姓名：</label></div>
												<div class="weui-cell__bd padr_40">
													<input class="weui-input" required
														name="tkr_name${ status.index + 100}" value="${idxStatus.tkrxm}"
														placeholder="请输入姓名">
												</div>
											</div>
											<div class="weui-cell">
												<div class="weui-cell__hd"><label class="weui-label">公民身份证号码：</label>
												</div>
												<div class="weui-cell__bd">
													<input class="weui-input" required
														name="tkr_sfz${ status.index +100}" value="${idxStatus.tkrsfz}"
														placeholder="请输入身份证号码">
												</div>
											</div>
											<div class="weui-cell">
												<div class="weui-cell__hd"><label class="weui-label">联系电话：</label></div>
												<div class="weui-cell__bd">
													<input class="weui-input" required
														name="tkr_lxdh${ status.index + 100}"
														value="${idxStatus.tkrtel}" placeholder="请输入号码">
												</div>
											</div>


											<div class="weui-cell">
												<div class="weui-cell__hd"><label class="weui-label">与申请人关系：</label>
												</div>
												<div class="weui-cell__bd">
													<input class="weui-input" id="tkr_ysqrgx${ status.index + 100}"
														required name="tkr_ysqrgx${ status.index + 100}"
														value="${idxStatus.ysqrgx}" data-values="${idxStatus.ysqrgx_id}"
														placeholder="请选择关系">
												</div>
											</div>

										</div>

									</c:forEach>

								</div>

						</c:if>
						<c:if test="${flag == '1'}">
							<div class="fl_type2">
								<h1>落户地址信息</h1>
								<div class="weui-cells weui-cells_form ">
									<div class="weui-cell">
										<div class="weui-cell__hd"><label class="weui-label">地市:</label></div>
										<div class="weui-cell__bd">
											<input class="weui-input" type="text" id="dishi" name="dishi"
												value="${jbxx.lhdishi }" data-values="${jbxx.lhdishi_id }" required
												placeholder="请选择地市">
										</div>
									</div>
									<div class="weui-cell">
										<div class="weui-cell__hd"><label class="weui-label">县区:</label></div>
										<div class="weui-cell__bd">
											<input class="weui-input" type="text" id="xianqu" name="xianqu"
												value="${jbxx.xianqu }" data-values="${jbxx.xianqu_id }" required
												placeholder="请选择县区">
										</div>
									</div>
									<div class="weui-cell">
										<div class="weui-cell__hd"><label class="weui-label">派出所:</label></div>
										<div class="weui-cell__bd">
											<input class="weui-input" type="text" id="blpaichusuo" name="blpaichusuo"
												value="${jbxx.blpaichusuo }" data-values="${jbxx.blpaichusuo_id }"
												required placeholder="请选择派出所">
										</div>
									</div>
									<div class="weui-cell">
										<div class="weui-cell__hd"><label class="weui-label">详细地址:</label></div>
									</div>
									<div class="weui-cell">
										<div class="weui-cell__bd">
											<textarea class="weui-textarea" placeholder="请输入地址" rows="3"
												value="${jbxx.xxdz }" name="xxdz">${jbxx.xxdz }</textarea>
											<div class="weui-textarea-counter"><span>0</span>/200</div>
										</div>
									</div>

								</div>

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
												placeholder="请输入联系电话" value="${jbxx.hztel }">
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

									<c:forEach items="${jbxx.tkrlist}" var="idxStatus" varStatus="status">

										<div class="weui-cells weui-cells_form">
											<div class="weui-cell">
												<div class="weui-cell__hd"><label class="weui-label">姓名：</label></div>
												<div class="weui-cell__bd padr_40">
													<input class="weui-input" required
														name="sqr_name${ status.index + 100}" value="${idxStatus.tkrxm}"
														placeholder="请输入姓名">
												</div>
											</div>
											<div class="weui-cell">
												<div class="weui-cell__hd"><label class="weui-label">公民身份证号码：</label>
												</div>
												<div class="weui-cell__bd">
													<input class="weui-input" required
														name="sqr_sfz${ status.index +100}" value="${idxStatus.tkrsfz}"
														placeholder="请输入身份证号码">
												</div>
											</div>
											<div class="weui-cell">
												<div class="weui-cell__hd"><label class="weui-label">联系电话：</label></div>
												<div class="weui-cell__bd">
													<input class="weui-input" required
														name="sqr_lxdh${ status.index + 100}"
														value="${idxStatus.tkrtel}" placeholder="请输入号码">
												</div>
											</div>


											<div class="weui-cell">
												<div class="weui-cell__hd"><label class="weui-label">与申请人关系：</label>
												</div>
												<div class="weui-cell__bd">
													<input class="weui-input" id="sqr_ysqrgx${ status.index + 100}"
														required name="sqr_ysqrgx${ status.index + 100}"
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
						<!--以上为立户时需准备：合法稳定的住所证明以上为投靠落户需准备：亲属关系证明-->
						<c:forEach items="${photoes}" var="photoes">
							<c:if test="${photoes.type_id == '2352399efbf04e1f94ccfcd9a54a9596' }">
								<div class="weui-cells   weui-cells_form">
									<div class="container">
										<div class="weui_cells weui_cells_form">
											<div class="weui_cell">
												<div class="weui_cell_bd weui_cell_primary">
													<div class="weui_uploader">
														<div class="weui_uploader_hd weui_cell">
															<div class="weui_cell_bd weui_cell_primary">合法稳定住所证明</div>
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
										<div class="weui_dialog">
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
											<p class="title"> 示例图片 </p>
											<p class="zhushi">
												请上传合法稳定住所证明，以房产证为例。图片保证清晰。最大不超过5兆。如不确定，可多种类型进行上传
											</p>
											<img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/shili/wjwhztstp/fcz/fczOne.jpg"
												alt="">
											<img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/shili/wjwhztstp/fcz/fczTwo.jpg"
												alt="">
											<img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/shili/wjwhztstp/fcz/fczThree.jpg"
												alt="">
											<img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/shili/wjwhztstp/fcz/fczFour.jpg"
												alt="">
											<button> 确定 </button>
										</div>
									</div>
								</div>
							</c:if>
						</c:forEach>
						<!-- 批准定居通知书 -->
						<c:if test="${jbxx.bltype_id =='27caad6bd90744fdbe60de3cc54a3d10'}">
							<c:forEach items="${photoes}" var="photoes">
								<c:if test="${photoes.type_id == '5b11aada9ba946b5a4258bbc31f835b5' }">
									<div class="weui-cells  style1 weui-cells_form">
										<div class="container">
											<div class="weui_cells weui_cells_form">
												<div class="weui_cell">
													<div class="weui_cell_bd weui_cell_primary">
														<div class="weui_uploader">
															<div class="weui_uploader_hd weui_cell">
																<div class="weui_cell_bd weui_cell_primary">批准定居通知书
																</div>
																<i
																	class="weui-icon-warn weui-icon_msg-primary imgwarn img_i_base2"></i>
															</div>
															<div class="weui_uploader_bd">
																<ul class="weui_uploader_files two">
																	<c:forEach items="${photoes.zplist}"
																		var="photoesdata">
																		<li class="weui_uploader_file weui_uploader_status"
																			style="background-image:url('${photoesdata.zplj} ')">
																			<div class='fgc'></div>
																		</li>
																	</c:forEach>
																</ul>
																<div class="weui_uploader_input_wrp">
																	<input class="weui_uploader_input js_file2"
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
										<div class="imgshow imgshow_base2">
											<div>
												<p class="title"> 详细介绍 </p>
												<!--<img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/shili/shili.jpg" alt="">-->
												<p class="zhushi">
													请上传批准定居通知书，照片大小不超过5兆。
												</p>
												<button>确定</button>
											</div>
										</div>
									</div>
								</c:if>
							</c:forEach>
						</c:if>
						<!-- 批准定居通知书 -->
						<c:if test="${jbxx.bltype_id =='dd25c403d57340c18e862bcf4d8ce968'}">
							<c:forEach items="${photoes}" var="photoes">
								<c:if test="${photoes.type_id == '08fc3c0d127649fd9d35a602b0e70ad0' }">
									<div class="weui-cells style2  weui-cells_form">
										<div class="container">
											<div class="weui_cells weui_cells_form">
												<div class="weui_cell">
													<div class="weui_cell_bd weui_cell_primary">
														<div class="weui_uploader">
															<div class="weui_uploader_hd weui_cell">
																<div class="weui_cell_bd weui_cell_primary">
																	批准定居通知书
																</div>
																<i
																	class="weui-icon-warn weui-icon_msg-primary imgwarn img_i_base3"></i>
															</div>
															<div class="weui_uploader_bd">
																<ul class="weui_uploader_files three">
																	<c:forEach items="${photoes.zplist}"
																		var="photoesdata">
																		<li class="weui_uploader_file weui_uploader_status"
																			style="background-image:url('${photoesdata.zplj} ')">
																			<div class='fgc'></div>
																		</li>
																	</c:forEach>
																</ul>
																<div class="weui_uploader_input_wrp">
																	<input class="weui_uploader_input js_file3"
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
										<div class="imgshow imgshow_base3">
											<div>
												<p class="title"> 详细介绍 </p>
												<!--<img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/shili/shili.jpg" alt="">-->
												<p class="zhushi">
													请上传批准定居通知书，暂无示例图片，照片大小不超过5兆。
												</p>
												<button>确定</button>
											</div>
										</div>
									</div>
								</c:if>
							</c:forEach>
						</c:if>
						<!-- 台湾居民定居证  -->
						<c:if test="${jbxx.bltype_id =='dd25c403d57340c18e862bcf4d8ce968'}">
							<c:forEach items="${photoes}" var="photoes">
								<c:if test="${photoes.type_id == 'ec2c55adc99549cb8c9f0482e18c15c5' }">
									<div class="weui-cells style2  weui-cells_form">
										<div class="container">
											<div class="weui_cells weui_cells_form">
												<div class="weui_cell">
													<div class="weui_cell_bd weui_cell_primary">
														<div class="weui_uploader">
															<div class="weui_uploader_hd weui_cell">
																<div class="weui_cell_bd weui_cell_primary">
																	台湾居民定居证
																</div>
																<i
																	class="weui-icon-warn weui-icon_msg-primary imgwarn img_i_base4"></i>
															</div>
															<div class="weui_uploader_bd">
																<ul class="weui_uploader_files four">
																	<c:forEach items="${photoes.zplist}"
																		var="photoesdata">
																		<li class="weui_uploader_file weui_uploader_status"
																			style="background-image:url('${photoesdata.zplj} ')">
																			<div class='fgc'></div>
																		</li>
																	</c:forEach>
																</ul>
																<div class="weui_uploader_input_wrp">
																	<input class="weui_uploader_input js_file4"
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
										<div class="imgshow imgshow_base4">
											<div>
												<p class="title"> 详细介绍 </p>
												<!--<img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/shili/shili.jpg" alt="">-->
												<p class="zhushi">
													请上传台湾居民定居证，暂无示例图片，照片大小不超过5兆。
												</p>
												<button>确定</button>
											</div>
										</div>
									</div>
								</c:if>
							</c:forEach>
						</c:if>
						<!--华侨回国定居证-->
						<c:if test="${jbxx.bltype_id =='72e72d0d616d4848bbb71846077525b4'}">
							<c:forEach items="${photoes}" var="photoes">
								<c:if test="${photoes.type_id == 'd3836c1bc4904bad8f918a7fe2ede708' }">
									<div class="weui-cells style3  weui-cells_form">
										<div class="container">
											<div class="weui_cells weui_cells_form">
												<div class="weui_cell">
													<div class="weui_cell_bd weui_cell_primary">
														<div class="weui_uploader">
															<div class="weui_uploader_hd weui_cell">
																<div class="weui_cell_bd weui_cell_primary">华侨回国定居证
																</div>
																<i
																	class="weui-icon-warn weui-icon_msg-primary imgwarn img_i_base5"></i>
															</div>
															<div class="weui_uploader_bd">
																<ul class="weui_uploader_files five">
																	<c:forEach items="${photoes.zplist}"
																		var="photoesdata">
																		<li class="weui_uploader_file weui_uploader_status"
																			style="background-image:url('${photoesdata.zplj} ')">
																			<div class='fgc'></div>
																		</li>
																	</c:forEach>
																</ul>
																<div class="weui_uploader_input_wrp">
																	<input class="weui_uploader_input js_file5"
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
										<div class="imgshow imgshow_base5">
											<div>
												<p class="title"> 详细介绍 </p>
												<!--<img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/shili/shili.jpg" alt="">-->
												<p class="zhushi">
													请上传华侨回国定居证，暂无示例图片，照片大小不超过5兆。
												</p>
												<button>确定</button>
											</div>
										</div>
									</div>
								</c:if>
							</c:forEach>
						</c:if>
						<!-- 回国使用的中国护照 -->
						<c:if test="${jbxx.bltype_id =='72e72d0d616d4848bbb71846077525b4'}">
							<c:forEach items="${photoes}" var="photoes">
								<c:if test="${photoes.type_id == 'c344e9df3ef146fe8dc4e7ba44bb1330' }">
									<div class="weui-cells style3  weui-cells_form">
										<div class="container">
											<div class="weui_cells weui_cells_form">
												<div class="weui_cell">
													<div class="weui_cell_bd weui_cell_primary">
														<div class="weui_uploader">
															<div class="weui_uploader_hd weui_cell">
																<div class="weui_cell_bd weui_cell_primary">回国使用的中国护照
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
													请上传回国使用的中国护照，暂无示例图片，照片大小不超过5兆。
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