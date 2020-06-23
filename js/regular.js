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
							blrxm : {
								required : true,
								minlength : 2
							},
							blrsfz : {
								required : true,
								minlength : 18,
								maxlength : 18,
								number : true
							},
							btkrxm : {
								required : true,
								minlength : 2,
							},
							btkrsfz : {
								required : true,
								minlength : 18,
								maxlength : 18,
								number : true
							},
							yhzgx : {
								required : true,
							},
							blyw : {
								required : true,
							},
							sptype : {
								required : true,
							},
							bhyy : {
								required : true,
							},
							blfj : {
								required : true,
							},
							blpcs : {
								required : true,
							},
							blrxb : {
								required : true,
							},
							blrtel : {
								required : true,
								number : true
							},
							bltype : {
								required : true,
							},
							sqrxm : {
								required : true,
								minlength : 2,
							},
							sqrsfz : {
								required : true,
								minlength : 18,
								maxlength : 18,
								number : true
							},
							bghnr : {
								required : true,
							},
							swryxm : {
								required : true,
								minlength : 2,
							},
							swrysfz : {
								required : true,
								minlength : 18,
								maxlength : 18,
								number : true
							},
							ysqrgx : {
								required : true,
							},
							sbrxm : {
								required : true,
								minlength : 2,
							},
							sbrsfz : {
								required : true,
								minlength : 18,
								maxlength : 18,
								number : true
							},
							sbrxb : {
								required : true,
							},
							sbrtel : {
								required : true,
								number : true
							},
							sbrcym : {
								required : true,
								minlength : 2,
							},
							sbrgddh : {
								required : true,
								number : true
							},
							sbryx : {
								required : true,
								email : true
							},
							sbrqtlxfs : {
								required : true,
							},
							xjzdsssj : {
								required : true,
							},
							xjzdssfj : {
								required : true,
							},
							xjzdsspcs : {
								required : true,
							},
							xjzdxxdz : {
								required : true,
							},
							zslb : {
								required : true,
							},
							jzsy : {
								required : true,
							},
							hyzk : {
								required : true,
							},
							zzmm : {
								required : true,
							},
							whcd : {
								required : true,
							},
							fbyzk : {
								required : true,
							},
							ddbdrq : {
								required : true,
							},
							lbsyy : {
								required : true,
							},
							ndjzqx : {
								required : true,
							},
							qtryxm : {
								required : true,
								minlength : 2,
							},
							qtrynl : {
								required : true,
							},
							qtryxb : {
								required : true,
							},
							sqyh : {
								required : true,
							},
							yhtel : {
								required : true,
								number : true
							},
							syrxm : {
								required : true,
								minlength : 2,
							},
							syrsfz : {
								required : true,
								minlength : 18,
								maxlength : 18,
								number : true
							},
							syrtel : {
								required : true,
								number : true
							},
							bsyrxm : {
								required : true,
								minlength : 2,
							},
							bsyrsfz : {
								required : true,
								minlength : 18,
								maxlength : 18,
								number : true
							},
							hzxm : {
								required : true,
								minlength : 2,
							},
							hzsfz : {
								required : true,
								minlength : 18,
								maxlength : 18,
								number : true
							},
							hztel : {
								required : true,
								number : true
							},
							fqname : {
								required : true,
								minlength : 2,
							},
							fqsfz : {
								required : true,
								minlength : 18,
								maxlength : 18,
								number : true
							},
							mqname : {
								required : true,
								minlength : 2,
							},
							mqsfz : {
								required : true,
								minlength : 18,
								maxlength : 18,
								number : true
							},
							syname : {
								required : true,
								minlength : 2,
							},
							sysfz : {
								required : true,
								minlength : 18,
								maxlength : 18,
								number : true
							},
							sydz : {
								required : true,
							},
							yename : {
								required : true,
								minlength : 2,
							},
							yecsyxzm : {
								required : true,
								number : true
							},
							yesex : {
								required : true,
							},
							yecsrq : {
								required : true,
							},
							yeysqrgx : {
								required : true,
							},
							yemz : {
								required : true,
							},
							tkrxm : {
								required : true,
								minlength : 2,
							},
							tkrsfz : {
								required : true,
								minlength : 18,
								maxlength : 18,
								number : true
							},
							tkrtel : {
								required : true,
								number : true
							},
							tkr_name : {
								required : true,
								minlength : 2,
							},
							tkr_sfz : {
								required : true,
								minlength : 18,
								maxlength : 18,
								number : true
							},
							tkr_lxdh : {
								required : true,
								number : true
							},
							sqr_name : {
								required : true,
								minlength : 2,
							},
							sqr_sfz : {
								required : true,
								minlength : 18,
								maxlength : 18,
								number : true
							},
							sqr_lxdh : {
								required : true,
								number : true
							},
							ysqrgx : {
								required : true,
							},
							type : {
								required : true,
							},
							tkrysqrgx : {
								required : true,
							},
							sqrysqrgx : {
								required : true,
							},
							tkr_ysqrgx : {
								required : true,
							},
							sqr_ysqrgx : {
								required : true,
							},

							ContactAddress : {
								required : true,
							},
							NumberInterviews : {
								required : true,
								number : true
							},
							ReasonMeeting : {
								required : true,
							},
							AppointmentTime : {
								required : true,

							},
							PrisonerName : {
								required : true,
								minlength : 2,
							},
							PrisonerCard : {
								required : true,
								minlength : 18,
								maxlength : 18,
								number : true

							},
							CaretakerCity : {
								required : true,

							},
							CaretakerPlace : {
								required : true,

							},
							DetentionCity : {
								required : true,

							},
							DetentionPlace : {
								required : true,

							},

							LawyerName : {
								required : true,

							},
							LawyerCard : {
								required : true,
								minlength : 18,
								maxlength : 18,
								number : true

							},
							TelephoneLawyer : {
								required : true,
								minlength : 11,
								maxlength : 11,
								number : true

							},
							AccompanyingName : {
								required : true,
							},
							AccompanyingCard : {
								required : true,
								minlength : 18,
								maxlength : 18,
								number : true

							},
							RelationsDetainees : {
								required : true,
							},
							FamilyName : {
								required : true,
							},

							FamilyCard : {
								required : true,
								minlength : 18,
								maxlength : 18,
								number : true
							},
							TelephoneFamily : {
								required : true,
								minlength : 11,
								maxlength : 11,
								number : true
							},

							PoliceName : {
								required : true,
								minlength : 2,

							},
							PoliceNumber : {
								required : true,

							},
							TelephonePolice : {
								required : true,
								minlength : 11,
								maxlength : 11,
								number : true
							},
							BelongChessBlord : {
								required : true,
							},
							BelongPoliceStation : {
								required : true,

							},
							TelephoneFamily : {
								required : true,

							},
							TypesChose : {
								required : true,

							},
							Time : {
								required : true,

							},

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
let z=false;
 function img_reg(obj,arr){
	if(key){
		z=true;
		arr.forEach(item=>{
		   for(let k in obj){
			   if(item == k){
				   if(obj[k].split('||')[1] == ''){
					   if(z){
						   $.alert('您有图片未上传')
						   key=false;
						   z=false																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																					
					   }
				   
				   }
			   }
			   
		   }
		})
	}
 }