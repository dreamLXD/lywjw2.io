0

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
	<title>居住落户</title>
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
	<script src="<%=basePath%>webpage/lywjw/lyswjwwx/component/biaodan/huzheng/fixhuzheng/js/ResidenceSettle.js"></script>
	<script src="<%=basePath%>webpage/lywjw/lyswjwwx/js/jiazai.js"></script>
</head>

<body>
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
	        户政身份证照片不清晰，请重新上传.  户政身份证照片不清晰，请重新上传.  户政身份证照片不清晰，请重新上传.
	    </div>
	</div> -->
	
	<form action="#" method="post" id='signupForm'>
		<section>
			<h1>办理类型</h1>
			<div class="weui-cells weui-cells_form">
				<div class="weui-cell">
					<div class="weui-cell__hd"><label class="weui-label">类型选择：</label></div>
					<div class="weui-cell__bd">
						<input class="weui-input" id="style" required name="bltype" value="${jbxx.bltype }"	data-values="${jbxx.bltype_id }"  placeholder="请选择类型">
					</div>
				</div>
			</div>
			<h1>申请人信息</h1>
			<div class="weui-cells weui-cells_form">
				<div class="weui-cell">
					<div class="weui-cell__hd"><label class="weui-label">姓名:</label></div>
					<div class="weui-cell__bd">
						<input class="weui-input" type="text" name="blrxm" disabled value="${jbxx.blrxm }" required
							placeholder="">
					</div>
				</div>
				<div class="weui-cell">
					<div class="weui-cell__hd"><label class="weui-label">公民身份证号码:</label></div>
					<div class="weui-cell__bd">
						<input class="weui-input" required name="blrsfz" disabled value="${jbxx.blrsfz }" placeholder="">
					</div>
				</div>
				
				<div class="weui-cell">
					<div class="weui-cell__hd"  ><label class="weui-label">联系电话:</label></div>
					<div class="weui-cell__bd">
						<input class="weui-input" id="tel" required name="tel" placeholder="请输入电话号码" value="${jbxx.blrtel }" >
					</div>
				</div>					
<!-- 				<div class="weui-cell"> -->
<!-- 					<div class="weui-cell__hd"><label class="weui-label">性别:</label></div> -->
<!-- 					<div class="weui-cell__bd"> -->
<!-- <%-- 						<input class="weui-input" required name="blrxb" id="blrxb" disabled value="${jbxx.zsxb }" --%> -->
<!-- 							placeholder=""> -->
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 				<div class="weui-cell"> -->
<!-- 					<div class="weui-cell__hd"><label class="weui-label">联系电话:</label></div> -->
<!-- 					<div class="weui-cell__bd"> -->
<!-- <%-- 						<input class="weui-input" required name="blrtel" disabled value="${jbxx.tel }" placeholder=""> --%> -->
<!-- 					</div> -->
<!-- 				</div> -->
				<input type="hidden" id="openid" name="openid" value="${jbxx.openid}">
				<input type="hidden" id="uuid" name="uuid" value="${jbxx.uuid}">
				<input type="hidden" id="pid" name="pid" value="${jbxx.id}">
			</div>

<!-- 			<h1>受理地点</h1>
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
			</div> -->

			<h1>落户地址信息</h1>
			<div class="weui-cells weui-cells_form">
				<div class="weui-cell">
					<div class="weui-cell__hd"><label class="weui-label">地市:</label></div>
					<div class="weui-cell__bd">
						<input class="weui-input" type="text" id="dishi"  value="${jbxx.lhdishi }" 	data-values="${jbxx.lhdishi_id }"  name="dishi" required placeholder="请选择地市">
					</div>
				</div>
				<div class="weui-cell">
					<div class="weui-cell__hd"><label class="weui-label">县区:</label></div>
					<div class="weui-cell__bd">
						<input class="weui-input" type="text" id="xianqu" value="${jbxx.xianqu }" 	data-values="${jbxx.xianqu_id }" name="xianqu" required placeholder="请选择县区">
					</div>
				</div>
				<div class="weui-cell">
					<div class="weui-cell__hd"><label class="weui-label">派出所:</label></div>
					<div class="weui-cell__bd">
						<input class="weui-input" type="text" id="blpaichusuo" value="${jbxx.blpaichusuo }" 	data-values="${jbxx.blpaichusuo_id }" name="blpaichusuo" required
							placeholder="请选择派出所">
					</div>
				</div>
				<div class="weui-cell">
					<div class="weui-cell__hd"><label class="weui-label">详细地址:</label></div>
				</div>
				<div class="weui-cell">
					<div class="weui-cell__bd">
						<textarea class="weui-textarea" value="${jbxx.xxdz }"  placeholder="请输入地址" rows="3" name="xxdz">${jbxx.xxdz }</textarea>
						<div class="weui-textarea-counter"><span>0</span>/200</div>
					</div>
				</div>

			</div>
			<h1>申报信息</h1>
			<div class="weui-cells weui-cells_form">
			
				<div class="weui-cell">
					<div class="weui-cell__hd"><label class="weui-label">姓名:</label></div>
					<div class="weui-cell__bd">
						<input class="weui-input" type="text"   name="sbrname" required value="${jbxx.hzxm }" required
							placeholder="请输入姓名">
					</div>
				</div>
				<div class="weui-cell">
					<div class="weui-cell__hd"><label class="weui-label">公民身份证号码:</label></div>
					<div class="weui-cell__bd">
						<input class="weui-input" required name="sbrsfz"  required value="${jbxx.hzsfz }" placeholder="请输入公民身份证号码">
					</div>
				</div>
				
				<div class="weui-cell">
					<div class="weui-cell__hd"  ><label class="weui-label">联系电话:</label></div>
					<div class="weui-cell__bd">
						<input class="weui-input" id="sbrlxdh" required name="sbrlxdh" placeholder="请输入联系电话" value="${jbxx.hztel }" >
					</div>
				</div>	
			
			
			
<!-- 				<div class="weui-cell">
					<div class="weui-cell__hd"><label class="weui-label">姓名:</label></div>
					<div class="weui-cell__bd">
						<input class="weui-input" type="text" name="sbrname" required placeholder="请输入姓名">
					</div>
				</div>
				<div class="weui-cell">
					<div class="weui-cell__hd"><label class="weui-label">公民身份证号码:</label></div>
					<div class="weui-cell__bd">
						<input class="weui-input" required name="sbrsfz" placeholder="请输入身份证号码">
					</div>
				</div>
				<div class="weui-cell">
					<div class="weui-cell__hd"><label class="weui-label">联系电话:</label></div>
					<div class="weui-cell__bd">
						<input class="weui-input" required name="sbrlxdh" placeholder="请输入联系电话">
					</div>
				</div> -->

			</div>
			<h1>随迁人信息</h1>
			<div class="weui-cells weui-cells_form  xinxi ">
				<div class="weui-cell">
					<div class="weui-cell__hd block require">
						<span>随迁人信息</span>
						<span class="tianjia"></span>
					</div>
                </div>
				<c:forEach items="${jbxx.tkrlist}" var="idxStatus" varStatus="status" >
					
						<div class="weui-cells weui-cells_form">
							<div class="weui-cell">
								<div class="weui-cell__hd"><label class="weui-label">随迁人姓名：</label></div>
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
										<i class="weui-icon-warn weui-icon_msg-primary imgwarn img_i_base1"></i>
									</div>
									<div class="weui_uploader_bd">
										<ul class="weui_uploader_files one">
                                            <c:forEach items="${photoes.zplist}" var="photoesdata">
                                                <li class="weui_uploader_file weui_uploader_status" style="background-image:url('${photoesdata.zplj} ')">
                                                    <div class='fgc'></div>
                                                </li>
                                            </c:forEach>
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
							请上传居民户口簿正面，内页，登记卡，索引页等，照片大小不超过5兆。
						</p>
						<img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/shili/wjwhztstp/hkb/jmhkb.jpg" alt="">
						<img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/shili/wjwhztstp/hkb/jmhkbny.jpg" alt="">
						<img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/shili/wjwhztstp/hkb/jmhkbsy.jpg" alt="">
						<img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/shili/wjwhztstp/hkb/jmhkbsyb.jpg" alt="">
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
										<div class="weui_cell_bd weui_cell_primary">居民身份证</div>
										<i class="weui-icon-warn weui-icon_msg-primary imgwarn img_i_base2"></i>
									</div>
									<div class="weui_uploader_bd">
										<ul class="weui_uploader_files two">
                                            <c:forEach items="${photoes.zplist}" var="photoesdata">
                                                <li class="weui_uploader_file weui_uploader_status" style="background-image:url('${photoesdata.zplj} ')">
                                                    <div class='fgc'></div>
                                                </li>
                                            </c:forEach>
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
							请上传身份证正反面，并保障照片清晰度（图片大小不超过5兆）
						</p>
						<img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/shili/wjwhztstp/sfz/sfzfm.jpg" alt="">
						<img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/shili/wjwhztstp/sfz/sfzzm.jpg" alt="">
						<button>确定</button>
					</div>
				</div>
			</div>
    </c:if>
    </c:forEach>
            <!--房屋产权证或不懂产证或房管部门出具的房屋权属状况信息 -->
                <c:if test="${jbxx.bltype_id =='f90a4748946545d58a5699c971f8776f'}">
                    <c:forEach items="${photoes}" var="photoes">
                        <c:if test="${photoes.type_id == '0e378c8d801a4c6299b5b1734598f29f' }">
			<div class="weui-cells  style1   weui-cells_form">
				<div class="container">
					<div class="weui_cells weui_cells_form">
						<div class="weui_cell">
							<div class="weui_cell_bd weui_cell_primary">
								<div class="weui_uploader">
									<div class="weui_uploader_hd weui_cell">
										<div class="weui_cell_bd weui_cell_primary">
											房屋产权证或不懂产证或房管部门出具的房屋权属状况信息
										</div>
										<i class="weui-icon-warn weui-icon_msg-primary imgwarn img_i_base3"></i>
									</div>
									<div class="weui_uploader_bd">
										<ul class="weui_uploader_files three">
                                            <c:forEach items="${photoes.zplist}" var="photoesdata">
                                                <li class="weui_uploader_file weui_uploader_status" style="background-image:url('${photoesdata.zplj} ')">
                                                    <div class='fgc'></div>
                                                </li>
                                            </c:forEach>
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
							请上传房屋产权证或不懂产证或房管部门出具的房屋权属状况信息，以房产证为例。图片保证清晰。最大不超过5兆。如不确定，可多种类型进行上传
						</p>
						<img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/shili/wjwhztstp/fczOne.jpg" alt="">
						<img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/shili/wjwhztstp/fczTwo.jpg" alt="">
						<img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/shili/wjwhztstp/fczThree.jpg" alt="">
						<img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/shili/wjwhztstp/fczFour.jpg" alt="">
						<button> 确定 </button>
					</div>
				</div>
            </div>
            </c:if>
            </c:forEach>
            </c:if>
            <!--  购房合同与购房发票  -->
                    <c:if test="${jbxx.bltype_id =='58def4f3d56142c49509a6e91dc276ef'}">
                        <c:forEach items="${photoes}" var="photoes">
                            <c:if test="${photoes.type_id == '752f151951a344dda975a524dcf6598d' }">
			<div class="weui-cells   style2  weui-cells_form">
				<div class="container">
					<div class="weui_cells weui_cells_form">
						<div class="weui_cell">
							<div class="weui_cell_bd weui_cell_primary">
								<div class="weui_uploader">
									<div class="weui_uploader_hd weui_cell">
										<div class="weui_cell_bd weui_cell_primary">
											购房合同与购房发票
										</div>
										<i class="weui-icon-warn weui-icon_msg-primary imgwarn img_i_base4"></i>
									</div>
									<div class="weui_uploader_bd">
										<ul class="weui_uploader_files four">
                                            <c:forEach items="${photoes.zplist}" var="photoesdata">
                                                <li class="weui_uploader_file weui_uploader_status" style="background-image:url('${photoesdata.zplj} ')">
                                                    <div class='fgc'></div>
                                                </li>
                                            </c:forEach>
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
							请上传购房合同与购房发票，暂无示例图片，照片大小不超过5兆。
						</p>
						<button>确定</button>
					</div>
				</div>
			</div>
    </c:if>
    </c:forEach>
    </c:if>
            <!--村居、单位出具房产证明和居住证明-->
            <c:if test="${jbxx.bltype_id =='a56b87cac8ea4a5f924c157950ef8306'}">
                <c:forEach items="${photoes}" var="photoes">
                    <c:if test="${photoes.type_id == 'd50db82892564b30bb5c907af51d549f' }">
			<div class="weui-cells style3  weui-cells_form">
				<div class="container">
					<div class="weui_cells weui_cells_form">
						<div class="weui_cell">
							<div class="weui_cell_bd weui_cell_primary">
								<div class="weui_uploader">
									<div class="weui_uploader_hd weui_cell">
										<div class="weui_cell_bd weui_cell_primary">
											村居、单位出具房产证明和居住证明
										</div>
										<i class="weui-icon-warn weui-icon_msg-primary imgwarn img_i_base5"></i>
									</div>
									<div class="weui_uploader_bd">
										<ul class="weui_uploader_files five">
                                            <c:forEach items="${photoes.zplist}" var="photoesdata">
                                                <li class="weui_uploader_file weui_uploader_status" style="background-image:url('${photoesdata.zplj} ')">
                                                    <div class='fgc'></div>
                                                </li>
                                            </c:forEach>
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
							请上传村居、单位出具房产证明和居住证明，暂无示例图片，照片大小不超过5兆。
						</p>
						<button>确定</button>
					</div>
				</div>
            </div>
                </c:if>
                </c:forEach>
                </c:if>
            <!--由派出所提供平面图-->
                <c:if test="${jbxx.bltype_id =='a56b87cac8ea4a5f924c157950ef8306'}">
                    <c:forEach items="${photoes}" var="photoes">
                        <c:if test="${photoes.type_id == '5c5afe5bc1714b35a60943e97ad8282f' }">
			<div class="weui-cells style3  weui-cells_form">
				<div class="container">
					<div class="weui_cells weui_cells_form">
						<div class="weui_cell">
							<div class="weui_cell_bd weui_cell_primary">
								<div class="weui_uploader">
									<div class="weui_uploader_hd weui_cell">
										<div class="weui_cell_bd weui_cell_primary">
											派出所提供平面图
										</div>
										<i class="weui-icon-warn weui-icon_msg-primary imgwarn img_i_base8"></i>
									</div>
									<div class="weui_uploader_bd">
										<ul class="weui_uploader_files eight">
                                            <c:forEach items="${photoes.zplist}" var="photoesdata">
                                                <li class="weui_uploader_file weui_uploader_status" style="background-image:url('${photoesdata.zplj} ')">
                                                    <div class='fgc'></div>
                                                </li>
                                            </c:forEach>
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
					<div class="weui_dialog">
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
						<p class="title"> 详细介绍 </p>
						<!--<img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/shili/shili.jpg" alt="">-->
						<p class="zhushi">
						请上传派出所提供平面图，暂无示例图片，照片大小不超过5兆。
						</p>
	<img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/shili/pmt/pmt.jpg" alt="">

	<button>确定</button>
					</div>
				</div>
			</div>
        </c:if>
        </c:forEach>
        </c:if>
            <!--由派出所提供平面图-->
                <c:if test="${jbxx.bltype_id =='a56b87cac8ea4a5f924c157950ef8306'}">
                    <c:forEach items="${photoes}" var="photoes">
                        <c:if test="${photoes.type_id == '3e17bb0cf5724ceab4ae10cb92e71e90' }">
			<div class="weui-cells style3  weui-cells_form">
				<div class="container">
					<div class="weui_cells weui_cells_form">
						<div class="weui_cell">
							<div class="weui_cell_bd weui_cell_primary">
								<div class="weui_uploader">
									<div class="weui_uploader_hd weui_cell">
										<div class="weui_cell_bd weui_cell_primary">
											社区民警调查核实
										</div>
										<i class="weui-icon-warn weui-icon_msg-primary imgwarn img_i_base9"></i>
									</div>
									<div class="weui_uploader_bd">
										<ul class="weui_uploader_files nine">
                                            <c:forEach items="${photoes.zplist}" var="photoesdata">
                                                <li class="weui_uploader_file weui_uploader_status" style="background-image:url('${photoesdata.zplj} ')">
                                                    <div class='fgc'></div>
                                                </li>
                                            </c:forEach>
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
					<div class="weui_dialog">
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
							请上传社区民警调查核实说明，暂无示例图片，照片大小不超过5兆。
						</p>
						<button>确定</button>
					</div>
				</div>
			</div>
    </c:if>
    </c:forEach>
    </c:if>


            <!--结婚证-->
                <c:forEach items="${photoes}" var="photoes">
                    <c:if test="${photoes.type_id == 'a69c7610096e401ca54e03e9adbf94ae' }">
			<div class="weui-cells   weui-cells_form">
				<div class="container">
					<div class="weui_cells weui_cells_form">
						<div class="weui_cell">
							<div class="weui_cell_bd weui_cell_primary">
								<div class="weui_uploader">
									<div class="weui_uploader_hd weui_cell">
										<div class="weui_cell_bd weui_cell_primary">
											结婚证（居住落户携带配偶）
										</div>
										<i class="weui-icon-warn weui-icon_msg-primary imgwarn img_i_base6"></i>
									</div>
									<div class="weui_uploader_bd">
										<ul class="weui_uploader_files six">
                                            <c:forEach items="${photoes.zplist}" var="photoesdata">
                                                <li class="weui_uploader_file weui_uploader_status" style="background-image:url('${photoesdata.zplj} ')">
                                                    <div class='fgc'></div>
                                                </li>
                                            </c:forEach>
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
					<div class="weui_dialog">
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
							居住落户携带配偶的则需要上传结婚证,图片保证清晰，最大不超过5兆。可上传多张。
						</p>
						<img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/shili/wjwhztstp/jhz/jhzOne.jpg" alt="">
						<img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/shili/wjwhztstp/jhz/jhzTwo.jpg" alt="">
						<button>确定</button>
					</div>
				</div>
			</div>
    </c:if>
    </c:forEach>
            <!--亲属关系证明-->
                    <c:forEach items="${photoes}" var="photoes">
                        <c:if test="${photoes.type_id == 'c6c3d461be5244deb5e4c59a5e2542fa' }">
			<div class="weui-cells  weui-cells_form">
				<div class="container">
					<div class="weui_cells weui_cells_form">
						<div class="weui_cell">
							<div class="weui_cell_bd weui_cell_primary">
								<div class="weui_uploader">
									<div class="weui_uploader_hd weui_cell">
										<div class="weui_cell_bd weui_cell_primary">
											居住落户携带未成年子女的需亲属关系证明
										</div>
										<i class="weui-icon-warn weui-icon_msg-primary imgwarn img_i_base7"></i>
									</div>
									<div class="weui_uploader_bd">
										<ul class="weui_uploader_files seven">
                                            <c:forEach items="${photoes.zplist}" var="photoesdata">
                                                <li class="weui_uploader_file weui_uploader_status" style="background-image:url('${photoesdata.zplj} ')">
                                                    <div class='fgc'></div>
                                                </li>
                                            </c:forEach>
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
					<div class="weui_dialog">
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
							亲属关系证明
							<br><br>
							<img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/shili/wjwhztstp/qsgxzm/qsgxzm.jpg" alt="">
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