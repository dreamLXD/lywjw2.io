$(function () {
	$('.fl_type1').css('display', 'block')
	$('.fl_type2').css('display', 'none')
	$('.fl_type3').css('display', 'none')
	$('.fl_type4').css('display', 'none')
	$('.fl_type5').css('display', 'none')

	var data = ""
	let pcsarr=''
	$.post(base_path+"/lyswjw/wx/wxzd/gaj", data, function (msg) {
		console.log(msg)
		let fjarr=[];
		let fjobj=JSON.parse(msg);
		for(let item in fjobj){
			let obj={}
			obj={title:item,value:fjobj[item]};
			fjarr.push(obj)
		}
		$('#idfj').select({
		title: '选择分局',
		items: fjarr,
		onClose: function (param) {
			console.log($('#idfj').data('values'))
		if(	$('#idfj').data('values')){
			$('#idpcs').attr('disabled', false)
			$.post(base_path+"/lyswjw/wx/wxzd/pcs", {id:	$('#idfj').data('values')}, function (msg) {
				pcsarr=[];
				let pcsobj=JSON.parse(msg);
				for(let item in pcsobj){	
					let obj={};	
					obj={title:item,value:pcsobj[item]};
					pcsarr.push(obj)
				}			
			$('#idpcs').select('update',{
					title: '选择派出所',
					items:pcsarr,

				})

			})			
		}
		}
	})	

	var data = ""
    $.post(base_path + "/lyswjw/wx/wxzd/DetentionHouse", data, function (msg) {
        console.log(msg)
        let ksarr = [];
        let ksobj = JSON.parse(msg);
        for (let item in ksobj) {
            let obj = {}
            obj = {
                title: item,
                value: ksobj[item]
            };
            console.log(obj)
            ksarr.push(obj)
        }
        $('#CaretakerPlace').select({
            title: '请输入所在看守所',
            items: ksarr,
        })
	})
	
	var data = ""
    $.post(base_path + "/lyswjw/wx/wxzd/DetentionCentre", data, function (msg) {
        console.log(msg)
        let jlarr = [];
        let jlobj = JSON.parse(msg);
        for (let item in jlobj) {
            let obj = {}
            obj = {
                title: item,
                value: jlobj[item]
            };
            console.log(obj)
            jlarr.push(obj)
        }
        $('#DetentionPlace').select({
            title: '请输入所在拘留所',
            items: jlarr,
        })
	})
	
	$("#CaretakerCity").select({
        title: "请输入看守所所属市",
        items: [{
                title: "临沂市",
                value: "e1740395729a43088193bcec8ae18212",
            }
        ]
		});

	$("#DetentionCity").select({
		title: "请输入拘留所所属市",
		items: [{
				title: "临沂市",
				value: "e1740395729a43088193bcec8ae18212",
			}
		]
		});
		


	
	$("#AppointmentTime").datetimePicker();
	
	$('.submit').on('click', function () {
		$('.imgshow').css('display', 'none')
	})

	$('#idpcs').attr('disabled', 'true')
	
});

//file插件
$.weui = {};
$.weui.alert = function (options) {
	options = $.extend({
		title: '警告',
		text: '警告内容'
	}, options);
	var $alert = $('.weui_dialog_alert');
	$alert.find('.weui_dialog_title').text(options.title);
	$alert.find('.weui_dialog_bd').text(options.text);
	$alert.on('touchend click', '.weui_btn_dialog', function () {
		$alert.hide();
	});
	$alert.show();
};

$(function () {
	function fileobj(img_i_base, imgshow_base, js_file, ul) {

		$(img_i_base).on('click', function () {
			$(imgshow_base).css('display', 'block')
		})
		$(imgshow_base + ' button').on('click', (e) => {
			e.preventDefault();
			$(imgshow_base).css('display', 'none')
		})

		$(js_file).on('change', function (event) {
			let then = this
			var files = event.target.files;
			// 如果没有选中文件，直接返回

			if (files.length === 0) {
				return;
			}
			for (var i = 0, len = files.length; i < len; i++) {
				var file = files[i];
				var reader = new FileReader();

				// 如果类型不在允许的类型范围内
				if (allowTypes.indexOf(file.type) === -1) {
					$.weui.alert({
						text: '该类型不允许上传'
					});
					continue;
				}

				if (file.size > maxSize) {
					$.weui.alert({
						text: '图片太大，不允许上传'
					});
					continue;
				}

				if ($('.weui_uploader_file').length >= maxCount) {
					$.weui.alert({
						text: '最多只能上传' + maxCount + '张图片'
					});
					return;
				}

				reader.onload = function (e) {
					var img = new Image();
					img.onload = function () {
						// 不要超出最大宽度
						var w = Math.min(maxWidth, img.width);
						// 高度按比例计算
						var h = img.height * (w / img.width);
						var canvas = document.createElement('canvas');
						var ctx = canvas.getContext('2d');
						// 设置 canvas 的宽度和高度
						canvas.width = w;
						canvas.height = h;
						ctx.drawImage(img, 0, 0, w, h);
						var base64 = canvas.toDataURL('image/png');

						// 插入到预览区
						var $preview = $(`<li class="weui_uploader_file weui_uploader_status" style="background-image:url('${base64} ')">
		                                <div class="weui_uploader_status_content">0%</div>	
		                    <div class='fgc'></div></li>`);
						// var $preview = $('<li class="weui_uploader_file weui_uploader_status" style="background-image:url(' + base64 + ')"><div class="weui_uploader_status_content">0%</div></li>');
						$(ul).append($preview);

						// debugger;
						var num = $('.weui_uploader_file').length;
						$('.js_counter').text(num + '/' + maxCount);

						// 然后假装在上传，可以post base64格式，也可以构造blob对象上传，也可以用微信JSSDK上传

						var progress = 0;
						$('.fgc').on('click', function(event) {
							event.preventDefault();
							$(this).parent().remove()
						});
						function uploading() {
							$preview.find('.weui_uploader_status_content').text(++progress + '%');

							if (progress < 100) {
								setTimeout(uploading, 30);
							} else {
								// 如果是失败，塞一个失败图标
								$preview.find('.weui_uploader_status_content').html('<i class="weui_icon_warn"></i>');
								$preview.removeClass('weui_uploader_status').find('.weui_uploader_status_content').remove();
							}

						}
						setTimeout(uploading, 10);
					};

					img.src = e.target.result;
				};
				reader.readAsDataURL(file);

			}

		});
	



	}

	// 允许上传的图片类型
	var allowTypes = ['image/jpg', 'image/jpeg', 'image/png', 'image/gif'];
	// 1024KB，也就是 1MB
	var maxSize = 1024 * 1024 * 5;
	// 图片最大宽度
	var maxWidth = 300;
	// 最大上传图片数量
	var maxCount = 40;

	fileobj('.img_i_base1', '.imgshow_base1', '.js_file1', '.one')
	fileobj('.img_i_base2', '.imgshow_base2', '.js_file2', '.two')
	fileobj('.img_i_base3', '.imgshow_base3', '.js_file3', '.three')
	fileobj('.img_i_base4', '.imgshow_base4', '.js_file4', '.four')
	fileobj('.img_i_base5', '.imgshow_base5', '.js_file5', '.five')
	fileobj('.img_i_base6', '.imgshow_base6', '.js_file6', '.six')
	fileobj('.img_i_base7', '.imgshow_base7', '.js_file7', '.seven')
	fileobj('.img_i_base8', '.imgshow_base8', '.js_file8', '.eight')
	fileobj('.img_i_base9', '.imgshow_base9', '.js_file9', '.nine')
	fileobj('.img_i_base10', '.imgshow_base10', '.js_file10', '.ten')
	fileobj('.img_i_base11', '.imgshow_base11', '.js_file11', '.eleven')
	fileobj('.img_i_base12', '.imgshow_base12', '.js_file12', '.twelve')
	fileobj('.img_i_base13', '.imgshow_base13', '.js_file13', '.threeteen')
	fileobj('.img_i_base14', '.imgshow_base14', '.js_file14', '.fourteen')
	fileobj('.img_i_base15', '.imgshow_base15', '.js_file15', '.fifteen')


	$('footer button').on('click', function (e) {
		e.preventDefault()
		let arr = $('form').serializeArray();

		let obj = {};

		var newstr = '';
		var newstr2 = '';
		
		arr.forEach((item) => {
			
			obj[item.name] = item.value;


			if (item.name.match('ShareholdersName')) {
				newstr += item.value + ','
			}
			if (item.name.match('ShareholdersNation')) {
				newstr += item.value + ','
			}
			if (item.name.match('IdentificationType')) {
				newstr += item.value + ','
			}
			if (item.name.match('ShareholdersCard')) {
				newstr += item.value + ','
			}
			if (item.name.match('ContributionAmount')) {
				newstr += item.value + ','
			}
			if (item.name.match('ShareProportion')) {
				newstr += item.value + '||'
			}
////////////////////////////////////////////////////////////////////////
			if (item.name.match('ManagementName')) {
				newstr2 += item.value + ','
			}
			if (item.name.match('ManagementPosition')) {
				newstr2 += item.value + ','
			}
			if (item.name.match('ManagementCard')) {
				newstr2 += item.value + ','
			}

			if (item.name.match('ManagementNumber')) {
				newstr2 += item.value + '||'
			}


		})

		
        newstr = newstr.substr(0, newstr.length - 2);
        console.log(newstr)
		obj['newstr'] = newstr

        newstr2 = newstr2.substr(0, newstr.length - 2);
        console.log(newstr2)
		obj['newstr2'] = newstr2

		function filestr(arr_file, ul, onefile,id) {
			arr_file = [];
			$(ul + ' li').each(function (i, item) {
				let str = $(item).css('background-image').length - 4;
				arr_file.push($(item).css('background-image').substring(5, str))

			})

			let str_arr = '';

			arr_file.forEach((item, k) => {
				str_arr = item + '||' + str_arr
			})
				
				if(id){
					obj[onefile] =id+'||'+ str_arr;
				}else{
					obj[onefile] = str_arr;
				}
		}


		filestr('arr_file1', '.one', 'onefile','')
		filestr('arr_file2', '.two', 'twofile','')
		filestr('arr_file3', '.three', 'threefile','')
		filestr('arr_file4', '.four', 'fourfile','')
		filestr('arr_file5', '.five', 'fivefile','')
		filestr('arr_file6', '.six', 'sixfile','')
		filestr('arr_file7', '.seven', 'sevenfile','')
		filestr('arr_file8', '.eight', 'eightfile','')
		filestr('arr_file9', '.nine', 'ninefile','')
		filestr('arr_file10', '.ten', 'tenfile','')
		filestr('arr_file11', '.eleven', 'elevenfile','')
		filestr('arr_file12', '.twelve', 'twelvefile','')
		filestr('arr_file13', '.threeteen', 'threeteenfile','')
		filestr('arr_file14', '.fourteen', 'fourteenfile','')
		filestr('arr_file15', '.fifteen', 'fifteenfile','')

		console.log(obj)

		obj.blyw='0b2be408135a4519b8460d175572da85'

		// $.ajax({
		// 	url: base_path +'/lyswjw/wx/supervise/LawyerAppointment',
		// 	type: 'post',
		// 	data: obj,
		// 	dataType: 'json',
		// 	async: false,
		// 	// jsonpCallback:'Callback',
		// 	success: function (msg) {
		// 		console.log(msg)


		// 	}
		// })
	})
		
		var num = 0;
		$('.ptrxx .tianjia').on('click', function () {
			num++;
			console.log(num)
			let str =
			 `
					<div class="weui-cells weui-cells_form">
						<div class="weui-cell">
							<div class="weui-cell__hd"><label class="weui-label">单位或姓名:</label><span class="del"></span></div>
							<div class="weui-cell__bd">
								<input class="weui-input" required name="ShareholdersName${num}" placeholder="请输入单位或姓名">
							</div>
						</div>
						<div class="weui-cell">
							<div class="weui-cell__hd"><label class="weui-label">单位性质或个人国籍:</label></div>
							<div class="weui-cell__bd">
								<input class="weui-input" required name="ShareholdersNation${num}" placeholder="请输入单位性质或个人国籍">
							</div>
						</div>				
						<div class="weui-cell">
							<div class="weui-cell__hd"><label class="weui-label">证件名称:</label></div>
							<div class="weui-cell__bd">
								<input class="weui-input" required name="IdentificationType${num}" placeholder="请输入证件名称">
							</div>
						</div>
						<div class="weui-cell">
							<div class="weui-cell__hd"><label class="weui-label">证件号码:</label></div>
							<div class="weui-cell__bd">
								<input class="weui-input" required name="ShareholdersCard${num}" placeholder="请输入证件号码">
							</div>
						</div>
						<div class="weui-cell">
							<div class="weui-cell__hd"><label class="weui-label">出资金额:</label></div>
							<div class="weui-cell__bd">
								<input class="weui-input" required name="ContributionAmount${num}" placeholder="请输入出资金额">
							</div>
						</div>
						<div class="weui-cell">
							<div class="weui-cell__hd"><label class="weui-label">股份所占比例:</label></div>
							<div class="weui-cell__bd">
								<input class="weui-input" required name="ShareProportion${num}" placeholder="请输入股份所占比例">
							</div>
						</div>
			        </div>
			`
			$('.xinxi.ptrxx').append(str)

			$('.del').on('click', function () {
				console.log('a')
				$(this).parent().parent().parent().remove()
				$(this).parent().parent().parent().children('.weui-input').attr('name', '')
			})
		})


			var num2 = 0;
			$('.glxx .tianjia').on('click', function () {
				num2++;
				console.log(num)
				let str =
				 `
				 <div class="weui-cells weui-cells_form">
				 <div class="weui-cell">
					 <div class="weui-cell__hd"><label class="weui-label">姓名:</label><span class="del"></span></div>
					 <div class="weui-cell__bd">
						 <input class="weui-input" required name="ManagementName${num2}" placeholder="请输入姓名">
					 </div>
				 </div>
				 <div class="weui-cell">
					 <div class="weui-cell__hd"><label class="weui-label">职务:</label></div>
					 <div class="weui-cell__bd">
						 <input class="weui-input" required name="ManagementPosition${num2}" placeholder="请输入职务">
					 </div>
				 </div>
				 <div class="weui-cell">
					 <div class="weui-cell__hd"><label class="weui-label">身份证件号码:</label></div>
					 <div class="weui-cell__bd">
						 <input class="weui-input" required name="ManagementCard${num2}" placeholder="请输入身份证件号码">
					 </div>
				 </div>
				 <div class="weui-cell">
					 <div class="weui-cell__hd"><label class="weui-label">保安师证编号:</label></div>
					 <div class="weui-cell__bd">
						 <input class="weui-input" required name="ManagementNumber${num2}" placeholder="请输入保安师证编号">
					 </div>
				 </div>
			 </div>
				`
				$('.xinxi.glxx').append(str)
	
				$('.del').on('click', function () {
					console.log('a')
					$(this).parent().parent().parent().remove()
					$(this).parent().parent().parent().children('.weui-input').attr('name', '')
				})


			})	
		})

});