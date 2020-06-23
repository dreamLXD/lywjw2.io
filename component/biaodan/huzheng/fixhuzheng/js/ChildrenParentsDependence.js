$(function () {
    $('.imgshow').on('click',function(){
		$(this).css('display','none')
		})
    $('.fgc').on('click', function (event) {
        event.preventDefault();
        $(this).parent().remove()
    });
    // $('.style1').css('display', 'none')
    // $('.style2').css('display', 'none')
    // $('.style3').css('display', 'none')
    // $('.style4').css('display', 'none')


            // $("#style").select({
            //     title: "选择类型",
            //     items: [{
            //             title: "离婚投靠",
            //             value: "40e1f927c56c4f69b955dc659d7fdf36",
            //         },
            //         {
            //             title: "一方属现役军人",
            //             value: "852c89f3f29844a7a0a3fd8d26fe154e",
            //         },
            //         {
            //             title: "父母出国境定居",
            //             value: "fd5830672fa3402fa23281bd4ffcdbda",
            //         },
            //         {
            //             title: "投靠共同居住生活的公婆或岳父母",
            //             value: "2bfd9d7bdeb74118a2b27f64190cdd10",
            //         }
            //     ],
            //     onClose: function () {
            //         $('.style1').css('display', 'none')
            //         $('.style2').css('display', 'none')
            //         $('.style3').css('display', 'none')
            //         $('.style4').css('display', 'none')
                   
            //         $('.four').html('')
            //         $('.five').html('')
            //         $('.six').html('')
            //         $('.seven').html('')
            //         if ($('#style').data('values') == '40e1f927c56c4f69b955dc659d7fdf36') {
            //             $('.style1').css('display', 'block')
            //         } else if ($('#style').data('values') == '852c89f3f29844a7a0a3fd8d26fe154e') {
            //             $('.style2').css('display', 'block')
            //         } else if ($('#style').data('values') == 'fd5830672fa3402fa23281bd4ffcdbda') {
            //             $('.style3').css('display', 'block')
            //         } else if ($('#style').data('values') == '2bfd9d7bdeb74118a2b27f64190cdd10') {
            //             $('.style4').css('display', 'block')
            //         }
            //     }
            // });


    $('.submit').on('click', function () {
        $('.imgshow').css('display', 'none')
    })
    // $('#idpcs').attr('disabled', 'true')
  
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



    $("#time").calendar();
    var data = ""
    $.post(base_path + "/wxzd/qsgx", data, function (msg) {
        console.log(msg)
        let gxarr = [];
        let gxobj = JSON.parse(msg);
        for (let item in gxobj) {
            let obj = {}
            obj = {
                title: item,
                value: gxobj[item]
            };
            console.log(obj)
            gxarr.push(obj)
        }
        $('#tkr_ysqrgx').select({
            title: '关系',
            items: gxarr,
        })
    })

    var data = ""
    $.post(base_path + "/wxzd/qsgx", data, function (msg) {
        console.log(msg)
        let gxarr = [];
        let gxobj = JSON.parse(msg);
        for (let item in gxobj) {
            let obj = {}
            obj = {
                title: item,
                value: gxobj[item]
            };
            console.log(obj)
            gxarr.push(obj)
        }
        $('#btkryhzgx').select({
            title: '关系',
            items: gxarr,
        })
    })

    var data = ""
    $.post(base_path + "/wxzd/qsgx", data, function (msg) {
        console.log(msg)
        let gxarr = [];
        let gxobj = JSON.parse(msg);
        for (let item in gxobj) {
            let obj = {}
            obj = {
                title: item,
                value: gxobj[item]
            };
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
    fileobj('.img_i_base7', '.imgshow_base7', '.js_file7', '.seven')




    $('footer button').on('click', function (e) {
     
        e.preventDefault()
          $('form').submit()
        let arr = $('form').serializeArray();
        console.log(arr)

        let obj = {};
        var newstr = '';

        arr.forEach((item, k) => {

            obj[item.name] = item.value;

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



            if (item.name == 'blfj') {
                obj[item.name] = $('#idfj').data('values')
            }
            if (item.name == 'blpcs') {
                obj[item.name] = $('#idpcs').data('values')
            }
            if (item.name == 'bltype') {
                obj[item.name] = $('#style').data('values')
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

        filestr('arr_file1', '.one', 'onefile', '312fd5e9033148c2aa4d8d82d077b24b')
        filestr('arr_file2', '.two', 'twofile', 'f86094d5d57f4cc5b94a8b701dda3264')
        filestr('arr_file3', '.three', 'threefile', 'c6c3d461be5244deb5e4c59a5e2542fa')
        filestr('arr_file4', '.four', 'fourfile', 'e0942266a05847429d16c1d472bcef48')
        filestr('arr_file5', '.five', 'fivefile', 'f70df249ea514d21aac755751bdb2f5a')
        filestr('arr_file6', '.six', 'sixfile', '2ead8df7362e4ef2942b56399a693009')
        filestr('arr_file7', '.seven', 'sevenfile', 'b5f88d2379734e74924eedb1d4770fb8')


        console.log(obj)

        obj.blyw = 'f3fb92548b754af6a4547113b61c198f'

        if (obj.bltype === '40e1f927c56c4f69b955dc659d7fdf36') {
            img_reg(obj, ['onefile', 'twofile', 'threefile', 'fourfile'])
        } else if (obj.bltype === '852c89f3f29844a7a0a3fd8d26fe154e') {
            img_reg(obj, ['onefile', 'twofile', 'threefile', 'fivefile'])
        }else if (obj.bltype === 'fd5830672fa3402fa23281bd4ffcdbda') {
            img_reg(obj, ['onefile', 'twofile', 'threefile', 'sixfile'])
        }else if (obj.bltype === '2bfd9d7bdeb74118a2b27f64190cdd10') {
            img_reg(obj, ['onefile', 'twofile', 'threefile', 'sevenfile'])
        }

        	
                   if (key) {
            $.confirm({
                title: '请检查是否上传完成图片，如图片错误将会被驳回',
                text: '',
                onOK: function() {
                	 //   jiazai()
                     $.showLoading('数据提交中');
                    $.ajax({
                        url: base_path + '/hz/tkdj',
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
    var num = 0;
    $('.tianjia').on('click', function () {
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

        $('.xinxi').append(str)
        console.log('#resp')
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



        $('.del').on('click', function () {
            console.log('a')
            $(this).parent().parent().parent().remove()
            $(this).parent().parent().parent().children('.weui-input').attr('name', '')
        })

    });
})