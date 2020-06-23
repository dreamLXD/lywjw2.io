var key = false;

$().ready(
		function() {
			// 在键盘按下并释放及提交后验证提交表单
			$("#signupForm").validate(
					{
						success : "valid",
						submitHandler : function() {
							key = true
						},
						rules : {
							afcslb:{
								required : true,
							},
							aflx:{
								required : true,

							},
							afcslx:{
								required : true,
							},
							afdlwz:{
								required : true,
							},
							xcclqk:{
								required : true,
							},
							spfs:{
								required : true,
								number : true
							},
							zpfs:{
								required : true,
								number : true
							},
							cdjyxm:{
								required : true,

							},
							swrs:{
								required : true,
								number : true,
								maxlength : 100,
							},
							ssrs:{
								required : true,
								number : true,
								maxlength : 100,
							},
							zjjjss:{
								required : true,
								number : true,
								maxlength : 1000000,
							},
							jqlb:{
								required : true,

							},
							jqlx:{
								required : true,

							},
							jqxl:{
								required : true,

							},
							jqcljg:{
								required : true,

							},
							afsj:{
								required : true,
							},
							afjssj:{
								required : true,
							},
							
							xczj:{
								required : true,
							},
							zwfs:{
								required : true,
								number : true,
								maxlength : 100,
							},
							
							TelephonePolice : {
								required : true,
								minlength : 11,
								maxlength : 11,
								number : true
							}

						},
						errorPlacement : function(error, element) {
							// Append error within linked label
							$(element).closest("form").find(
									"label[for='" + element.attr("id") + "']")
									.append(error);
						},
						errorElement : "span",
						messages : {
							user : {
								required : " (必需字段)",
								minlength : " (不能少于 3 个字母)"
							},
							password : {
								required : " (必需字段)",
								minlength : " (字母不能少于 5 个且不能大于 12 个)",
								maxlength : " (字母不能少于 5 个且不能大于 12 个)"
							}
						}
					})
		});
$(function(){
	let str=`<p style="color:red;font-size: 12px">请输入数字</p>`

	function zzyz(item,res,str){
		if(!$(item).parent().children().eq(0).html()==''){
			$($(item).parent().children()[0]).html('')
		}
		if(res[0]){
			$(item).addClass('error')
			$(item).parent().prepend(`<p style="color:red;font-size: 12px">${str}</p>`)
		}else {
			$(item).removeClass('error')
			$(item).siblings().html('')
		}
	}
	Array.from($('input')).forEach((item)=>{
			// if($(item).attr('name')=='new_dh_one' || $(item).attr('name')=='new_dh_two'){
			// 	$(item).on('blur',function(){
			// 			zzyz($(item),[!/^[1]([3-9])[0-9]{9}$/.test($(this).val())],'请输入11位数字')
			// 		})
			// }
			if($(item).attr('name')=='swrs'){
					$(item).on('blur',function(){
						zzyz($(item),[$(this).val()>100],'请输入数字最大不超过100')
					})
			}
			if($(item).attr('name')=='ssrs'){
					$(item).on('blur',function(){
						zzyz($(item),[$(this).val()>100],'请输入数字最大不超过100')
					})
			}
			if($(item).attr('name')=='zjjjss'){
					$(item).on('blur',function(){
						zzyz($(item),[$(this).val()>10000000],'请输入数字最大不超过10000000')
					})
			}

			if($(item).attr('name')=='zwfs'){
				$(item).on('blur',function(){
					zzyz($(item),[$(this).val()>200],'请输入数字最大不超过200')
						console.log('asd')
				})

			}
			if($(item).attr('name')=='cdjyxm' ){
					$(item).on('blur',function(){
						zzyz($(item),[!/[\u4e00-\u9fa5]{2,10}/.test($(this).val())],'请输入2到10位中文')


					})
			}

	})


	$('#submit').on('click',function(){
		if($('.error')){
			key=false;
			console.log(key)
		}
	})



})

