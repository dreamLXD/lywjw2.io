$(function () {

	$('.imgshow').on('click',function(){
		$(this).css('display','none')
		})
    $('.style1').css('display', 'none')
    $('.style2').css('display', 'none')

    $("#style").select({
        title: "选择类型",
        items: [{
                title: "婚生父母出生登记",
                value: "bed8beaa13ab4617808258f957c50e6e",
            },
            {
                title: "父母离异出生登记",
                value: "1af5625eb7654b89ab3bffed3fddc501",
            }
        ],
        onClose: function () {
            $('.style1').css('display', 'none')
            $('.style2').css('display', 'none')
            $('.style3').css('display', 'none')
            $('.four').html('')
            $('.five').html('')
            $('.six').html('')
            if ($('#style').data('values') == 'bed8beaa13ab4617808258f957c50e6e') {
                $('.style1').css('display', 'block')
            } else if ($('#style').data('values') == '1af5625eb7654b89ab3bffed3fddc501') {
                $('.style2').css('display', 'block')
            } else {
                $('.style3').css('display', 'block')
            }
        }
    });

    $('.submit').on('click', function () {
        $('.imgshow').css('display', 'none')
    })



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
            $('#resp').select({
                title: '关系',
                items: gxarr,
            })
        })

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



        $('#idpcs').attr('disabled', 'true')

    })
});




//file插件

$(function () {
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
                        console.log($preview)
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
    var maxCount = 20;

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
            if (item.name == 'yesex') {
                obj[item.name] = $('#sex').data('values')
            }
            if (item.name == 'yeysqrgx') {
                obj[item.name] = $('#resp').data('values')
            }
            if (item.name == 'yemz') {
                obj[item.name] = $('#Nation').data('values')
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



        filestr('arr_file1', '.one', 'onefile', 'f4e05d3d86fb49af9202dc7798414d07')
        filestr('arr_file2', '.two', 'twofile', '48fb29abf5374017a1650fedb110ded2')
        filestr('arr_file3', '.three', 'threefile', 'daea09e9ab2c469ca1391c4cd0f7b66e')
        filestr('arr_file4', '.four', 'fourfile', 'a69c7610096e401ca54e03e9adbf94ae')
        filestr('arr_file5', '.five', 'fivefile', 'c325081893ea40daaf7ffc2fb9179c2f')
        filestr('arr_file6', '.six', 'sixfile', '73672ee6df1b4982bfd204e31413d239')

        console.log(obj)

        obj.blyw = '3c89c3e380554a5f9d8b660a80557aa4';

        if (obj.bltype === 'bed8beaa13ab4617808258f957c50e6e') {
            img_reg(obj, ['onefile', 'twofile', 'threefile', 'fourfile'])
        } else if (obj.bltype === '1af5625eb7654b89ab3bffed3fddc501') {
            img_reg(obj, ['onefile', 'twofile', 'threefile', 'fivefile', 'sixfile'])
        }

        if(key){
        $.confirm({
              title: '请检查是否上传完成图片，如图片错误将会被驳回',
              text: '',
              onOK: function () {
            	  //   jiazai()
            	  $.showLoading('数据提交中');
                    $.ajax({
                        url: base_path +'/hz/yehkdj',
                        type: 'post',
                        data: obj,
                        dataType: 'json',
                        //async: false,
                        // jsonpCallback:'Callback',
                        success: function (msg) {
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
              },
              onCancel: function () {

              }
            });


    }


    })


});
