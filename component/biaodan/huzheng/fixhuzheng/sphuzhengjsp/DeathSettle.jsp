﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
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
	<title>宣告死亡（失踪）重新出现落户</title>
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
	<script src="<%=basePath%>webpage/lywjw/lyswjwwx/component/biaodan/huzheng/fixhuzheng/js/DeathSettle.js"></script>
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


				<form action="#" method="post" id='signupForm'>
					<section>

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
						</div>

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
										data-values="${jbxx.blpcs_id }" placeholder="请选择派出所">
								</div>
							</div>
						</div>

						<h1>死亡人员信息</h1>
						<div class="weui-cells weui-cells_form">
							<div class="weui-cell">
								<div class="weui-cell__hd"><label class="weui-label">姓名:</label></div>
								<div class="weui-cell__bd">
									<input class="weui-input" type="text" name="swryxm" value="${jbxx.swryxm }" required
										placeholder="请输入姓名">
								</div>
							</div>
							<div class="weui-cell">
								<div class="weui-cell__hd"><label class="weui-label">公民身份证号码:</label></div>
								<div class="weui-cell__bd">
									<input class="weui-input" required name="swrysfz" value="${jbxx.swrysfz }"
										placeholder="请输入身份证号码">
								</div>
							</div>
							<div class="weui-cell">
								<div class="weui-cell__hd"><label class="weui-label">与申请人关系:</label></div>
								<div class="weui-cell__bd">
									<input class="weui-input" id="ysqrgx" required name="ysqrgx" value="${jbxx.ysqrgx }"
										data-values="${jbxx.ysqrgx_id }" placeholder="请选择关系">
								</div>
							</div>
						</div>


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
											<p class="title"> 实例图片</p>
											<p class="zhushi">
												请上传居民户口簿正面，内页，登记卡，索引页等，照片大小不超过5兆。
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

						<!--  2.人民法院撤销宣告死亡（失踪）的生效判决书。  -->
						<c:forEach items="${photoes}" var="photoes">
							<c:if test="${photoes.type_id == 'b5f88d2379734e74924eedb1d4770fb8' }">
								<div class="weui-cells  weui-cells_form">
									<div class="container">
										<div class="weui_cells weui_cells_form">
											<div class="weui_cell">
												<div class="weui_cell_bd weui_cell_primary">
													<div class="weui_uploader">
														<div class="weui_uploader_hd weui_cell">
															<div class="weui_cell_bd weui_cell_primary">
																人民法院撤销宣告死亡（失踪）的生效判决书
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
											<p class="title"> 详细介绍 </p>
											<!--<img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/shili/shili.jpg" alt="">-->
											<p class="zhushi">
												请上传人民法院撤销宣告死亡（失踪）的生效判决书，暂无示例图片。照片大小不超过5兆。
											</p>
											<button>确定</button>
										</div>
									</div>
								</div>

							</c:if>
						</c:forEach>


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