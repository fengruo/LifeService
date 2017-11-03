/*固定标题栏*/
$(function() {
	// 获取顶部 top 的高度值
	var topHeight = $(".top_layer").height();

	// 监听浏览器的滚动事件
	$(window).scroll(function() {

		var docScrollTop = $(document).scrollTop();
		// console.log(docScrollTop);
		// 判断一下 docScrollTOp 和 topHeight两个大小
		// 文档被卷去的高度 大于或等于 top高度的时候
		// 让导航栏变成固定定位
		if (docScrollTop >= topHeight) {

			$(".nav").css({
				"position" : "fixed",
				"display" : "block",
				"width" : "1144px",
				"top" : 0,
				"border-bottom" : "1px #DDDDDD solid"
			});

			//$(".main").css("margin-top", $(".nav").height());

		} else {
			// 让固定导航栏变为默认状态 position: static
			$(".nav").css({
				"position" : "static",
				"width" : "100%",
				"display" : "none",
			});
			$(".main").css("margin-top", "5px");
		}
	});
});
