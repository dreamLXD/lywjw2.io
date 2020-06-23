$(function () {

    //下拉选择样式
    $("#sex").select({
        title: "选择性别",
        items: [{
            title: "男",
            value: 1
        },
            {
                title: "女",
                value: 2
            }
        ]
    });
    $("#site").select({
        title: "选择出生地点",
        items: [{
            title: "山东",
            value: 1
        },
            {
                title: "上海",
                value: 2
            },
            {
                title: "天津",
                value: 3
            },
            {
                title: "北京",
                value: 4
            },
            {
                title: "河南",
                value: 5
            }
        ]
    });
    //日期初始化
    $('#date1').calendar();

    //自定义单选
    $('.box_footer span').on('click', function () {
        console.log($(this))
        $(this).siblings().removeClass('moren')
        $(this).siblings().removeClass('blue')
        $(this).removeClass('moren')
        $(this).addClass('blue')
        $(this).siblings().addClass('moren')
    })

    // file文件注释
    $('.imgwarn ').on('click',function () {
        $('.imgwarn span').eq(1).addClass('dong')
    })


})
