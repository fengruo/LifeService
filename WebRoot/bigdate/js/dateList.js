var currentDate=null;
function getDateList(type,ii){
	var date=new Date();	
	var year="",month="",nowdate="";
	
	if(type==0){
		date.setDate(date.getDate()+ii);
		currentDate=date;		
		nowdate=date.getDate();
	}else if(type==1){			
		var stm=currentDate.getMonth();
		var enm=date.getMonth();
		if(currentDate.getFullYear() > date.getFullYear()){
			stm=stm+12;
		}
		if(stm-enm > 2){
			return;
		}else{
			currentDate.setMonth(currentDate.getMonth() + 1,1);
		}
	}else if(type==2){
		if(currentDate>date){
			currentDate.setMonth(currentDate.getMonth() - 1,1);
		}else{
			return;
		}
	}
	year=currentDate.getFullYear();
	month=currentDate.getMonth();
	if(date.getFullYear()==year && date.getMonth()==month){
		nowdate=date.getDate();
	} 
	$("#clickDate").text(year+"年"+(month+1)+"月");
	getCurrentDate(currentDate,nowdate);
	monseClick();
}
function getCurrentDate(date,nowdate){
	clearDateTd();
	 date.setDate(1);
	 var oneWeek=date.getDay();
	 var table="";
	 var d=0;var vl="";
	$("#dateTbody tr").each(function(i){			
			if(i==0){				
				for(var z=oneWeek;z<7;z++){
					d++;
					if(d>=nowdate){
						vl="<div class='afterNow'>"+d+"</div>";
					}else{
						vl=d;
					}
					$(this).find("td").eq(z).html(vl);					
				}
			}else{
				for(var z=0;z<7;z++){	
					d++;
					if(d>=nowdate){
						vl="<div class='afterNow'>"+d+"</div>";
					}else{
						vl=d;
					}
					var monthNum=get_last_date (date.getFullYear(), date.getMonth()+1);
					if(d> monthNum){
						return;
					}else{
						$(this).find("td").eq(z).html(vl);
					}
				}
			}
	});
}

function get_last_date (year, month) {
    return new Date(year, month, 0).getDate();
}
function clearDateTd(){
	$("#dateTbody tr td").each(function(i){
		$(this).text("");
	});
}

function mousebind(){
	$("#dateTbody tr td").bind('mouseover', function(){  //鼠标经过
		$(this).css("background-color","#FFD700").css("color","#fff");		
	}).bind('mouseout',  function(){  //鼠标移开
		$(this).css("background-color","#fff").css("color","#d5d5d5");
	});
}
function monseClick(){
	$(".afterNow").bind("click",function(){
			var ret="";
			var day=$(this).text();
			if(day.length>2){
				day=$(this).find("etpeo").text();
			}
			var clickdate=$("#clickDate").text().replace("年","").replace("月","") ;
			var year=clickdate.substring(0,4);
			var month=clickdate.substring(4,clickdate.length);
			if(Number(month)<10){
				month="0"+month;
			}
			if(Number(day)<10){
				day="0"+day;
			}
			ret=year+"-"+month+"-"+day;
			$(".afterNow").removeClass('borderRed');
			$(this).addClass('borderRed');
			zoutdate=ret;   //这里是全传值	
	});
}
function commitFindByDate(zdate){	
	$("#h_two").val($("#homecity_name").val());
	$("#h_three").val($("#cityid3").val());
	$("#h_four").val($("#cityid4").val());
	$("#h_five").val($("#homecity_name2").val());
	$("#h_six").val(zdate);
	if(webuser==""){
		B=ui.box("请您先登陆",html,"false",true,function(a,b){
			webuser=a;
		},[500,160]);
		morenLogin();
		setTimeout(function(){
			if(webuser!=""){
				$("#form8").submit();
			}
		},1000); 
		
	}else{
		$("#form8").submit();
	}	
}
//绑定控件
