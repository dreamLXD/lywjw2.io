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
	<title>非婚生随父母出生登记</title>
	<link rel="stylesheet" href="<%=basePath%>webpage/lywjw/lyswjwwx/node_modules/jquery-weui/dist/css/jquery-weui.css">
	<link rel="stylesheet" href="<%=basePath%>webpage/lywjw/lyswjwwx/node_modules/jquery-weui/dist/lib/weui.min.css">
	<link rel="stylesheet" href="<%=basePath%>webpage/lywjw/lyswjwwx/css/weui_biaodan.css">
	<link rel="stylesheet" href="<%=basePath%>webpage/lywjw/lyswjwwx/css/fixbiaodan.css">
	<!--<link rel="stylesheet" href="<%=basePath%>webpage/lywjw/lyswjwwx/css/file.css">-->
		<link rel="stylesheet" href="<%=basePath%>webpage/lywjw/lyswjwwx/css/myweui.css">
	<script src="<%=basePath%>webpage/lywjw/lyswjwwx/js/basepath.js"></script>
	<script src="<%=basePath%>webpage/lywjw/lyswjwwx/component/biaodan/huzheng/js/alert.js"></script>
	<script src="<%=basePath%>webpage/lywjw/lyswjwwx/node_modules/jquery-weui/dist/lib/jquery-2.1.4.js"></script>
	<script src="<%=basePath%>webpage/lywjw/lyswjwwx/node_modules/jquery-weui/dist/js/jquery-weui.js"></script>
	<script src="<%=basePath%>webpage/lywjw/lyswjwwx/node_modules/jquery-weui/dist/js/city-picker.js"></script>
	<script src="<%=basePath%>webpage/lywjw/lyswjwwx/js/jquery.validate.min.js"></script>
	<script src="<%=basePath%>webpage/lywjw/lyswjwwx/js/regular.js"></script>
	<script src="<%=basePath%>webpage/lywjw/lyswjwwx/component/biaodan/huzheng/fixhuzheng/js/UnMarriageBabiesRegistration.js">
	</script>
	<script src="<%=basePath%>webpage/lywjw/lyswjwwx/js/jiazai.js"></script>
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
          
            <form action="#" method="GET" id='signupForm'>
                <section>
            
                    <h1>办理类型</h1>
                    <div class="weui-cells weui-cells_form">
                        <div class="weui-cell">
                            <div class="weui-cell__hd"><label class="weui-label">类型选择：</label></div>
                            <div class="weui-cell__bd">
                                <input class="weui-input" id="style" required value="${jbxx.bltype }"  	data-values="${jbxx.bltype_id }" name="bltype" placeholder="请选择类型">
                            </div>
                        </div>
                    </div>
            
                    <h1>申请人信息</h1>
                    <div class="weui-cells weui-cells_form">
                        <div class="weui-cell">
                            <div class="weui-cell__hd"><label class="weui-label">姓名:</label></div>
                            <div class="weui-cell__bd">
                                <input class="weui-input"   type="text" name="blrxm" disabled value="${jbxx.blrxm }" required
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
                            <div class="weui-cell__hd"><label class="weui-label">联系电话:</label></div>
                            <div class="weui-cell__bd">
                                <input class="weui-input" id="tel" required name="tel" placeholder="请输入电话号码" value="${jbxx.blrtel }">
                            </div>
                        </div>
                        <!-- 				<div class="weui-cell"> -->
                        <!-- 					<div class="weui-cell__hd"><label class="weui-label">性别:</label></div> -->
                        <!-- 					<div class="weui-cell__bd"> -->
                        <!-- <%-- 						<input class="weui-input" required name="blrxb" id="blrxb" disabled value="${jbxx.blrxb }" --%> -->
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
            
                    <h1>受理地点</h1>
                    <div class="weui-cells weui-cells_form">
                        <div class="weui-cell">
                            <div class="weui-cell__hd"><label class="weui-label">选择分局：</label></div>
                            <div class="weui-cell__bd">
                                <input class="weui-input" id="idfj" required name="blfj" value="${jbxx.blfj }"	data-values="${jbxx.blfj_id }" placeholder="请先选择分局">
                            </div>
                        </div>
                        <div class="weui-cell">
                            <div class="weui-cell__hd"><label class="weui-label">选择派出所：</label></div>
                            <div class="weui-cell__bd">
                                <input class="weui-input" id="idpcs" required name="blpcs"  value="${jbxx.blpcs }"	data-values="${jbxx.blpcs_id }"  placeholder="请选择派出所" readonly>
                            </div>
                        </div>
                    </div>
            
                    <h1>基本信息</h1>
                    <div class="weui-cells weui-cells_form">
                        <div class="weui-cell">
                            <div class="weui-cell__hd"><label class="weui-label">父亲姓名：</label></div>
                            <div class="weui-cell__bd">
                                <input class="weui-input" required name="fqname"   value="${jbxx.fqname }" placeholder="请输入姓名">
                            </div>
                        </div>
                        <div class="weui-cell">
                            <div class="weui-cell__hd"><label class="weui-label">父亲身份号码：</label></div>
                            <div class="weui-cell__bd">
                                <input class="weui-input" name="fqsfz" required  value="${jbxx.fqsfz }" placeholder="请输入身份证">
                            </div>
                        </div>
                        <div class="weui-cell">
                            <div class="weui-cell__hd"><label class="weui-label">母亲姓名：</label></div>
                            <div class="weui-cell__bd">
                                <input class="weui-input" required name="mqname" value="${jbxx.mqname }" placeholder="请输入姓名">
                            </div>
                        </div>
                        <div class="weui-cell">
                            <div class="weui-cell__hd"><label class="weui-label">母亲身份号码：</label></div>
                            <div class="weui-cell__bd">
                                <input class="weui-input" required name="mqsfz" value="${jbxx.mqsfz }" placeholder="请输入身份证">
                            </div>
                        </div>
                    </div>
            
                    <h1>新生儿信息</h1>
                    <div class="weui-cells weui-cells_form">
                        <div class="weui-cell">
                            <div class="weui-cell__hd"><label class="weui-label">出生医学证明编号：</label></div>
                            <div class="weui-cell__bd">
                                <input class="weui-input" required name="yecsyxzm"  value="${jbxx.yecsyxzm }"  placeholder="请输入编号">
                            </div>
                        </div>
                        <div class="weui-cell">
                            <div class="weui-cell__hd"><label class="weui-label">姓名：</label></div>
                            <div class="weui-cell__bd">
                                <input class="weui-input" required name="yename"   value="${jbxx.yename }" placeholder="请输入姓名">
                            </div>
                        </div>
                        <div class="weui-cell">
                            <div class="weui-cell__hd"><label class="weui-label">性别：</label></div>
                            <div class="weui-cell__bd">
                                <input class="weui-input" id="sex" required name="yesex" value="${jbxx.yesex }" placeholder="请选择性别">
                            </div>
                        </div>
                        <div class="weui-cell">
                            <div class="weui-cell__hd"><label class="weui-label">出生日期：</label></div>
                            <div class="weui-cell__bd">
                                <input class="weui-input" type="text"  value="${jbxx.yecsrq }"  name="yecsrq" data-toggle='date' id="time" required
                                    placeholder="请选择日期">
                            </div>
                        </div>
            
                        <div class="weui-cell">
                            <div class="weui-cell__hd"><label class="weui-label">与申请人关系：</label></div>
                            <div class="weui-cell__bd">
                                <input class="weui-input" id="resp" name="yeysqrgx"  data-values="${jbxx.yeysqrgx_id }"  value="${jbxx.yeysqrgx }"  required placeholder="请选择关系">
                            </div>
                        </div>
                        <div class="weui-cell">
                            <div class="weui-cell__hd"><label class="weui-label">民族：</label></div>
                            <div class="weui-cell__bd">
                                <input class="weui-input" id="Nation" name="yemz" data-values="${jbxx.yemz_id }"  value="${jbxx.yemz }"    required placeholder="请选择民族">
                            </div>
                        </div>
                    </div>
                    <h1>上传材料</h1>
                    <!--父母居民户口簿-->
                    <c:forEach items="${photoes}" var="photoes">
                            <c:if test="${photoes.type_id == '312fd5e9033148c2aa4d8d82d077b24b' }">
                    <div class="weui-cells weui-cells_form">
                        <div class="container">
                            <div class="weui_cells weui_cells_form">
                                <div class="weui_cell">
                                    <div class="weui_cell_bd weui_cell_primary">
                                        <div class="weui_uploader">
                                            <div class="weui_uploader_hd weui_cell">
                                                <div class="weui_cell_bd weui_cell_primary">父母居民户口簿</div>
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
                                    请上传父母居民户口簿正面，内页，登记卡，索引页等，照片大小不超过5兆。
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
                    <!-- 父母居民身份证 -->
                                    <c:forEach items="${photoes}" var="photoes">
                                        <c:if test="${photoes.type_id == 'f86094d5d57f4cc5b94a8b701dda3264' }">
                    <div class="weui-cells weui-cells_form">
                        <div class="container">
                            <div class="weui_cells weui_cells_form">
                                <div class="weui_cell">
                                    <div class="weui_cell_bd weui_cell_primary">
                                        <div class="weui_uploader">
                                            <div class="weui_uploader_hd weui_cell">
                                                <div class="weui_cell_bd weui_cell_primary">父母居民身份证</div>
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
                                    请上传父母居民身份证正反面，并保障照片清晰度（图片大小不超过5兆）
                                </p>
                                <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/shili/wjwhztstp/sfz/sfzfm.jpg" alt="">
                                <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/shili/wjwhztstp/sfz/sfzzm.jpg" alt="">
                                <button>确定</button>
                            </div>
                        </div>
                    </div>
                        </c:if>
                        </c:forEach>
                    <!--出生医学证明-->
                        <c:forEach items="${photoes}" var="photoes">
                            <c:if test="${photoes.type_id == 'daea09e9ab2c469ca1391c4cd0f7b66e' }">
                    <div class="weui-cells  weui-cells_form">
                        <div class="container">
                            <div class="weui_cells weui_cells_form">
                                <div class="weui_cell">
                                    <div class="weui_cell_bd weui_cell_primary">
                                        <div class="weui_uploader">
                                            <div class="weui_uploader_hd weui_cell">
                                                <div class="weui_cell_bd weui_cell_primary">出生医学证明</div>
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
                                    请上传出生医学证明，保证清晰，最大不超过5兆，可上传多张。
                                </p>
                                <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/shili/wjwhztstp/csyxzm/cszmOne.jpg" alt="">
                                <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/shili/wjwhztstp/csyxzm/cszmTwo.jpg" alt="">
                                <button>确定</button>
                            </div>
                        </div>
                    </div>
            </c:if>
            </c:forEach>
                    <!--非婚生育说明-->
                <c:forEach items="${photoes}" var="photoes">
                    <c:if test="${photoes.type_id == '57f105d08090403080936f371b3c79c2' }">
                    <div class="weui-cells   weui-cells_form">
                        <div class="container">
                            <div class="weui_cells weui_cells_form">
                                <div class="weui_cell">
                                    <div class="weui_cell_bd weui_cell_primary">
                                        <div class="weui_uploader">
                                            <div class="weui_uploader_hd weui_cell">
                                                <div class="weui_cell_bd weui_cell_primary">非婚生育说明</div>
                                                <i class="weui-icon-warn weui-icon_msg-primary imgwarn img_i_base4"></i>
                                            </div>
                                            <div class="weui_uploader_bd">
                                                <ul class="weui_uploader_files four">
                                                        <ul class="weui_uploader_files three">
                                                            <c:forEach items="${photoes.zplist}" var="photoesdata">
                                                                <li class="weui_uploader_file weui_uploader_status" style="background-image:url('${photoesdata.zplj} ')">
                                                                    <div class='fgc'></div>
                                                                </li>
                                                            </c:forEach>
                                                        </ul>
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
                                    请上传非婚生育说明，暂无示例图片，照片大小不超过5兆。
                                </p>
                                <button>确定</button>
                            </div>
                        </div>
                    </div>
            </c:if>
            </c:forEach>
            
                    <!-- 亲子鉴定报告 -->
                            <c:if test="${jbxx.bltype_id =='9a03fd84ba9d42bd84441e4272ea0b1b'}">
                                <c:forEach items="${photoes}" var="photoes">
                                    <c:if test="${photoes.type_id == 'b07bfec1c44447e1803454238a2e9340' }">
                    <div class="weui-cells style1 weui-cells_form">
                        <div class="container">
                            <div class="weui_cells weui_cells_form">
                                <div class="weui_cell">
                                    <div class="weui_cell_bd weui_cell_primary">
                                        <div class="weui_uploader">
                                            <div class="weui_uploader_hd weui_cell">
                                                <div class="weui_cell_bd weui_cell_primary">亲子鉴定报告</div>
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
                                <p class="title"> 示例图片 </p>
                                <p class="zhushi">
                                    请上传亲子鉴定报告，如司法鉴定许可证，司法鉴定所鉴定意见书，司法鉴定人职业证等，保证图片清晰，最大不超过5兆。
                                </p>
                                <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/shili/wjwhztstp/qzjd/qzjdFour.jpg" alt="">
                                <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/shili/wjwhztstp/qzjd/qzjdOne.jpg" alt="">
                                <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/shili/wjwhztstp/qzjd/qzjdSeven.jpg" alt="">
                                <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/shili/wjwhztstp/qzjd/qzjdSix.jpg" alt="">
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