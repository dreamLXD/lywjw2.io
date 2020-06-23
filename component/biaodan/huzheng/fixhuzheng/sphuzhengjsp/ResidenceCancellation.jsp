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
	<title>注销户口证明</title>
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
	<script src="<%=basePath%>webpage/lywjw/lyswjwwx/component/biaodan/huzheng/fixhuzheng/js/ResidenceCancellation.js"></script>
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
                    户政身份证照片不清晰，请重新上传. 户政身份证照片不清晰，请重新上传. 户政身份证照片不清晰，请重新上传.
                </div>
            </div> -->
            
            <form action="#" method="post" id='signupForm'>
                <section>
                    <!--<h1>选择类型</h1>-->
                    <!--<div class="weui-cells weui-cells_form">-->
                    <!--<div class="weui-cell">-->
                    <!--<div class="weui-cell__hd"><label class="weui-label">类型选择：</label></div>-->
                    <!--<div class="weui-cell__bd">-->
                    <!--<input class="weui-input" id="style" required name="type" placeholder="类型">-->
                    <!--</div>-->
                    <!--</div>-->
                    <!--</div>-->
            
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
                                    data-values="${jbxx.blpcs_id }" placeholder="请选择派出所" readonly>
                            </div>
                        </div>
            
                    </div>
            
            
            
                    <h1>上传材料</h1>
                    <!--  本人或亲属申请 -->
                    <c:forEach items="${photoes}" var="photoes">
                        <c:if test="${photoes.type_id == '7b37d2fa06714effa27e2d5890ac5040' }">
                            <div class="weui-cells weui-cells_form">
                                <div class="container">
                                    <div class="weui_cells weui_cells_form">
                                        <div class="weui_cell">
                                            <div class="weui_cell_bd weui_cell_primary">
                                                <div class="weui_uploader">
                                                    <div class="weui_uploader_hd weui_cell">
                                                        <div class="weui_cell_bd weui_cell_primary">本人或亲属申请
                                                        </div>
                                                        <i class="weui-icon-warn weui-icon_msg-primary imgwarn img_i_base1"></i>
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
                                        <p class="title"> 详细介绍 </p>
                                        <!--<img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/shili/shili.jpg" alt="">-->
                                        <p class="zhushi">
                                            请上传本人或亲属申请，暂无示例图片，照片大小不超过5兆。
                                        </p>
                                        <button>确定</button>
                                    </div>
                                </div>
                            </div>
                        </c:if>
                    </c:forEach>
                    <!-- 有效身份证件  -->
                    <c:forEach items="${photoes}" var="photoes">
                        <c:if test="${photoes.type_id == 'b8cf881bfe2c4eb1996c9304ab9fad15' }">
                            <div class="weui-cells  weui-cells_form">
                                <div class="container">
                                    <div class="weui_cells weui_cells_form">
                                        <div class="weui_cell">
                                            <div class="weui_cell_bd weui_cell_primary">
                                                <div class="weui_uploader">
                                                    <div class="weui_uploader_hd weui_cell">
                                                        <div class="weui_cell_bd weui_cell_primary">有效身份证件</div>
                                                        <i class="weui-icon-warn weui-icon_msg-primary imgwarn img_i_base2"></i>
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
                                            请上传有效身份证件，如身份证，户口簿，驾驶证等，保证图片清晰，最大不超过5兆。
                                        </p>
                                        <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/shili/wjwhztstp/sfz/sfzfm.jpg" alt="">
                                        <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/shili/wjwhztstp/sfz/sfzzm.jpg" alt="">
                                        <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/shili/wjwhztstp/hkb/jmhkb.jpg" alt="">
                                        <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/shili/wjwhztstp/hkb/jmhkbny.jpg" alt="">
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