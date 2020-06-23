<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>警情审批</title>
<link rel="stylesheet"
	href="<%=basePath%>webpage/lywjw/lyswjwwx/node_modules/jquery-weui/dist/css/jquery-weui.css">
<link rel="stylesheet"
	href="<%=basePath%>webpage/lywjw/lyswjwwx/node_modules/jquery-weui/dist/lib/weui.min.css">
<link rel="stylesheet"
	href="<%=basePath%>webpage/lywjw/lyswjwwx/component/jingqing/css/allrw.css">
<link rel="stylesheet"
	href="<%=basePath%>webpage/lywjw/lyswjwwx/component/jingqing/css/grlist_bd.css">
<link rel="stylesheet"
	href="<%=basePath%>webpage/lywjw/lyswjwwx/component/jingqing/css/grlist_bd_2.css">
<!--<link rel="stylesheet" href="../../css/biaodan.css">-->
    <script src="<%=basePath%>webpage/lywjw/lyswjwwx/js/basepath.js"></script>
    <script src="<%=basePath%>webpage/lywjw/lyswjwwx/component/biaodan/huzheng/js/alert.js"></script>   
<script
	src="<%=basePath%>webpage/lywjw/lyswjwwx/node_modules/jquery-weui/dist/lib/jquery-2.1.4.js"></script>
	
<script
	src="<%=basePath%>webpage/lywjw/lyswjwwx/node_modules/jquery-weui/dist/js/jquery-weui.min.js"></script>
<script
	src="<%=basePath%>webpage/lywjw/lyswjwwx/js/jquery.validate.min.js"></script>
<script
	src="<%=basePath%>webpage/lywjw/lyswjwwx/component/jingqing/js/regular.js"></script>
<style type="text/css">

/*label.error {*/
/*!*background: url("./demo/images/unchecked.gif") no-repeat 0px 0px;*!*/
/*padding-left: 16px;*/

/*padding-bottom: 2px;*/

/*font-weight: bold;*/

/*color: #EA5200;*/
/*}*/

/*label.checked {*/
/*!*background: url("./demo/images/checked.gif") no-repeat 0px 0px;*!*/
/*}*/
.weui-cells ul {
	display: flex;
}

.weui-cell__ft {
	color: #666;
}

.weui-cells ul li {
	margin-bottom: 8px;
}

.typecell>.weui-cell {
	border-bottom: 1px solid #666;
}

input {
	text-align: right;
}

.blue_color {
	background-color: rgb(88, 174, 255) !important;
	color: #fff !important;
	box-shadow: -3px -3px 3px #b9b9b9;
}

input, textarea {
	color: #888 !important;
}

.typecell .weui-cell:nth-last-of-type(1) {
	border: none;
}

.weui-input {
	padding-right: 10px;
	border: 1px solid #ccc;
	box-sizing: border-box;
}

.weui-textarea {
	padding-right: 10px;
	padding-left: 0 !important;
}

.xqbanner {
	padding: 0;
}

input, textarea {
	padding-left: 10px;
}

textarea.error, input.error {
	position: relative;
	border: 1px solid red !important;
	box-sizing: border-box
}

textarea.error::-webkit-input-placeholder, input.error::-webkit-input-placeholder
	{
	color: red !important;
	font-size: 12px;
	transform: translateX(10px)
}

textarea, input {
	transform: translateX(0);
	transition: all 1s;
}
</style>
</head>

<body>
	<div class="zhegai"></div>

	<div class="weui-tab">
		<div class="weui-navbar">
			<a class="weui-navbar__item weui-bar__item--on" href="#tab1">
				用户详情 </a> <a class="weui-navbar__item" href="#tab2"> 出警单 </a>
		</div>
		<div class="weui-tab__bd">
			<div id="tab1" class="weui-tab__bd-item weui-tab__bd-item--active">
				<div class="weui-cells">
					<div class="xqbanner">
						<span></span> 基本信息 <span></span>
					</div>
					<div class="weui-cell">
						<div class="weui-cell__bd">
							<div class="weui-cell">
								<div class="weui-cell__bd">
									<p>报警人：</p>
								</div>
								<div class="weui-cell__ft ">${record.bjrxm}</div>
							</div>
							<div class="weui-cell">
								<div class="weui-cell__bd">
									<p>报警时间:</p>
								</div>
								<div class="weui-cell__ft">${record.bjsj}</div>
							</div>
							<div class="weui-cell">
								<div class="weui-cell__bd">
									<p>联系电话:</p>
								</div>
								<div class="weui-cell__ft">${record.lxdh}</div>
							</div>
							<div class="weui-cell block">
								<div class="weui-cell__hd block">
									<span>联系地址:</span>
								</div>
								<div class="weui-cell__ft">
									<span id="address" class="gird">${record.lxdz}</span>
								</div>
							</div>
							<div class="weui-cell">
								<div class="weui-cell__bd">
									<p>事件单编号:</p>
								</div>
								<div class="weui-cell__ft">${record.sjdbh}</div>
							</div>
							<div class="weui-cell">
								<div class="weui-cell__bd">
									<p>报警电话:</p>
								</div>
								<div class="weui-cell__ft">${record.bjdh}</div>
							</div>
							<div class="weui-cell block">
								<div class="weui-cell__hd block orientation">
									<span>地理定位:</span> <span class="dldw"></span>
								</div>
								<div class="weui-cell__ft">
									<span id="address" class="gird">${record.bjdz}</span>
								</div>
							</div>
							<div class="weui-cell block">
								<div class="weui-cell__bd">
									<p>报警内容:</p>
								</div>
								<div class="weui-cell__ft">${record.bjnr}</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div id="tab2" class="weui-tab__bd-item">
				<form action="#" method="post" id='signupForm'>
					<div class="weui-cells">
						<div class="xqbanner">
							<span></span> 现场视频 <span></span>
						</div>
						<c:forEach items="${movies}" var="movies">
						<div class="weui-cell">
							<video controls src="<%=basePath%>upload/${movies.spname}"></video>
						</div>
						</c:forEach>	
					</div>
					<div class="weui-cells">
						<div class="xqbanner">
							<span></span> 照片材料 <span></span>
						</div>

						<div class="weui-cell">

							<ul>
								<c:forEach items="${photoes}" var="photoes">
									<li><img src="${photoes.photoes}" alt=""></li>
								</c:forEach>
							</ul>

						</div>

					</div>

					<div class="weui-cells">
						<div class="xqbanner">
							<span></span> 现场详情 <span></span>
						<input type="hidden" id="openid" name="openid" value="${openid}">
						<input type="hidden" id="sjdbh" name="sjdbh" value="${record.sjdbh}">
						<input type="hidden" id="rzdj" name="rzdj" value="${rzdj}">
						</div>


						<div class="weui-cell">
							<div class="weui-cell__bd">
								<div class="weui-cell">
									<div class="weui-cell__bd">
										<p>案发场所类别：</p>
									</div>
									<div class="weui-cell__ft ">
										${sp_alarmlist.afcslb}
									</div>
								</div>
								<div class="weui-cell">
									<div class="weui-cell__bd">
										<p>案发场所类型：</p>
									</div>
									<div class="weui-cell__ft ">
									  ${sp_alarmlist.afcslx}
									</div>
								</div>


								<div class="weui-cell block">
									<div class="weui-cell__bd">
										<p>案发地点:</p>
									</div>
									<div class="weui-cell__ft">
										${sp_alarmlist.afdlwz}
									</div>
								</div>
								<div class="weui-cell block">
									<div class="weui-cell__bd">
										<p>现场处理情况说明:</p>
									</div>
									<div class="weui-cell__ft">
										 ${sp_alarmlist.xcclqk}
									</div>
								</div>

								<div class="weui-cell">
									<div class="weui-cell__bd">
										<p>死亡人数（人）：</p>
									</div>
									<div class="weui-cell__ft ">
										${sp_alarmlist.swrs}
									</div>
								</div>
								<div class="weui-cell">
									<div class="weui-cell__bd">
										<p>受伤人数（人）：</p>
									</div>
									<div class="weui-cell__ft ">
										${sp_alarmlist.ssrs}
									</div>
								</div>
								<div class="weui-cell">
									<div class="weui-cell__bd">
										<p>直接损失金额(万元)：</p>
									</div>
									<div class="weui-cell__ft ">
										${sp_alarmlist.zjjjss}
									</div>
								</div>

								<div class="weui-cell">
									<div class="weui-cell__bd">
										<p>到场时间：</p>
									</div>
									<div class="weui-cell__ft"  >
                                       ${sp_alarmlist.ddxcsj}
                                    </div>
								</div>
								<div class="weui-cell">
									<div class="weui-cell__bd"  >
										<p>案发开始时间：</p>
									</div>
									<div class="weui-cell__ft ">
										${sp_alarmlist.afsj}
									</div>
								</div>
								<div class="weui-cell">
									<div class="weui-cell__bd">
										<p>处警结束时间：</p>
									</div>
									<div class="weui-cell__ft ">
										${sp_alarmlist.afjssj}

									</div>
								</div>
								<div class="weui-cell">
									<div class="weui-cell__bd">
										<p>现场有无证据：</p>
									</div>
									<div class="weui-cell__ft ">
										${sp_alarmlist.xczj}
									</div>
								</div>
								<div class="weui-cell">
									<div class="weui-cell__bd">
										<p>视频份数（份）：</p>
									</div>
									<div class="weui-cell__ft ">
										${sp_alarmlist.spfs}

									</div>
								</div>
								<div class="weui-cell">
									<div class="weui-cell__bd">
										<p>照片份数（份）：</p>
									</div>
									<div class="weui-cell__ft ">
										${sp_alarmlist.zpfs}
									</div>
								</div>
								<div class="weui-cell">
									<div class="weui-cell__bd">
										<p>物证份数（份）：</p>
									</div>
									<div class="weui-cell__ft ">
										${sp_alarmlist.zwfs}
									</div>
								</div>
								<div class="weui-cell">
									<div class="weui-cell__bd">
										<p>处理民警:</p>
									</div>
									<div class="weui-cell__ft ">
										${sp_alarmlist.cdjyxm}
									</div>
								</div>
								<div class="weui-cell">
									<div class="weui-cell__bd">
										<p>警情类别:</p>
									</div>
									<div class="weui-cell__ft ">
										${sp_alarmlist.jqlbdm}
									</div>
								</div>
								<div class="weui-cell">
									<div class="weui-cell__bd">
										<p>警情类型:</p>
									</div>
									<div class="weui-cell__ft ">
										${sp_alarmlist.jqlxdm}
									</div>
								</div>
								<div class="weui-cell">
									<div class="weui-cell__bd">
										<p>警情细类:</p>
									</div>
									<div class="weui-cell__ft ">
										${sp_alarmlist.jqxldm}
									</div>
								</div>
								<div class="weui-cell">
									<div class="weui-cell__bd">
										<p>处理结果:</p>
									</div>
									<div class="weui-cell__ft ">
										${sp_alarmlist.jqcljg}
									</div>
								</div>
							</div>
						</div>
					</div>
                <div class="weui-cells typecell">
                    <div class="xqbanner"> <span></span> 当事人 <span></span></div>
                    <c:forEach items="${party }" var="party">
                    <div class="weui-cell">
                        <div class="weui-cell__bd">
                            <div class="weui-cell">
                                <div class="weui-cell__bd">
                                    <p>当事人姓名：</p>
                                </div>
                                <div class="weui-cell__ft ">${party.zrxm}</div>
                            </div>
                            <div class="weui-cell">
                                <div class="weui-cell__bd">
                                    <p>联系人电话：</p>
                                </div>
                                <div class="weui-cell__ft ">${party.lxdh}</div>
                            </div>
                            <div class="weui-cell block">
                                <div class="weui-cell__bd">
                                    <p>身份证号码/现住地址/其他:</p>
                                </div>
                                <div class="weui-cell__ft">${party.others}</div>
                            </div>
                        </div>
                     <div class="Sign" <c:if test="${'0' eq party.sign}">style="display: none" </c:if>></div>
                    </div>					
                    </c:forEach>
                </div>
				
                <div class="weui-cells typecell" >
                    <div class="xqbanner"> <span></span> 见证人 <span></span></div>
					<c:forEach items="${eyewitness }" var="eyewitness">
                   <div class="weui-cell">
                        <div class="weui-cell__bd">
                            <div class="weui-cell">
                                <div class="weui-cell__bd">
                                    <p>见证人姓名：</p>
                                </div>
                            	<div class="weui-cell__ft ">${eyewitness.zrxm}</div>
                            </div>
                            <div class="weui-cell">
                                <div class="weui-cell__bd">
                                    <p>联系人电话：</p>
                                </div>
                            	<div class="weui-cell__ft ">${eyewitness.lxdh}</div>
                            </div>
                            <div class="weui-cell block">
                                <div class="weui-cell__bd">
                                    <p>身份证号码/现住地址/其他:</p>
                                </div>
                                <div class="weui-cell__ft">${eyewitness.others}</div>                                                     
                            </div>                             
                        </div>                        
                    <div class="Sign" <c:if test="${'0' eq eyewitness.sign}">style="display: none" </c:if>></div>
                    </div >
					</c:forEach>
                </div>
               
                
                <div class="weui-cells typecell" <c:if test="${list_twoInput == null||'' eq list_twoInput}"> style="display: none" </c:if>>        
                    <div class="xqbanner"> <span></span> 后续录入 <span></span></div>
					<c:forEach items="${list_twoInput }" var="list_twoInput" >
                   <div class="weui-cell"  >
                        <div class="weui-cell__bd">
                            <div class="weui-cell">
                                <div class="weui-cell__bd">
                                    <p>录入信息：</p>
                                </div>
                            	<div class="weui-cell__ft">
			                        <span id="address" class="gird">${list_twoInput.hxlr}</span>
			                    </div>
                            </div>                           
                        </div>                        
                  
                    </div >
					</c:forEach>
                </div>

				</form>
			</div>
		</div>
	</div>


	<footer>
		<div class="weui-form-preview__ft">
			<button type="submit"
				class="weui-form-preview__btn weui-form-preview__btn_primary blue_color">通过</button>
		</div>
	</footer>

</body>
<script
	src="<%=basePath%>webpage/lywjw/lyswjwwx/component/jingqing/js/shenpi_xp.js"></script>


</html>