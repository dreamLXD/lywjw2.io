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
//点击提交的file
$('footer button').on('click', function (e) {
    e.preventDefault();
    let arr = [];
    $('.weui_uploader_file').each(function (i, item) {
        let str = $(item).css('background-image').length - 4;
        arr.push($(item).css('background-image').substring(5, str))
        console.log(arr)
    })
})
//file注释
$('.imgwarn').on('click', function () {
    console.log('aaa')
    $('.imgshow').css('display', 'block')
})
$('.imgshow button').on('click', (e) => {
    e.preventDefault();
    $('.imgshow').css('display', 'none')
})

$('footer button').on('click',function (e) {
    e.preventDefault()
    window.location.href='../../tab/tab2/tab_list1.html'
})