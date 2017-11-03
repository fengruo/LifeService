$(function (){
	$(function() { 
		var $this = $("#ztbd_today_hot"); 
		var scrollTimer; 
		$this.hover(function() { 
		clearInterval(scrollTimer); 
		}, function() { 
		scrollTimer = setInterval(function() { 
		scrollNews($this); 
		}, 1000); 
		}).trigger("mouseleave"); 

		function scrollNews(obj) { 
		var $self = obj.find("ul"); 
		var lineHeight = $self.find("li:first").height(); 
		$self.animate({ 
		"marginTop": -lineHeight + "px" 
		}, 1200, function() { 
		$self.css({ 
		marginTop: 0 
		}).find("li:first").appendTo($self); 
		}) 
		} 
		}) 
});
