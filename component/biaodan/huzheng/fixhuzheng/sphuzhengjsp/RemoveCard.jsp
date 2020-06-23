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
	<title>持准迁证</title>
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
	<script src="<%=basePath%>webpage/lywjw/lyswjwwx/component/biaodan/huzheng/fixhuzheng/js/RemoveCard.js"></script>
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
                                        <input class="weui-input" id="idfj" value="${jbxx.blfj }" data-values="${jbxx.blfj_id }" required
                                            name="blfj" placeholder="请先选择分局">
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
                            <!--1.准迁证（仅限跨省迁移）；-->
                            <c:forEach items="${photoes}" var="photoes">
                                <c:if test="${photoes.type_id == '59e3fefd983b4bf9ab3602c69382b05d' }">
                                    <div class="weui-cells style1 weui-cells_form">
                                        <div class="container">
                                            <div class="weui_cells weui_cells_form">
                                                <div class="weui_cell">
                                                    <div class="weui_cell_bd weui_cell_primary">
                                                        <div class="weui_uploader">
                                                            <div class="weui_uploader_hd weui_cell">
                                                                <div class="weui_cell_bd weui_cell_primary">
                                                                    准迁证（仅限跨省迁移）
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
                                                    请上传准迁证，照片大小不超过5兆。
                                                </p>
                                                <img src="<%=basePath%>webpage/lywjw/lyswjwwx/component/biaodan/huzheng/img/zqz/zqz.jpg"
                                                    alt="">
                    
                                                <button>确定</button>
                                            </div>
                                        </div>
                                    </div>
                                </c:if>
                            </c:forEach>
                            <!--2.居民户口簿或集体户口登记卡。-->
                            <c:forEach items="${photoes}" var="photoes">
                                <c:if test="${photoes.type_id == '09f86e6af71c48609e30f167e8b871e1' }">
                                    <div class="weui-cells style2 weui-cells_form">
                                        <div class="container">
                                            <div class="weui_cells weui_cells_form">
                                                <div class="weui_cell">
                                                    <div class="weui_cell_bd weui_cell_primary">
                                                        <div class="weui_uploader">
                                                            <div class="weui_uploader_hd weui_cell">
                                                                <div class="weui_cell_bd weui_cell_primary">
                                                                    居民户口簿或集体户口登记卡
                                                                </div>
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
                                                <p class="title"> 示例图片</p>
                                                <p class="zhushi">
                                                    请上传居民户口簿或集体户口登记卡,以户口簿为例，需要上传户口簿正面，内页，登记卡，索引页等，照片大小不超过5兆。
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
                            <!-- .预备
                    			<div class="weui-cells style2 weui-cells_form">
                    				<div class="container">
                    					<div class="weui_cells weui_cells_form">
                    						<div class="weui_cell">
                    							<div class="weui_cell_bd weui_cell_primary">
                    								<div class="weui_uploader">
                    									<div class="weui_uploader_hd weui_cell">
                    										<div class="weui_cell_bd weui_cell_primary">
                    											预备
                    										</div>
                    										<i class="weui-icon-warn weui-icon_msg-primary imgwarn img_i_base2"></i>
                    									</div>
                    									<div class="weui_uploader_bd">
                    										<ul class="weui_uploader_files two">
                    										</ul>
                    										<div class="weui_uploader_input_wrp">
                    											<input class="weui_uploader_input js_file2" type="file" name="img"
                    												accept="image/jpg,image/jpeg,image/png,image/gif" multiple=""></div>
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
                    						<!--<img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/shili/shili.jpg" alt="">
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