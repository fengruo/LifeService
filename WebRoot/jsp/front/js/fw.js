$(function(){
	/*左侧服务分类栏信息*/
	var leftServiceJson=[
	             		{
	             			"Btitle":"家政服务01",
	             			"Btitle1":[
	             			           {"Stitle":"保姆","title":"这是提示信息"},{"Stitle":"保姆","title":"这是提示信息"},{"Stitle":"保姆","title":"这是提示信息"},{"Stitle":"保姆2222222","title":"这是提示信息"},
	             			           {"Stitle":"保姆","title":"这是提示信息"},{"Stitle":"保姆","title":"这是提示信息"},{"Stitle":"保姆222222","title":"这是提示信息"},{"Stitle":"保姆","title":"这是提示信息"},
	             			           {"Stitle":"保姆","title":"这是提示信息"},{"Stitle":"保姆","title":"这是提示信息"},{"Stitle":"保姆","title":"这是提示信息"},{"Stitle":"保姆","title":"这是提示信息"}
	             			           ]
	             		},
	             		{
	             			"Btitle":"家政服务02",
	             			"Btitle1":[
	             			           {"Stitle":"保姆","title":"这是提示信息"},{"Stitle":"保姆","title":"这是提示信息"},{"Stitle":"保姆","title":"这是提示信息"},{"Stitle":"保姆","title":"这是提示信息"},
	             			           {"Stitle":"保姆","title":"这是提示信息"},{"Stitle":"保姆","title":"这是提示信息"},{"Stitle":"保姆","title":"这是提示信息"},{"Stitle":"保姆","title":"这是提示信息"},
	             			           {"Stitle":"保姆","title":"这是提示信息"},{"Stitle":"保姆","title":"这是提示信息"},{"Stitle":"保姆","title":"这是提示信息"},{"Stitle":"保姆","title":"这是提示信息"}
	             			           ]
	             		},
	             		{
	             			"Btitle":"家政服务03",
	             			"Btitle1":[
	             			           {"Stitle":"保姆","title":"这是提示信息"},{"Stitle":"保姆","title":"这是提示信息"},{"Stitle":"保姆","title":"这是提示信息"},{"Stitle":"保姆","title":"这是提示信息"},
	             			           {"Stitle":"保姆","title":"这是提示信息"},{"Stitle":"保姆","title":"这是提示信息"},{"Stitle":"保姆","title":"这是提示信息"},{"Stitle":"保姆","title":"这是提示信息"},
	             			           {"Stitle":"保姆","title":"这是提示信息"},{"Stitle":"保姆","title":"这是提示信息"},{"Stitle":"保姆","title":"这是提示信息"},{"Stitle":"保姆","title":"这是提示信息"}
	             			           ]
	             		},
	             		{
	             			"Btitle":"家政服务04",
	             			"Btitle1":[
	             			           	{"Stitle":"保姆","title":"这是提示信息"},{"Stitle":"保姆","title":"这是提示信息"},{"Stitle":"保姆","title":"这是提示信息"},{"Stitle":"保姆","title":"这是提示信息"},
	             			           {"Stitle":"保姆","title":"这是提示信息"},{"Stitle":"保姆","title":"这是提示信息"},{"Stitle":"保姆","title":"这是提示信息"},{"Stitle":"保姆","title":"这是提示信息"},
	             			           	{"Stitle":"保姆","title":"这是提示信息"},{"Stitle":"保姆","title":"这是提示信息"},{"Stitle":"保姆","title":"这是提示信息"},{"Stitle":"保姆","title":"这是提示信息"},
	             			           ]
	             		}
	             	];
					
	             	for(var i=0;i<leftServiceJson.length;i++){
	             		var leftServiceJsonHtml='<div class="col-xs-3" style="margin: 3px;width: 264px;">'+
	    				'<h4>&nbsp;&nbsp;&nbsp;&nbsp;'+leftServiceJson[i].Btitle+'</h4>';
	             		var leftServiceJsonHtmls="";
	             		for(var j=0;j<leftServiceJson[i].Btitle1.length;j++){
	             			leftServiceJsonHtmls=leftServiceJsonHtmls+'<span class="col-xs-4 text-center"  style="padding: 0px;"><a href="javascript:void(0)">'+leftServiceJson[i].Btitle1[j].Stitle+'</a></span>';
	             		}
	             		leftServiceJsonHtml=leftServiceJsonHtml+leftServiceJsonHtmls+'</div>';
	             		$("#main_navmain").append(leftServiceJsonHtml);
	             	}
});