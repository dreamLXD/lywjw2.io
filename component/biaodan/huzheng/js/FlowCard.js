$(function () {
	$('.imgshow').on('click',function(){
		$(this).css('display','none')
		})
	$('.style1').css('display', 'none')
	$('.style2').css('display', 'none')
	$('.style3').css('display', 'none')
	$('.style4').css('display', 'none')
	$('.style5').css('display', 'none')
	$('.style6').css('display', 'none')

	$("#style").select({
		title: "选择类型",
		items: [{
				title: "居住在自有房屋的流动人口申领居住证",
				value: "ab4cd407437745bfb924a1c2dc854e37",
			},
			{
				title: "居住在出租房屋的流动人口申领居住证",
				value: "075864efd72647c48471b2f514dd574c",
			},
			{
				title: "居住在工作单位的流动人口申领居住证",
				value: "8ed203cfa9da488680a21242631c1314",
			},
			{
				title: "居住在工作单位的流动人口申领居住证（单位代办）",
				value: "249289ca344640469daca7354f058259",
			},
			{
				title: "居住在亲属家中的流动人口申领居住证",
				value: "29508ba31a2e473d8c1bb3d819c2bb72",
			},
			{
				title: "大中专学生中的流动人口申领居住证",
				value: "24483de85b554a2390de03313764a07d",
			}
		],
		onClose: function () {
			$('.style1').css('display', 'none')
			$('.style2').css('display', 'none')
			$('.style3').css('display', 'none')
			$('.style4').css('display', 'none')
			$('.style5').css('display', 'none')
			$('.style6').css('display', 'none')
			$('.two').html('')
			$('.three').html('')
			$('.four').html('')
			$('.five').html('')
			$('.six').html('')
			$('.seven').html('')
			$('.eight').html('')
			$('.nine').html('')
			if ($('#style').data('values') == 'ab4cd407437745bfb924a1c2dc854e37') {
				$('.style1').css('display', 'block')
			} else if ($('#style').data('values') == '075864efd72647c48471b2f514dd574c') {
				$('.style2').css('display', 'block')
			} else if ($('#style').data('values') == '8ed203cfa9da488680a21242631c1314') {
				$('.style3').css('display', 'block')
			} else if ($('#style').data('values') == '249289ca344640469daca7354f058259') {
				$('.style4').css('display', 'block')
			} else if ($('#style').data('values') == '29508ba31a2e473d8c1bb3d819c2bb72') {
				$('.style5').css('display', 'block')
			} else if ($('#style').data('values') == '24483de85b554a2390de03313764a07d') {
				$('.style6').css('display', 'block')
			}
		}
	});

	$('.submit').on('click', function () {
		$('.imgshow').css('display', 'none')
	})

	$("#time").calendar();

	var data = ""
	$.post(base_path + "/wxzd/Nation", data, function (msg) {
		console.log(msg)
		let mzarr = [];
		let mzobj = JSON.parse(msg);
		for (let item in mzobj) {
			let obj = {}
			obj = {
				title: item,
				value: mzobj[item]
			};
			console.log(obj)
			mzarr.push(obj)
		}
		$('#Nation').select({
			title: '民族',
			items: mzarr,
		})
	})

	$("#sex").select({
		title: "性别",
		items: [{
				title: "男",
				value: "48080a76cb3b44538e210ac06d08144b",
			},
			{
				title: "女",
				value: "c34046d75c7c4f2699c3655b7227fc56",
			}
		]
	});

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
		$('#xjdssfj').select({
		title: '选择分局',
		items: fjarr,
		onClose: function (param) {
			console.log($('#xjdssfj').data('values'))
		if(	$('#xjdssfj').data('values')){
			$('#xjdsspcs').attr('disabled', false)
			$('#xjdsspcs').val('');
			$.post(base_path+"/wxzd/pcs", {id:	$('#xjdssfj').data('values')}, function (msg) {
				pcsarr=[];
				let pcsobj=JSON.parse(msg);
				for(let item in pcsobj){
					let obj={};
					obj={title:item,value:pcsobj[item]};
					pcsarr.push(obj)
				}
			$('#xjdsspcs').select('update',{
					title: '选择派出所',
                    items:pcsarr,
            })
        })
        }
         } })
})


	$("#xjdsssj").select({
		title: "请选择市局",
		items: [{
				title: "临沂市公安局",
				value: "728d05a1002948eeb44b2a13566a784a",
			}
		]
	});

	var data = ""
	$.post(base_path + "/wxzd/zstype", data, function (msg) {
		console.log(msg)
		let zstypearr = [];
		let zstypeobj = JSON.parse(msg);
		for (let item in zstypeobj) {
			let obj = {}
			obj = {
				title: item,
				value: zstypeobj[item]
			};
			console.log(obj)
			zstypearr.push(obj)
		}
		$('#zslb').select({
			title: '住所类别',
			items: zstypearr,
		})
	})
	var data = ""
	$.post(base_path + "/wxzd/zzsy", data, function (msg) {
		console.log(msg)
		let zzsyarr = [];
		let zzsyobj = JSON.parse(msg);
		for (let item in zzsyobj) {
			let obj = {}
			obj = {
				title: item,
				value: zzsyobj[item]
			};
			console.log(obj)
			zzsyarr.push(obj)
		}
		$('#jzsy').select({
			title: '居住事由',
			items: zzsyarr,
		})
	})

	var data = ""
	$.post(base_path + "/wxzd/hyzk", data, function (msg) {
		console.log(msg)
		let hyzkarr = [];
		let hyzkobj = JSON.parse(msg);
		for (let item in hyzkobj) {
			let obj = {}
			obj = {
				title: item,
				value: hyzkobj[item]
			};
			console.log(obj)
			hyzkarr.push(obj)
		}
		$('#hyzk').select({
			title: '婚姻状况',
			items: hyzkarr,
		})
	})

	var data = ""
	$.post(base_path + "/wxzd/zzmm", data, function (msg) {
		console.log(msg)
		let zzmmarr = [];
		let zzmmobj = JSON.parse(msg);
		for (let item in zzmmobj) {
			let obj = {}
			obj = {
				title: item,
				value: zzmmobj[item]
			};
			console.log(obj)
			zzmmarr.push(obj)
		}
		$('#zzmm').select({
			title: '政治面貌',
			items: zzmmarr,
		})
	})

	var data = ""
	$.post(base_path + "/wxzd/whcd", data, function (msg) {
		console.log(msg)
		let whcdarr = [];
		let whcdobj = JSON.parse(msg);
		for (let item in whcdobj) {
			let obj = {}
			obj = {
				title: item,
				value: whcdobj[item]
			};
			console.log(obj)
			whcdarr.push(obj)
		}
		$('#whcd').select({
			title: '文化程度',
			items: whcdarr,
		})
	})

	var data = ""
	$.post(base_path + "/wxzd/fbyzk", data, function (msg) {
		console.log(msg)
		let fbyzkarr = [];
		let fbyzkobj = JSON.parse(msg);
		for (let item in fbyzkobj) {
			let obj = {}
			obj = {
				title: item,
				value: fbyzkobj[item]
			};
			console.log(obj)
			fbyzkarr.push(obj)
		}
		$('#fbyzk').select({
			title: '服兵役状况',
			items: fbyzkarr,
		})
	})
	var data = ""
	$.post(base_path + "/wxzd/lbsyy", data, function (msg) {
		console.log(msg)
		let fbyzkarr = [];
		let fbyzkobj = JSON.parse(msg);
		for (let item in fbyzkobj) {
			let obj = {}
			obj = {
				title: item,
				value: fbyzkobj[item]
			};
			console.log(obj)
			fbyzkarr.push(obj)
		}
		$('#lbsyy').select({
			title: '服兵役状况',
			items: fbyzkarr,
		})
	})

	var data = ""
	$.post(base_path + "/wxzd/ndjzqx", data, function (msg) {
		console.log(msg)
		let fbyzkarr = [];
		let fbyzkobj = JSON.parse(msg);
		for (let item in fbyzkobj) {
			let obj = {}
			obj = {
				title: item,
				value: fbyzkobj[item]
			};
			console.log(obj)
			fbyzkarr.push(obj)
		}
		$('#ndjzqx').select({
			title: '服兵役状况',
			items: fbyzkarr,
		})
	})


	$('.lihun1').css('display', 'none')
	$('.jiehun1').css('display', 'none')
	$('.fanwu1').css('display', 'none')

	$('.submit').on('click', function () {
		$('.imgshow').css('display', 'none')
	})

	$('#idpcs').attr('disabled', 'true')

	var data = ""
	$.post(base_path + "/wxzd/gaj", data, function (msg) {
		console.log(msg)
		let fjarr = [];
		let fjobj = JSON.parse(msg);
		for (let item in fjobj) {
			let obj = {}
			obj = {
				title: item,
				value: fjobj[item]
			};
			console.log(obj)
			fjarr.push(obj)
		}
		$('#idfj').select({
			title: '选择分局',
			items: fjarr,
			onClose: function (param) {
				console.log($('#idfj').data('values'))
				if ($('#idfj').data('values')) {
					$('#idpcs').attr('disabled', false)
					$('#idpcs').val('');
					$.post(base_path + "/wxzd/pcs", {
						id: $('#idfj').data('values')
					}, function (msg) {
						let pcsarr = [];
						let pcsobj = JSON.parse(msg);
						for (let item in pcsobj) {
							let obj = {};
							obj = {
								title: item,
								value: pcsobj[item]
							};
							pcsarr.push(obj)
						}
						$('#idpcs').select({
							title: '选择派出所',
							items: pcsarr,

						})

					})
				}
			}
		})

	})
})







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
						text: '图片太大，不允许上传超过5兆'
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
		                      
		                     <div class='fgc'></div> </li>`);
						// var $preview = $('<li class="weui_uploader_file weui_uploader_status" style="background-image:url(' + base64 + ')"><div class="weui_uploader_status_content">0%</div></li>');


						$(ul).append($preview);
						// debugger;
						var num = $('.weui_uploader_file').length;
						$('.js_counter').text(num + '/' + maxCount);

						// 然后假装在上传，可以post base64格式，也可以构造blob对象上传，也可以用微信JSSDK上传

						var progress = 0;
						$('.fgc').on('click', function (event) {
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


	$('footer button').on('click', function (e) {

		e.preventDefault()
		$('form').submit()
		let arr = $('form').serializeArray();

		let obj = {};
		arr.forEach((item) => {

			obj[item.name] = item.value;

			if (item.name == 'blfj') {
				obj[item.name] = $('#idfj').data('values')
			}
			if (item.name == 'blpcs') {
				obj[item.name] = $('#idpcs').data('values')
			}
			if (item.name == 'bltype') {
				obj[item.name] = $('#style').data('values')
			}

			if (item.name == 'blrxb') {
				obj[item.name] = $('#sex').data('values')
			}


			if (item.name == 'sbrxb') {
				obj[item.name] = $('#sex').data('values')
			}

			if (item.name == 'xjdsssj') {
				obj[item.name] = $('#xjdsssj').data('values')
			}

			if (item.name == 'xjdssfj') {
				obj[item.name] = $('#xjdssfj').data('values')
			}

			if (item.name == 'xjdsspcs') {
				obj[item.name] = $('#xjdsspcs').data('values')
			}

			if (item.name == 'zslb') {
				obj[item.name] = $('#zslb').data('values')
			}

			if (item.name == 'jzsy') {
				obj[item.name] = $('#jzsy').data('values')
			}

			if (item.name == 'hyzk') {
				obj[item.name] = $('#hyzk').data('values')
			}

			if (item.name == 'zzmm') {
				obj[item.name] = $('#zzmm').data('values')
			}
			if (item.name == 'whcd') {
				obj[item.name] = $('#whcd').data('values')
			}

			if (item.name == 'fbyzk') {
				obj[item.name] = $('#fbyzk').data('values')
			}
			if (item.name == 'lbsyy') {
				obj[item.name] = $('#lbsyy').data('values')
			}

			if (item.name == 'ndjzqx') {
				obj[item.name] = $('#ndjzqx').data('values')
			}

		})


		function filestr(arr_file, ul, onefile, id) {
			arr_file = [];
			$(ul + ' li').each(function (i, item) {
				let str = $(item).css('background-image').length - 4;
				arr_file.push($(item).css('background-image').substring(5, str))

			})

			let str_arr = '';

			arr_file.forEach((item, k) => {
				str_arr = item + '||' + str_arr
			})

			if (id) {
				obj[onefile] = id + '||' + str_arr;
			} else {
				obj[onefile] = str_arr;
			}
		}


		filestr('arr_file1', '.one', 'onefile', 'cc4f664edaed4c12bc2a4f4ab4b9b804')
		filestr('arr_file2', '.two', 'twofile', 'a1f8f46d7e9b455990071ef957d4abf7')
		filestr('arr_file3', '.three', 'threefile', '8ccbcd75b89f4371b97ac02f57165390')
		filestr('arr_file4', '.four', 'fourfile', '71178da190d24c7e91c90300a8c6a9ef')
		filestr('arr_file5', '.five', 'fivefile', '2d9a079347bf4ad1b3180c780695a96a')
		filestr('arr_file6', '.six', 'sixfile', '31998628271c41aaa488df45ad03e2d3')
		filestr('arr_file7', '.seven', 'sevenfile', '9b84a7584b7a4c94859682d09b4a5f14')
		filestr('arr_file8', '.eight', 'eightfile', '922b63e89539406ab3102d3a2c378077')
		filestr('arr_file9', '.nine', 'ninefile', '8c30a0a48ff2406ab664f91a2829e0ad')

		console.log(obj)

		obj.blyw = '28bb9670798145d08a0ead22c32464e3';

        if (obj.bltype === 'ab4cd407437745bfb924a1c2dc854e37') {
            img_reg(obj, ['onefile', 'twofile'])
        } else if (obj.bltype === '075864efd72647c48471b2f514dd574c') {
            img_reg(obj, ['onefile', 'threefile'])
        }else if (obj.bltype === '8ed203cfa9da488680a21242631c1314') {
            img_reg(obj, ['onefile', 'fourfile'])
        }else if (obj.bltype === '249289ca344640469daca7354f058259') {
            img_reg(obj, ['onefile','fourfile','fivefile'])
        }else if (obj.bltype === '29508ba31a2e473d8c1bb3d819c2bb72') {
            img_reg(obj, ['onefile','sixfile','sevenfile','eightfile'])
        }else if (obj.bltype === '24483de85b554a2390de03313764a07d') {
            img_reg(obj, ['onefile','ninefile'])
        }

        if (key) {
            $.confirm({
                title: '请检查是否上传完成图片，如图片错误将会被驳回',
                text: '',
                onOK: function() {
                	 //   jiazai()
                	  $.showLoading('数据提交中');
                    $.ajax({
                        url: base_path + '/hz/ldrkdj',
                        type: 'post',
                        data: obj,
                        dataType: 'json',
                        //async: false,
                        // jsonpCallback:'Callback',
                        success: function(msg) {
                        	// jiazaiHid()
                        	 $.hideLoading();
                            var opid = $("#openid").val();
                            console.log(opid)
                            if (msg == '1') {
                            	// window.alert("提交成功");
                          	   $.toast("提交成功", 1000);
                                window.location.replace(base_path + '/login/PageJump?PageName=index&openid=' + opid);
                            } else if (msg == '2') {
                            	//window.alert("提交失败");
	                          	   $.toast("提交失败", "cancel");
                            } else {
                            	//window.alert("网络波动请重新进行录入");
                            	   $.toast("网络波动请重新进行录入", "cancel");
                            }


                        }
                    })
                },
                onCancel: function() {

                }
            });
        }


	})


});
