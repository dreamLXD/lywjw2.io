
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

    $('.dldw').on('click',function () {
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


    var num = 2;

    $('.add').on('click', function () {
        console.log('add');
        num++;
        let str = `
    		 <div class="weui-cells   weui-cells_form " > 
                          <span id="del${num}" class="del"></span>
                <form action="javascript:;" method="post">
                    <div class="weui-cells weui-cells_form ">
                            <div class="weui-cell">
                                <div class="weui-cell__hd block">
                                    <span>待移车车牌号码</span>
                                </div>
                            </div>
                            <div class="weui-cell twoInline">
                                <div class="weui-cell__bd">
                                    <input class="weui-input" required name="lxdh" id="plate${num}" placeholder="苏A">
                                </div>
                                <div class="weui-cell__bd">
                                    <input class="weui-input" required name="lxdh" placeholder="请输入车牌号码">
                                </div>
                            </div>
                        </div>
                </form>
                <div class="weui-cell">
                    <div class="weui-cell__hd block">
                        <span>地理定位</span>
                        <span class="dldw "></span>
                    </div>
                </div>
                <div class="weui-cell">
                    <div class="weui-cell__hd block">
                        <span class="gird">地理定位地理定位地理定位地理定位地理定位地理定位地理定位地理定位地理定位地理定位地理定位地理定位地理定位</span>
                    </div>

                </div>
                <div class="weui-cells   weui-cells_form">
                    <div class="container">
                        <div class="weui_cells weui_cells_form">
                            <div class="weui_cell">
                                <div class="weui_cell_bd weui_cell_primary">
                                    <div class="weui_uploader">
                                        <div class="weui_uploader_hd weui_cell">
                                            <div class="weui_cell_bd weui_cell_primary"><span style="font-size: 14px">上传现场照片</span>
                                            </div>
                                            <i class="weui-icon-warn weui-icon_msg-primary imgwarn img_i_base${num}"></i>
                                        </div>
                                        <div class="weui_uploader_bd">
                                            <ul class="weui_uploader_files one${num}">
                                            </ul>
                                            <div class="weui_uploader_input_wrp">
                                                <input class="weui_uploader_input js_file${num}" type="file" name="img"
                                                       accept="image/jpg,image/jpeg,image/png,image/gif" multiple="">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="weui_dialog_alert" style="display: none;">
                        <div class="weui_mask"></div>
                        <div class="weui_dialog">
                            <div class="weui_dialog_hd"><strong class="weui_dialog_title">警告</strong>
                            </div>
                            <div class="weui_dialog_bd">弹窗内容，告知当前页面信息等</div>
                            <div class="weui_dialog_ft">
                                <a href="javascript:;" class="weui_btn_dialog primary">确定</a>
                            </div>
                        </div>
                    </div>
                    <div class="imgshow imgshow_base${num}">
                        <div>
                            <p class="title"> 详细介绍 </p>
                            <!--<img src="../../../img/shili/shili.jpg" alt="">-->
                            <p class="zhushi">
                                图片清晰，不超过10兆，最大限制30张图片
                            </p>
                            <button>确定</button>
                        </div>
                    </div>
                </div>
              
            </div>
    `
        $('#tab1').append(str)
          fileobj('.img_i_base'+num+'', '.imgshow_base'+num+'', '.js_file'+num+'', '.one'+num+'')
        $("#plate"+num+"").select({
            title: "选择手机",
            items: [
                {
                    title: "iPhone 3GS",
                    value: "001",
                },
                {
                    title: "iPhone 5",
                    value: "002",
                },
                {
                    title: "iPhone 5S",
                    value: "003",
                },
                {
                    title: "iPhone 6",
                    value: "004",
                }
            ]
        });
        $('#del'+num+'').on('click', function () {
            $(this).parent().remove()
        })
    });

    $('footer button').on('click', function (e) {

        e.preventDefault()
        $('form').submit()

        let arr = $('form').serializeArray();
        // if ($('#style').data('values')) {
        //     let vals = $('#style').data('values')
        //     arr[0].value = 0;
        //     arr[0].value = vals;
        // }
        let obj = {};
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

        filestr('arr_file1', '.one', 'onefile', 'f4e05d3d86fb49af9202dc7798414d07')



        console.log(obj)

        obj.blyw = '3e28c31608ad4d2980eb9b42fa7ee609'



//         if(key){
//             $.confirm({
//                 title: '请检查是否上传完成图片，如图片错误将会驳回',
//                 text: '',
//                 onOK: function () {
//                     jiazai()
//                     $.ajax({
//                         url: base_path +'/hz/hkzx',
//                         type: 'post',
//                         data: obj,
//                         dataType: 'json',
//                         //async: false,
//                         // jsonpCallback:'Callback',
//                         success: function (msg) {
//                             jiazaiHid()
//                             var opid=$("#openid").val();
//                             console.log(opid)
//                             if(msg=='1'){
//                                 alert("提交成功");
//                                 window.location.replace(base_path+'/login/PageJump?PageName=index&openid='+opid);
//                             }else if(msg=='2'){
//                                 alert("提交失败");
//                             }else{
//                                 alert("网络波动请重新进行录入");
//                             }
// 
// 
//                         }
//                     })
//                 },
//                 onCancel: function () {
// 
//                 }
//             });
//         }
// 
// 
    });
});