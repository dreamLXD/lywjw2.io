    
    let data={};

    function  listObj(obj) {
        //日期
        console.log(obj.date)
        if(obj.date){
            obj.date.forEach((item)=>{
               $(item).datetimePicker()
            })
        }
        //下拉
      if(obj.select){
          if(obj.select.url){
              obj.select.forEach((item)=>{
              $.ajax({
                  url: obj.select.url,
                  type: 'post',
                  data:obj.select.data,
                  dataType: 'json',
                  success: function (msg) {
                      let arr = [];
                      let selectobj = JSON.parse(msg);
                      for (let key in selectobj) {
                          let obj = {}
                          obj = {
                              title: key,
                              value: selectobj[key]
                          };
                          arr.push(obj)
                      }
                          $(item.id).select({
                              title: "选择类型",
                              items: arr
                          });
                  }
              })
              })
          }else {
              obj.select.forEach((item)=>{
                  $(item.id).select({
                      title: "选择类型",
                      items: item.items
                  });
              })
          }

      }

        //点击关闭初始弹窗
        $('.submit').on('click', function () {
            $('.imgshow').css('display', 'none')
        })

        // 上传图片隐藏
        if (obj.Hid) {
            obj.Hid.forEach(function (item) {
                $(item).css('display','none')
              })
        }


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
            // 允许上传的图片类型
            var allowTypes = ['image/jpg', 'image/jpeg', 'image/png', 'image/gif'];
            // 1024KB，也就是 1MB
            var maxSize = 1024 * 1024 * 5;
            // 图片最大宽度
            var maxWidth = 300;
            // 最大上传图片数量
            var maxCount = 20;
         //上传图片封装
        function fileobj(img_i_base, imgshow_base, js_file, ul) {

            $(img_i_base).on('click', function () {
                $(imgshow_base).css('display', 'block')
            })
            $(imgshow_base + ' button').on('click', (e) => {
                e.preventDefault();
                $(imgshow_base).css('display', 'none')
            })

            $(js_file).on('change', function (event) {
                let then = this;
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
        if(obj.img_show){
            obj.img_show.forEach((item)=>{
                // console.log(item)
                fileobj(...item)
            })
        }
        //   点击上传
        $('footer button').on('click', function (e) {
            e.preventDefault()
            // $('form').submit()
            let arr = $('form').serializeArray();

            let data = {};
            arr.forEach((item) => {
                data[item.name] = item.value;
              if(obj.upload){
                  obj.upload.forEach((ud)=>{
                      if (item.name == ud.name) {
                          data[item.name] = $(ud.id).data('values')
                      }
                  })
              }

            })


            //上传图片的处理
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
                    data[onefile] = id + '||' + str_arr;
                } else {
                    data[onefile] = str_arr;
                }
            }

            if(obj.img_str){
                obj.img_str.forEach((item)=>{
                    filestr(...item)
                })

            }
            console.log(data);

            //删除

            $('.del').on('click', function () {
                console.log('a')
                $(this).parent().parent().parent().remove()
            })

            //上传数据
            if (key) {
                $.confirm({
                    title: '正在上传中',
                    text: '',
                    onOK: function () {
                        jiazai()
                        $.ajax({
                            url: obj.data_url,
                            type: 'post',
                            data: obj,
                            dataType: 'json',
                            success: function (msg) {
                                jiazaiHid()
                                var opid = $("#openid").val();
                                if (msg == '1') {
                                    window.alert("提交成功");
                                    window.location.replace(base_path + '/login/PageJump?PageName=index&openid=' + opid);
                                } else if (msg == '2') {
                                    window.alert("提交失败");
                                } else {
                                    window.alert("网络波动请重新进行录入");
                                }
                            }
                        })
                    }
                });
            }

        });


    }

    //ajax获取数据
    function myajax(obj,fn){
        console.log(obj.url)
        jiazai()
        $.ajax({
            url: obj.url,
            type: 'post',
            data: obj.data,
            dataType: 'json',
            success: function (msg) {
                jiazaiHid()
                fn(msg)
            }
        })

    }









