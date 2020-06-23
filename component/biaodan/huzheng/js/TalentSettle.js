  var url = document.location.href;
    var urlval = url.split("val=")[1];
$(function () {
    $('.imgshow').on('click',function(){
		$(this).css('display','none')
		})
    let fl_item=null;
    console.log(urlval)
          if (urlval == '1') {
            $('.fl_type1').css('display', 'none')
            $('.fl_type2').css('display', 'block')
        //    $('.lh_tk').text('合法稳定的住所证明')
        fl_item=[
            {
                title: "立户需要",
                value: "22b1c3879f2e491780cf6c66e0eb03e4",
            }
        ]

        } else if (urlval == '2') {
            $('.fl_type2').css('display', 'none')
            $('.fl_type1').css('display', 'block')
          //  $('.lh_tk').text('亲属关系证明')
            fl_item=[
                {
                    title: "落户到家庭户",
                    value: "82570bd8e27a4fbcac6005ba9757654d",
                },
                {
                    title: "单位或社区集体户",
                    value: "a6a55e6f488049f2ae34ea2eb42b675e",
                }]

        }

            $("#style").select({
                title: "选择类型",
                items:fl_item,
                onClose: function () {
                    $('.style1').css('display', 'none')
                    $('.style2').css('display', 'none')
                    $('.style3').css('display', 'none')
                    $('.four').html('')
                    $('.five').html('')
                    $('.six').html('')
                    if ($('#style').data('values') == '22b1c3879f2e491780cf6c66e0eb03e4') {
                        $('.style1').css('display', 'block')
                    } else if ($('#style').data('values') == '82570bd8e27a4fbcac6005ba9757654d') {
                        $('.style2').css('display', 'block')
                    } else {
                        $('.style3').css('display', 'block')
                    }
                }
            });






    console.log(urlval)

    $('.style1').css('display', 'none')
    $('.style2').css('display', 'none')
    $('.style3').css('display', 'none')

    $('.submit').on('click', function () {
        $('.imgshow').css('display', 'none')
    })
    $('.lh_tk .weui_cell_primary').text('')

    $("#fl_type").select({
        title: "选择类型",
        items: [{
            title: "无合法稳定的住所证明",
            value: "1",
        }, {
            title: "有合法稳定的住所证明",
            value: "2",
        }],
        onClose: function () {

            $('.style1').css('display', 'none')
            $('.style2').css('display', 'none')
            $('.six').html('')
            $('.five').html('')

            if ($('#style').data('values') == '1') {
                $('.style1').css('display', 'block')
            } else if ($('#style').data('values') == '2') {
                $('.style2').css('display', 'block')
            }

        }
    });

    $('#idpcs').attr('disabled', 'true')

    var data = ""
    let pcsarr=''
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
                        pcsarr = [];
                        let pcsobj = JSON.parse(msg);
                        for (let item in pcsobj) {
                            let obj = {};
                            obj = {
                                title: item,
                                value: pcsobj[item]
                            };
                            pcsarr.push(obj)
                        }
                        $('#idpcs').select('update',{
                            title: '选择派出所',
                            items: pcsarr,

                        })

                    })
                }
            }
        })

    })



    if(urlval=='1'){

    }



    $("#dishi").select({
        title: "地市",
        items: [{
                title: "临沂市公安局",
                value: "728d05a1002948eeb44b2a13566a784a",
            }
        ]
    });

    var data = ""
	$.post(base_path+"/wxzd/gaj", data, function (msg) {
		console.log(msg)
		let fjarr=[];
		let fjobj=JSON.parse(msg);
		for(let item in fjobj){
			let obj={}
			obj={title:item,value:fjobj[item]};
			fjarr.push(obj)
		}
		$('#xianqu').select({
		title: '选择分局',
		items: fjarr,
		onClose: function (param) {
			console.log($('#xianqu').data('values'))
		if(	$('#xianqu').data('values')){
			$('#blpaichusuo').attr('disabled', false)
			$('#blpaichusuo').val('');
			$.post(base_path+"/wxzd/pcs", {id:	$('#xianqu').data('values')}, function (msg) {
				let pcsarr=[];
				let pcsobj=JSON.parse(msg);
				for(let item in pcsobj){
					let obj={};
					obj={title:item,value:pcsobj[item]};
					pcsarr.push(obj)
				}
			$('#blpaichusuo').select('update',{
					title: '选择派出所',
                    items:pcsarr,
            })
        })
        }
         } })
})


var data = ""
$.post(base_path+"/wxzd/qsgx", data, function (msg) {
    console.log(msg)
    let gxarr=[];
    let gxobj=JSON.parse(msg);
    for(let item in gxobj){
        let obj={}
        obj={title:item,value:gxobj[item]};
         console.log(obj)
        gxarr.push(obj)
    }
    $('#tkr_ysqrgx').select({
    title: '关系',
    items: gxarr,
    })
})

var data = ""
$.post(base_path+"/wxzd/qsgx", data, function (msg) {
    console.log(msg)
    let gxarr=[];
    let gxobj=JSON.parse(msg);
    for(let item in gxobj){
        let obj={}
        obj={title:item,value:gxobj[item]};
         console.log(obj)
        gxarr.push(obj)
    }
    $('#btkryhzgx').select({
    title: '关系',
    items: gxarr,
    })
})

var data = ""
$.post(base_path+"/wxzd/qsgx", data, function (msg) {
    console.log(msg)
    let gxarr=[];
    let gxobj=JSON.parse(msg);
    for(let item in gxobj){
        let obj={}
        obj={title:item,value:gxobj[item]};
         console.log(obj)
        gxarr.push(obj)
    }
    $('#sqr_ysqrgx').select({
    title: '关系',
    items: gxarr,
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

    var url = document.location.href;
    var urlval = url.split("val=")[1];
    // 允许上传的图片类型
    var allowTypes = ['image/jpg', 'image/jpeg', 'image/png', 'image/gif'];
    // 1024KB，也就是 1MB
    var maxSize = 1024 * 1024 * 5;
    // 图片最大宽度
    var maxWidth = 300;
    // 最大上传图片数量
    var maxCount = 20;

    function fileobj(img_i_base, imgshow_base, js_file, ul) {

        $(img_i_base).on('click', function () {
            console.log('aaa')
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
		                      
		                     <div class='fgc'></div></li>`);
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
    fileobj('.img_i_base1', '.imgshow_base1', '.js_file1', '.one')
    fileobj('.img_i_base2', '.imgshow_base2', '.js_file2', '.two')
    fileobj('.img_i_base3', '.imgshow_base3', '.js_file3', '.three')
    fileobj('.img_i_base4', '.imgshow_base4', '.js_file4', '.four')
    fileobj('.img_i_base5', '.imgshow_base5', '.js_file5', '.five')
    fileobj('.img_i_base6', '.imgshow_base6', '.js_file6', '.six')



    $('footer button').on('click', function (e) {

        e.preventDefault()
        $('form').submit()
        let arr = $('form').serializeArray();

        let obj = {};

        var newstr = '';

        arr.forEach((item, k) => {
            /////////////////////
            obj[item.name] = item.value;


            if (urlval == 1) {

                if (item.name.match('sqr_name')) {
                    newstr += item.value + '$'
                }
                if (item.name.match('sqr_sfz')) {
                    newstr += item.value + '$'
                }
                if (item.name.match('sqr_lxdh')) {
                    newstr += item.value + '$'
                }
                if (item.name.match('sqr_ysqrgx')) {
                    let k = item.name.split('sqr_ysqrgx')[1];

                    if (k == '') {
                        console.log('a')
                        newstr += $(`#sqr_ysqrgx`).data('values') + '||'
                    } else {
                        newstr += $(`#sqr_ysqrgx${k}`).data('values') + '||'
                    }

                }
            } else if (urlval=='2'){
                //////////////////////////////////可增加投靠人
                if (item.name.match('tkr_name')) {
                    newstr += item.value + '$'
                }
                if (item.name.match('tkr_sfz')) {
                    newstr += item.value + '$'
                }
                if (item.name.match('tkr_lxdh')) {
                    newstr += item.value + '$'
                }
                if (item.name.match('tkr_ysqrgx')) {
                    let k = item.name.split('tkr_ysqrgx')[1];

                    if (k == '') {
                        console.log('a')
                        newstr += $(`#tkr_ysqrgx`).data('values') + '||'
                    } else {
                        newstr += $(`#tkr_ysqrgx${k}`).data('values') + '||'
                    }
                }

            }

            if (item.name == 'blfj') {
                obj[item.name] = $('#idfj').data('values')
            }
            if (item.name == 'blpcs') {
                obj[item.name] = $('#idpcs').data('values')
            }
            if (item.name == 'bltype') {
                obj[item.name] = $('#style').data('values')
            }

            if (item.name == 'dishi') {
                obj[item.name] = $('#dishi').data('values')
            }
            if (item.name == 'xianqu') {
                obj[item.name] = $('#xianqu').data('values')
            }
            if (item.name == 'blpaichusuo') {
                obj[item.name] = $('#blpaichusuo').data('values')
            }

            if (item.name == 'btkryhzgx') {
                obj[item.name] = $('#btkryhzgx').data('values')
            }

            if (item.name == 'tkr_ysqrgx') {
                obj[item.name] = $('#tkr_ysqrgx').data('values')
            }
            if (item.name == 'sqr_ysqrgx') {
                obj[item.name] = $('#sqr_ysqrgx').data('values')
            }


        })

        newstr = newstr.substr(0, newstr.length - 2);
        console.log(newstr)
        obj['newstr'] = newstr


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

        filestr('arr_file1', '.one', 'onefile', 'f4e05d3d86fb49af9202dc7798414d07')
        filestr('arr_file2', '.two', 'twofile', '48fb29abf5374017a1650fedb110ded2')
        filestr('arr_file3', '.three', 'threefile', '2291cd58442e435baaa3cb2a5e72f99a')
        filestr('arr_file4', '.four', 'fourfile', '2352399efbf04e1f94ccfcd9a54a9596')
        filestr('arr_file5', '.five', 'fivefile','c6c3d461be5244deb5e4c59a5e2542fa')
        filestr('arr_file6', '.six', 'sixfile','00049911e5464455bafe361fca6781a7')

        console.log(obj)

        if (urlval == '1') {

        	console.log(urlval)

        	 obj.blfj = obj.xianqu;
        	 obj.blpcs = obj.blpaichusuo;
         }

        console.log(obj)

        obj.blyw = '2166a0158c894df789f67a258244f043';


        if (obj.bltype === '22b1c3879f2e491780cf6c66e0eb03e4') {
            img_reg(obj, ['onefile', 'twofile', 'threefile', 'fourfile'])
        } else if (obj.bltype === '82570bd8e27a4fbcac6005ba9757654d') {
            img_reg(obj, ['onefile', 'twofile', 'threefile', 'fivefile'])
        }else if (obj.bltype === 'a6a55e6f488049f2ae34ea2eb42b675e') {
            img_reg(obj, ['onefile', 'twofile', 'threefile', 'sixfile'])
        }

       if (key) {
            $.confirm({
                title: '请检查是否上传完成图片，如图片错误将会被驳回',
                text: '',
                onOK: function() {
               //   jiazai()
              	  $.showLoading();
                     if(urlval=='1'){
            $.ajax({
                url:base_path+'/hz/xlh',
                type:'post',
                data:obj,
                dataType:'json',
                //async: false,
                // jsonpCallback:'Callback',
                success:function (msg) {
                	// jiazaiHid()
                	 $.hideLoading();
                 var opid=$("#openid").val();
                          console.log(opid)
                           if(msg=='1'){
                        	// window.alert("提交成功");
	                          	   $.toast("提交成功", 1000);
                             window.location.replace(base_path+'/login/PageJump?PageName=index&openid='+opid);
                           }else if(msg=='2'){
                        	 //window.alert("提交失败");
	                          	   $.toast("提交失败", "cancel");
                           }else{
                        	 //window.alert("网络波动请重新进行录入");
                           	   $.toast("网络波动请重新进行录入", "cancel");
                           }


                }
            })

        }else if(urlval=='2'){
            $.ajax({
                url:base_path+'/hz/tkdj',
                type:'post',
                data:obj,
                dataType:'json',
               // async: false,
                // jsonpCallback:'Callback',
                success:function (msg) {
                	// jiazaiHid()
                	 $.hideLoading();
                 var opid=$("#openid").val();
                          console.log(opid)
                           if(msg=='1'){
                        	// window.alert("提交成功");
	                          	   $.toast("提交成功", 1000);
                             window.location.replace(base_path+'/login/PageJump?PageName=index&openid='+opid);
                           }else if(msg=='2'){
                        	 //window.alert("提交失败");
	                          	   $.toast("提交失败", "cancel");
                           }else{
                        	   //window.alert("网络波动请重新进行录入");
                           	   $.toast("网络波动请重新进行录入", "cancel");
                           }


                }
            })

        }
                },
                onCancel: function() {

                }
            });


        }
        // if(urlval=='1'){
        //     $.ajax({
        //         url:base_path+'/hz/xlh',
        //         type:'post',
        //         data:obj,
        //         dataType:'json',
        //         //async: false,
        //         // jsonpCallback:'Callback',
        //         success:function (msg) {
        //         	// jiazaiHid()
        //         	 $.hideLoading('数据提交中');
        //          var opid=$("#openid").val();
		// 				  console.log(opid)
		// 				   if(msg=='1'){
		// 					// window.alert("提交成功");
	    //                       	   $.toast("提交成功", 1000);
		// 					 window.location.replace(base_path+'/login/PageJump?PageName=index&openid='+opid);
		// 				   }else if(msg=='2'){
		// 					 //window.alert("提交失败");
	    //                       	   $.toast("提交失败", "cancel");
		// 				   }else{
		// 					   //window.alert("网络波动请重新进行录入");
        //                    	   $.toast("网络波动请重新进行录入", "cancel");
		// 				   }


        //         }
        //     })

        // }else if(urlval=='2'){
        //     $.ajax({
        //         url:base_path+'/hz/tkdj',
        //         type:'post',
        //         data:obj,
        //         dataType:'json',
        //        // async: false,
        //         // jsonpCallback:'Callback',
        //         success:function (msg) {
        //         	// jiazaiHid()
        //         	 $.hideLoading('数据提交中');
        //          var opid=$("#openid").val();
		// 				  console.log(opid)
		// 				   if(msg=='1'){
		// 					// window.alert("提交成功");
	    //                       	   $.toast("提交成功", 1000);
		// 					 window.location.replace(base_path+'/login/PageJump?PageName=index&openid='+opid);
		// 				   }else if(msg=='2'){
		// 					   //window.alert("提交失败");
	    //                       	   $.toast("提交失败", "cancel");
		// 				   }else{
		// 					   //window.alert("网络波动请重新进行录入");
        //                    	   $.toast("网络波动请重新进行录入", "cancel");
		// 				   }


        //         }
        //     })

        // }




    })


    var num = 0;
    var num2=0;
    $('.tkrxx .tianjia').on('click', function () {
        num++;
        let str = `
    		<div class="weui-cells weui-cells_form">
					<div class="weui-cell">
						<div class="weui-cell__hd"><label class="weui-label">姓名：</label><span class="del"></span></div>
						<div class="weui-cell__bd">
							<input class="weui-input" required name="tkr_name${num}" placeholder="请输入姓名">
						</div>
					</div>
					<div class="weui-cell">
						<div class="weui-cell__hd"><label class="weui-label">公民身份证号码：</label></div>
						<div class="weui-cell__bd">
							<input class="weui-input" required name="tkr_sfz${num}" placeholder="请输入身份证号码">
						</div>
					</div>
					<div class="weui-cell">
						<div class="weui-cell__hd"><label class="weui-label">联系电话：</label></div>
						<div class="weui-cell__bd">
							<input class="weui-input" required name="tkr_lxdh${num}" placeholder="请输入号码">
						</div>
					</div>


					<div class="weui-cell">
						<div class="weui-cell__hd"><label class="weui-label">与申请人关系：</label></div>
						<div class="weui-cell__bd">
							<input class="weui-input" id="tkr_ysqrgx${num}"  required name="tkr_ysqrgx${num}" placeholder="请选择关系">
						</div>
					</div>

				</div>
    `

        $('.tkrxx.xinxi').append(str)
        var data = ""
        $.post(base_path+"/wxzd/qsgx", data, function (msg) {
            console.log(msg)
            let gxarr=[];
            let gxobj=JSON.parse(msg);
            for(let item in gxobj){
                let obj={}
                obj={title:item,value:gxobj[item]};
                 console.log(obj)
                gxarr.push(obj)
            }
            $('#tkr_ysqrgx'+num).select({
            title: '关系',
            items: gxarr,
            })
        })


        $('.tkrxx .del').on('click',function () {
            $(this).parent().parent().parent().remove()
        })
    })


    $('.sqrxx .tianjia ').on('click', function () {
        num2++;
        let str = `
    			<div class="weui-cells weui-cells_form">
					<div class="weui-cell">
						<div class="weui-cell__hd"><label class="weui-label">随迁人姓名:</label><span class="del"></span></div>
						<div class="weui-cell__bd">
							<input class="weui-input" type="text" name="sqr_name${num2}" required placeholder="请输入姓名">
						</div>
					</div>
					<div class="weui-cell">
						<div class="weui-cell__hd"><label class="weui-label">公民身份号码:</label></div>
						<div class="weui-cell__bd">
							<input class="weui-input" type="text" name="sqr_sfz${num2}" required placeholder="请输入号码">
						</div>
					</div>
					<div class="weui-cell">
						<div class="weui-cell__hd"><label class="weui-label">联系电话:</label></div>
						<div class="weui-cell__bd">
							<input class="weui-input" type="text" name="sqr_lxdh${num2}" required placeholder="请输入电话">
						</div>
					</div>
					<div class="weui-cell">
						<div class="weui-cell__hd"><label class="weui-label">与申请人关系:</label></div>
						<div class="weui-cell__bd">
							<input class="weui-input" type="text" id="sqr_ysqrgx${num2}" name="sqr_ysqrgx${num2}" required placeholder="请选择关系">
						</div>
					</div>
				</div>
    `

        $('.xinxi.sqrxx').append(str)
        var data = ""
        $.post(base_path+"/wxzd/qsgx", data, function (msg) {
            console.log(msg)
            let gxarr=[];
            let gxobj=JSON.parse(msg);
            for(let item in gxobj){
                let obj={}
                obj={title:item,value:gxobj[item]};
                 console.log(obj)
                gxarr.push(obj)
            }
            $('#sqr_ysqrgx'+num2).select({
            title: '关系',
            items: gxarr,
            })
        })



    $('.tkrxx .del').on('click',function () {
        $(this).parent().parent().parent().remove()
        $(this).parent().parent().parent().children('.weui-input').attr('name','')
    })
    $('.sqrxx .del').on('click',function () {
        $(this).parent().parent().parent().remove()
        $(this).parent().parent().parent().children('.weui-input').attr('name','')
    })
})
});
