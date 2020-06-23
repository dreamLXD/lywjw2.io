$(function () {

	$('.style1').css('display', 'none')
	

	var data = ""
		let pcsarr=''
	$.post(base_path+"/wxzd/gaj", data, function (msg) {
		console.log(msg)
		let fjarr=[];
		let fjobj=JSON.parse(msg);
		for(let item in fjobj){
			let obj={}
			obj={title:item,value:fjobj[item]};
			fjarr.push(obj)
		}
		$('#BelongChessBlord').select({
		title: '选择分局',
		items: fjarr,
		onClose: function (param) {
			console.log($('#BelongChessBlord').data('values'))
		if(	$('#BelongChessBlord').data('values')){
			$('#BelongPoliceStation').attr('disabled', false)
			$.post(base_path+"/wxzd/pcs", {id:	$('#BelongChessBlord').data('values')}, function (msg) {
				 pcsarr=[];
				let pcsobj=JSON.parse(msg);
				for(let item in pcsobj){	
					let obj={};	
					obj={title:item,value:pcsobj[item]};
					pcsarr.push(obj)
				}			
			$('#BelongPoliceStation').select('update',	{
					title: '选择派出所',
					items:pcsarr,

				})

			})			
		}
		}
	})	

	var data = ""
    $.post(base_path + "/wxzd/DetentionHouse", data, function (msg) {
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
    $.post(base_path + "/wxzd/DetentionCentre", data, function (msg) {
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


	    $("#TypesChose").select({
        title: "选择类型",
        items: [{
                title: "提审",
                value: "1",
            },
            {
                title: "送押",
                value: "2",
            }
        ]
    });

	$("#Time").datetimePicker();

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

	$('footer button').on('click', function (e) {
		
		e.preventDefault()
		$('form').submit()
		let arr = $('form').serializeArray();

		let obj = {};

		var newstr = '';
		
		arr.forEach((item) => {
			
			obj[item.name] = item.value;


			if (item.name.match('PrisonerName')) {
				newstr += item.value + ','
			}
			if (item.name.match('PrisonerCard')) {
				newstr += item.value + '||'

			}

			if (item.name == 'TypesChose') {
                obj[item.name] = $('#TypesChose').data('values')
			}
			if (item.name == 'BelongChessBlord') {
                obj[item.name] = $('#BelongChessBlord').data('values')
			}
			if (item.name == 'BelongPoliceStation') {
                obj[item.name] = $('#BelongPoliceStation').data('values')
			}
			
			if (item.name == 'CaretakerPlace') {
                obj[item.name] = $('#CaretakerPlace').data('values')
			}
			if (item.name == 'DetentionPlace') {
                obj[item.name] = $('#DetentionPlace').data('values')
			}

			if (item.name == 'CaretakerCity') {
                obj[item.name] = $('#CaretakerCity').data('values')
			}
			if (item.name == 'DetentionCity') {
                obj[item.name] = $('#DetentionCity').data('values')
			}


		})

		newstr = newstr.substr(0, newstr.length - 2);
        console.log(newstr)
		obj['newstr'] = newstr

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


		filestr('arr_file1', '.one', 'onefile','02b4cbf479f945399d4ce138282afa7c')
		filestr('arr_file2', '.two', 'twofile','ee32c0b21faa42d7b67a2309a801007a')


		console.log(obj)

		obj.blyw='3e2e0442859844ae89d5d877680a5012'

			if(key){
				$.confirm({
					  title: '请检查是否上传完成图片，如图片错误将会驳回',
					  text: '',
					  onOK: function () {
							jiazai()
							$.ajax({
								url: base_path +'/supervise/CompanyAppointment',
								type: 'post',
								data: obj,
								dataType: 'json',
								//async: false,
								// jsonpCallback:'Callback',
								success: function (msg) {
									jiazaiHid()
								 var opid=$("#openid").val();
											  console.log(opid)
											   if(msg=='1'){
												 alert("提交成功");
												 window.location.replace(base_path+'/login/PageJump?PageName=index&openid='+opid);
											   }else if(msg=='2'){
												 alert("提交失败");
											   }else{
											   alert("网络波动请重新进行录入");
											   } 


								}
							})
					  },
					  onCancel: function () {
						
					  }
					});
			

			}
	})
		
		console.log('a')

		var num = 0;
		$('.ptrxx .tianjia').on('click', function () {
			num++;
			console.log(num)
			let str =
			 `
    		<div class="weui-cells weui-cells_form">
					<div class="weui-cell">
						<div class="weui-cell__hd"><label class="weui-label">姓名:</label><span class="del"></span></div>
						<div class="weui-cell__bd">
							<input class="weui-input" required name="PrisonerName${num}" placeholder="请输入姓名">
						</div>
					</div>
					<div class="weui-cell">
						<div class="weui-cell__hd"><label class="weui-label">身份证号码:</label></div>
						<div class="weui-cell__bd">
							<input class="weui-input" required name="PrisonerCard${num}" placeholder="请输入身份证号码">
						</div>
					</div>
			</div>
			`
			$('.xinxi.ptrxx').append(str)

			$('.ptrxx .del').on('click', function () {
				$(this).parent().parent().parent().remove()
				$(this).parent().parent().parent().children('.weui-input').attr('name', '')
			})

		})


	})

});