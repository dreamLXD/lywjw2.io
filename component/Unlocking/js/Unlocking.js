$(function () {
    $("#typeOne").select({
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
            },
            {
                title: "iPhone 6S",
                value: "005",
            },
            {
                title: "iPhone 6P",
                value: "006",
            },
            {
                title: "iPhone 6SP",
                value: "007",
            },
            {
                title: "iPhone SE",
                value: "008",
            },
            {
                title: "iPhone 7",
                value: "009"
            }
        ]
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
})
