$(function (){
	
	
});
function essp_goodsshow(obj){
	var container=$("#"+$(obj).attr("id")+"_xx");
	container.css("display","block");
    container.css("display");
    container.css("opacity","1");
}
function essp_goodshide(obj){
	var container=$("#"+$(obj).attr("id")+"_xx");
	container.css({
		        "transition": "opacity 1s",
		       "-webkit-transition": "opacity 1s",
		        "-moz-transition": "opacity 1s",
		        "-o-transition": "opacity 1s",
		        "-ms-transition": "opacity 1s",
		        "opacity": "0.1"
		        });
	container.css("display", "none");
}