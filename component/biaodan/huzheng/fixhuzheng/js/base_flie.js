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
	                      
	                    </li>`);
                    // var $preview = $('<li class="weui_uploader_file weui_uploader_status" style="background-image:url(' + base64 + ')"><div class="weui_uploader_status_content">0%</div></li>');

                    $(ul).append($preview);
                    console.log($preview)
                    // debugger;
                    var num = $('.weui_uploader_file').length;
                    $('.js_counter').text(num + '/' + maxCount);

                    // 然后假装在上传，可以post base64格式，也可以构造blob对象上传，也可以用微信JSSDK上传

                    var progress = 0;

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


function filestr(arr_file, ul, onefile) {
    arr_file = [];
    $(ul + ' li').each(function (i, item) {
        let str = $(item).css('background-image').length - 4;
        arr_file.push($(item).css('background-image').substring(5, str))

    })

    let str_arr = '';

    arr_file.forEach((item, k) => {
        str_arr = item + '||' + str_arr
    })


    obj[onefile] = str_arr;
}