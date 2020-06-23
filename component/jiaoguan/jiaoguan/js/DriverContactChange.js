	//ajax获取数据。
	// 	myajax({url:'url',data:'data'},function (item) {
	// 		console.log(item)
	// 	})

	listObj({
		//想要隐藏的
		Hid: ['.style1', '.style2', '.style3', '.style4', '.style5'],
		//日期选择器
		date:['#date'],
		//下拉列表
		select:[
			{id:'#bhlx',items:[
				{
					title: "遗失补证",
					value: "f353d2870d3049f3a7e44e5c2654df7c",
				},{
					title: "损坏换证",
					value: "f353d2870d3049f3a7e44e5c2654df7c",
				},{
					title: "其他换证",
					value: "f353d2870d3049f3a7e44e5c2654df7c",
				}
				],url:'url',data:[]},

			{id:'#yjsf',items:[{
					title: "山东",
					value: "11dd26f4ac1640198fc3bb77afcf89e9",
				}
				],url:'url',data:[]},
				{id:'#yjcs',items:[{
					title: "青岛",
					value: "11dd26f4ac1640198fc3bb77afcf89e9",
				},
					{
						title: "黄岛",
						value: "f353d2870d3049f3a7e44e5c2654df7c",
					}
				],url:'url',data:[]},
				{id:'#yjdq',items:[{
					title: "市南",
					value: "11dd26f4ac1640198fc3bb77afcf89e9",
				},
					{
						title: "市北",
						value: "f353d2870d3049f3a7e44e5c2654df7c",
					}
				],url:'url',data:[]},
				{id:'#cllx',items:[{
					title: "普通小型车",
					value: "11dd26f4ac1640198fc3bb77afcf89e9",
				},
					{
						title: "大型车辆",
						value: "f353d2870d3049f3a7e44e5c2654df7c",
					},
					{
						title: "摩托车",
						value: "6b72b16dc12343599c6e481a5a478730",
					},
					{
						title: "驾校教练车",
						value: "0017d499ca754eba8e2ecd6db6653b01",
					},
					{
						title: "大型集装箱货车",
						value: "176761c600fd43898e35334e48d8dcea",
					}
				],url:'url',data:[]},
			
		],

        
		//上传图片
		img_show: [
			['.img_i_base1', '.imgshow_base1', '.js_file1', '.one'],
			['.img_i_base2', '.imgshow_base2', '.js_file2', '.two'],
			['.img_i_base3', '.imgshow_base3', '.js_file3', '.three'],
/*			['.img_i_base4', '.imgshow_base4', '.js_file4', '.four'],
			['.img_i_base5', '.imgshow_base5', '.js_file5', '.five'],
			['.img_i_base6', '.imgshow_base6', '.js_file6', '.six'],
			['.img_i_base7', '.imgshow_base7', '.js_file7', '.seven'],
			['.img_i_base8', '.imgshow_base8', '.js_file8', '.eight'],*/
		],
		//上传图片的处理
		img_str: [
			['arr_file1', '.one', 'onefile', 'f4e05d3d86fb49af9202dc7798414d07'],
			['arr_file2', '.two', 'twofile', '48fb29abf5374017a1650fedb110ded2'],
			['arr_file3', '.three', 'threefile', '5d9d384694004966aef5aa54a6a3ba0e'],
/*			['arr_file4', '.four', 'fourfile', 'dd52e45697d94069a6e54c46d84b0c17'],
			['arr_file5', '.five', 'fivefile', '873403bf9e5e4f4f8fe6205faa83404a'],
			['arr_file6', '.six', 'sixfile', '0da29d0c45514243839b21701c2d543d'],
			['arr_file7', '.seven', 'sevenfile', 'dd059eb9738c41c59bb209e34d9b9163'],
			['arr_file8', '.eight', 'eightfile', '2ead8df7362e4ef2942b56399a693009'],*/
		],
		//数据下拉框的处理
		upload:[{name:'lqfs',id:'#lqfs'},{name:'bhlx',id:'#bhlx'},{name:'lspz',id:'#lspz'},{name:'yjsf',id:'#yjsf'},
		    {name:'yjcs',id:'#yjcs'},{name:'yjdq',id:'#yjdq'},{name:'cllx',id:'#cllx'}],
		//上传数据url
		data_url:'dasds/sadsa'
	})