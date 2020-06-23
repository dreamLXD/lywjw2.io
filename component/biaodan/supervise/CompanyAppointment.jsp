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
	<title>办案单位预约</title>
	<link rel="stylesheet" href="<%=basePath%>webpage/lywjw/lyswjwwx/node_modules/jquery-weui/dist/css/jquery-weui.css">
	<link rel="stylesheet" href="<%=basePath%>webpage/lywjw/lyswjwwx/node_modules/jquery-weui/dist/lib/weui.min.css">
	<link rel="stylesheet" href="<%=basePath%>webpage/lywjw/lyswjwwx/css/weui_biaodan.css">
	<link rel="stylesheet" href="<%=basePath%>webpage/lywjw/lyswjwwx/css/biaodan.css">
	<script src="<%=basePath%>webpage/lywjw/lyswjwwx/js/basepath.js"></script>
	<script src="<%=basePath%>webpage/lywjw/lyswjwwx/js/jiazai.js"></script>
	<script src="<%=basePath%>webpage/lywjw/lyswjwwx/node_modules/jquery-weui/dist/lib/jquery-2.1.4.js"></script>
	<script src="<%=basePath%>webpage/lywjw/lyswjwwx/js/jquery.validate.min.js"></script>
	<script src="<%=basePath%>webpage/lywjw/lyswjwwx/js/regular.js"></script>
	<script src="<%=basePath%>webpage/lywjw/lyswjwwx/node_modules/jquery-weui/dist/js/jquery-weui.js"></script>
	<script src="<%=basePath%>webpage/lywjw/lyswjwwx/node_modules/jquery-weui/dist/js/city-picker.js"></script>
	<script src="<%=basePath%>webpage/lywjw/lyswjwwx/component/biaodan/supervise/js/CompanyAppointment.js"></script>

</head>


<script>

	function Caretaker() {
		  $("#CaretakerCity").val("");
          $("#CaretakerPlace").val("");
			$('.style1').css('display', 'block')
			$('.style2').css('display', 'none')		
		}

	function Detention() {
		 $("#DetentionCity").val("");
         $("#DetentionPlace").val("");
			$('.style1').css('display', 'none')
			$('.style2').css('display', 'block')
		}

</script>


<body>
	<div class="imgshow" style="display: block; z-index: 1000;">
		<div>
			<p class="title"> 详细介绍 </p>
			<img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/shili/shili1.png" alt="">
			<p class="zhushi" style="color: red;text-align: center">
				请先选择类型
			</p>
			<button class="submit">确定</button>
		</div>
	</div>
	<form action="javascript:;" method="post"   id='signupForm'>
		<section>
   				<input type="hidden" id="openid" name="openid" value="${jbxx.openid}" >
				<input type="hidden"  id="uuid" name="uuid" value="${jbxx.uuid}">
				<h1>申报人信息</h1>
				<div class="weui-cells weui-cells_form">
					<div class="weui-cell">
						<div class="weui-cell__hd"><label class="weui-label">姓名:</label></div>
						<div class="weui-cell__bd">
							<input class="weui-input"  name="blrxm" disabled value="${jbxx.zsxm }">
						</div>
					</div>
					<div class="weui-cell">
						<div class="weui-cell__hd"><label class="weui-label">公民身份证号码:</label></div>
						<div class="weui-cell__bd">
							<input class="weui-input" required name="blrsfz" placeholder="" disabled value="${jbxx.sfzh }">
						</div>
					</div>
					<div class="weui-cell">
						<div class="weui-cell__hd"><label class="weui-label">性别:</label></div>
						<div class="weui-cell__bd">
							<input class="weui-input" required name="blrxb" id ="blrxb" placeholder="" disabled value="${jbxx.zsxb }">
						</div>
					</div>
					<div class="weui-cell">
						<div class="weui-cell__hd"><label class="weui-label">联系电话:</label></div>
						<div class="weui-cell__bd">
							<input class="weui-input" required name="blrtel" placeholder="" disabled value="${jbxx.tel }">
						</div>
					</div>
				</div>


				<h1>警员信息</h1>
				<div class="weui-cells weui-cells_form">
					<div class="weui-cell">
						<div class="weui-cell__hd"><label class="weui-label">警员姓名:</label></div>
						<div class="weui-cell__bd">
							<input class="weui-input"  name="PoliceName" placeholder="请输入姓名">
						</div>
					</div>
					<div class="weui-cell">
						<div class="weui-cell__hd"><label class="weui-label">警员编号:</label></div>
						<div class="weui-cell__bd">
							<input class="weui-input" required name="PoliceNumber" placeholder="请输入警员编号">
						</div>
					</div>
					<div class="weui-cell">
						<div class="weui-cell__hd"><label class="weui-label">警员联系电话:</label></div>
						<div class="weui-cell__bd">
								<input class="weui-input" required name="TelephonePolice" placeholder="请输入联系电话">
							</div>
					</div>
					<div class="weui-cell">
							<div class="weui-cell__hd"><label class="weui-label">所属分局：</label></div>
							<div class="weui-cell__bd">
								<input class="weui-input" id="BelongChessBlord" required name="BelongChessBlord" placeholder="请先选择分局">
							</div>
						</div>
						<div class="weui-cell">
							<div class="weui-cell__hd"><label class="weui-label">所属派出所：</label></div>
							<div class="weui-cell__bd">
								<input class="weui-input" id="BelongPoliceStation" required name="BelongPoliceStation" placeholder="请选择派出所">
							</div>
						</div>
				</div>

				
				<h1>被提审或送押人员信息</h1>
				<div class="weui-cells weui-cells_form xinxi ptrxx">
					<div class="weui-cell">
						<div class="weui-cell__hd block">
							<span>被提审或送押人员信息</span>
							<span class="tianjia "></span>
						</div>
					</div>
					<div class="weui-cells weui-cells_form">
						<div class="weui-cell">
							<div class="weui-cell__hd"><label class="weui-label">姓名:</label></div>
							<div class="weui-cell__bd">
								<input class="weui-input" required name="PrisonerName" placeholder="请输入姓名">
							</div>
						</div>
						<div class="weui-cell">
							<div class="weui-cell__hd"><label class="weui-label">身份证号码:</label></div>
							<div class="weui-cell__bd">
								<input class="weui-input" required name="PrisonerCard" placeholder="请输入身份证号码">
							</div>
						</div>
					</div>
				</div>

				<h1>办案单位申请信息</h1>
				<div class="weui-cells weui-cells_form">
					<div class="weui-cell">
							<div class="weui-cell__hd"><label class="weui-label">选择类型:</label></div>
							<div class="weui-cell__bd">
								<input class="weui-input" required name="TypesChose" id ="TypesChose" placeholder="">
							</div>
					</div>

					<div class="weui-cell">
							<div class="weui-cell__hd"><label class="weui-label">监所类型:</label></div>
							<div class="weui-cell__bd">
								<!-- <input class="weui-input" required name="TypesPrisons" id ="TypesPrisons" placeholder=""> -->
								<div>
									<input type="button"  value="看守所"   onclick="Caretaker()" >
									&nbsp;&nbsp;&nbsp;
									<input type="button"  value="拘留所"   onclick="Detention()" >
								</div>
							</div>
						</div>

					<div  class="weui-cells style1 weui-cells_form">
							<div class="weui-cell">
								<div class="weui-cell__hd"><label class="weui-label">看守所所属市:</label></div>
								<div class="weui-cell__bd">
									<input class="weui-input" id="CaretakerCity" required name="CaretakerCity" placeholder="请输入看守所所属市">
								</div>
							</div>
							<div class="weui-cell">
								<div class="weui-cell__hd"><label class="weui-label">所在看守所:</label></div>
								<div class="weui-cell__bd">
									<input class="weui-input" id="CaretakerPlace" required name="CaretakerPlace" placeholder="请输入所在看守所">
								</div>
							</div>	
						</div>
		
		
						<div   class="weui-cells style2 weui-cells_form">
							<div class="weui-cell">
								<div class="weui-cell__hd"><label class="weui-label">拘留所所属市:</label></div>
								<div class="weui-cell__bd">
									<input class="weui-input" id="DetentionCity" required name="DetentionCity" placeholder="请输入拘留所所属市">
								</div>
							</div>
							<div class="weui-cell">
								<div class="weui-cell__hd"><label class="weui-label">所在拘留所:</label></div>
								<div class="weui-cell__bd">
									<input class="weui-input" id="DetentionPlace" required name="DetentionPlace" placeholder="请输入所在拘留所">
								</div>
							</div>
						</div>			

				<div class="weui-cell">
						<div class="weui-cell__hd"><label class="weui-label">送押或提审时间:</label></div>
						<div class="weui-cell__bd">
							<!-- <input class="weui-input" type="text" name="Time" data-toggle='date' id="Time" required
							placeholder="请输入预约会见时间"> -->

							<input class="weui-input" type="text"  name="Time" data-toggle='date' id="Time"  required
							placeholder="请输入预约会见时间">
						</div>
				</div>
			</div>


		
			<h1>上传材料</h1>
			<!--法律证明-->
			<div class="weui-cells weui-cells_form">
				<div class="container">
					<div class="weui_cells weui_cells_form">
						<div class="weui_cell">
							<div class="weui_cell_bd weui_cell_primary">
								<div class="weui_uploader">
									<div class="weui_uploader_hd weui_cell">
										<div class="weui_cell_bd weui_cell_primary">法律证明</div>
										<i class="weui-icon-warn weui-icon_msg-primary imgwarn img_i_base1"></i>
									</div>
									<div class="weui_uploader_bd">
										<ul class="weui_uploader_files one">
										</ul>
										<div class="weui_uploader_input_wrp">
											<input class="weui_uploader_input js_file1" type="file" name="img"
												accept="image/jpg,image/jpeg,image/png,image/gif" multiple=""></div>
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
						<p class="title"> 详细介绍 </p>
						<!--<img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/shili/shili.jpg" alt="">-->
						<p class="zhushi">
							居民户口簿:封面、首页、索引页、户主常住人口登记卡、拟分户人员1常住人口登记卡、拟分户人员2常住人口登记卡…
							<br><br>
							居民身份证:居民身份证正面、居民身份证反面
							<br><br>
							房屋所有权、使用权证明或其他合法稳定住所证明备选项1:房屋所有权、使用权证明：房屋产权证封面、内页1、内页2、内页3…;
							<br><br>
							备选项2:购房合同第1页、第2页、第3页…;交款发票（或收据）第1张、第2张、第3张…;
							<br><br>
							备选项3:宅基地使用权证封面、内页1、内页2、内页3…;
							<br><br>
							备选项4:其他合法稳定住所证明：房管部门出具的房屋登记信息材料第1页、第2页、第3页…、房屋买卖协议等第1页、第2页、第3页…。
							<br><br>
							结婚证：封面、内页1、内页2、内页3...
							<br><br>
							离婚证:封面、内页1、内页2、内页3...
							<br><br>
							能够证明家庭成员关系的其它书面有效证明:第1页、第2页、第3页…。
						</p>
						<button>确定</button>
					</div>
				</div>
			</div>
			<!-- 工作证 -->
			<div class="weui-cells weui-cells_form">
				<div class="container">
					<div class="weui_cells weui_cells_form">
						<div class="weui_cell">
							<div class="weui_cell_bd weui_cell_primary">
								<div class="weui_uploader">
									<div class="weui_uploader_hd weui_cell">
										<div class="weui_cell_bd weui_cell_primary">工作证</div>
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
							居民户口簿:封面、首页、索引页、户主常住人口登记卡、拟分户人员1常住人口登记卡、拟分户人员2常住人口登记卡…
							<br><br>
							居民身份证:居民身份证正面、居民身份证反面
							<br><br>
							房屋所有权、使用权证明或其他合法稳定住所证明备选项1:房屋所有权、使用权证明：房屋产权证封面、内页1、内页2、内页3…;
							<br><br>
							备选项2:购房合同第1页、第2页、第3页…;交款发票（或收据）第1张、第2张、第3张…;
							<br><br>
							备选项3:宅基地使用权证封面、内页1、内页2、内页3…;
							<br><br>
							备选项4:其他合法稳定住所证明：房管部门出具的房屋登记信息材料第1页、第2页、第3页…、房屋买卖协议等第1页、第2页、第3页…。
							<br><br>
							结婚证：封面、内页1、内页2、内页3...
							<br><br>
							离婚证:封面、内页1、内页2、内页3...
							<br><br>
							能够证明家庭成员关系的其它书面有效证明:第1页、第2页、第3页…。
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