     //file预览图

     $(function () {
         $('.js_file').on('change', function (e) {
             let fileobj = this.files[0];
             if (fileobj.size > 1024 * 1024 * 1.2) {
                 alert('aaaa')
             } else {
                 let then = $(this)
                 let reader = new FileReader();
                 reader.readAsDataURL(fileobj);
                 reader.onload = function (ev) {
                     then.parent().addClass('kong');
                     then.parent().children('p').html('')
                     then.parent().css({
                         'background-image': 'url(' + ev.target.result + ')',
                         'background-size': '100%',
                         "background-repeat": 'no-repeat',
                         'background-position': 'center'
                     })
                 }
             }

         })

     })
     //  $('.js_file').on('change', function (e) {
     //      let fileobj = this.files[0];                                            this.files文件 是指图片文件对象
     //      let then = $(this)
     //      let reader = new FileReader();                                         创建文件对象
     //      reader.readAsDataURL(fileobj);                                         传进去对象
     //      reader.onload = function (ev) {                                        输出对象base64
     //          console.log(then)
     //          then.parent().addClass('kong');
     //          then.parent().children('p').html('')
     //          then.parent().css({
     //              'background-image': 'url(' + ev.target.result + ')',
     //              'background-size': '100%',
     //              "background-repeat": 'no-repeat',
     //              'background-position': 'center'
     //          })
     //      }
     //  })