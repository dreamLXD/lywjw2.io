let obj = {};

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
	//车牌下拉
	      
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

    $('.dldw').on('click',function () {
		gird ='.gird'
            $('.container1').css('display','block');
            $('.container2').css('display','none')
    })
    $('.box').on('click',function () {
        $('.container1').css('display','none');
        $('.container2').css('display','block')
    })
    $("#plate").select({
        title: "选择手机",
        items: [
            {
                title: "鲁A",
                value: "001",
            },
            {
                title: "鲁B",
                value: "002",
            },
            {
                title: "鲁C",
                value: "003",
            },
            {
                title: "鲁D",
                value: "004",
            },
            {
                title: "鲁E",
                value: "005",
            },
            {
                title: "鲁F",
                value: "006",
            },
            {
                title: "鲁G",
                value: "007",
            },
            {
                title: "鲁H",
                value: "008",
            },
            {
                title: "鲁J",
                value: "009",
            },
            {
                title: "鲁K",
                value: "010",
            },
            {
                title: "鲁L",
                value: "011",
            },
            {
                title: "鲁M",
                value: "012",
            },
            {
                title: "鲁N",
                value: "013",
            },
            {
                title: "鲁P",
                value: "014",
            },
            {
                title: "鲁Q",
                value: "015",
            },
            {
                title: "鲁R",
                value: "016",
            },
            {
                title: "鲁S",
                value: "017",
            },
            {
                title: "鲁U",
                value: "018",
            },
            {
                title: "鲁V",
                value: "019",
            },
            {
                title: "鲁Y",
                value: "020",
            }
        ]
    });
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


    var num = 0;

   

    $('footer button').on('click', function (e) {

        e.preventDefault()
        $('form').submit()

        let arr = $('form').serializeArray();
     
 
        arr.forEach((item) => {
            obj[item.name] = item.value;
            console.log(obj)
            if (item.name == 'xb') {
                obj[item.name] = $('#sex').data('values')
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

        filestr('arr_file1', '.one', 'onefile')



        console.log(obj)

        obj.blyw = '3e28c31608ad4d2980eb9b42fa7ee609'
        
		obj.dldw=$('.gird').text()
        obj.openid=$('#openid').val()
 
            $.confirm({
                title: '请确认填写完成',
                text: '',
                onOK: function () {
                    jiazai()
                    $.ajax({
                        url: base_path +'/jtgl/CarPark',
                        type: 'post',
                        data: obj,
                        dataType: 'json',
                       
                        success: function (msg) {
                            jiazaiHid()
                            var opid=$("#openid").val();
                            console.log(opid)
                            if(msg=='1'){
                                $.alert("已短信通知车主，请耐心等候");
                                window.location.replace(base_path+'/login/PageJump?PageName=index&openid='+opid);
                            }else if(msg=='2'){
                                $.alert("提交失败");
                            }else{
                                $.alert("网络波动请重新进行录入");
                            }


                        }
                    })
                },
                onCancel: function () {

                }
            });
        


    });
});