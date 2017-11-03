<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>

    <script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath }/js/common.js"></script>
    <style type="text/css">
        .ztbdfb_div{
            width:800px;
            height: 530px;
        }
        .ztbdfb_div .left_title{
        	text-align:right;
        	width:70px;
        }
         .pageString{
        	font-size: 16px;
        	text-align: right;
        	cursor: pointer;
        	margin-top: 7px;
        	margin-bottom: 5px;
        }
        .pageString span{
        	margin-left: 3px;
        	margin-right: 3px;
        }
         .pageString a{
        	margin-left: 3px;
        	margin-right: 3px;
        	text-decoration:none;
        }
         .pageString a:HOVER{
        	margin-left: 3px;
        	margin-right: 3px;
        	color:orange;
        	text-decoration:none;
        }
        
        .headTitle{
        	height: 10px;
        }
       	table tr{
      	 	font-size: 14px;
        	height: 30px;
        }
        table,tr,td{
        	text-align:center;
        	border-bottom: 1px #BFB4B4 dashed;
        	cursor: pointer;
        	
        }
        table tr td:nth-child(even) {  
      		text-align: right;  
    	}  
	    table tr td:nth-child(odd) { 
	       text-align: left; 
	       
	    } 
        tr:HOVER{
        	color:orange;
        }
        .main_center_ztbd_info{
        	border-bottom: 1px #BFB4B4 solid;
        }
    </style>
<div class="container ztbdfb_div">
    <div class="col-xs-12 main_center_ztbd" id="main_center_ztbd_list">
		
	</div>
	</div>
	</div>
	<script type="text/javascript">
	$(document).ready(function(){
		putPageString("1","16"," # # ","500px#300px;","","select zid,CONCAT('● ',left(ztitle,27)),left(zfbdate,10) from tbztbd where zfbstate=1","main_center_ztbd_list","","1");
	});
	function thistrclick(obj){
		var zid=$(obj).attr("id");
		window.location.href="${pageContext.request.contextPath }/report_toreportPage.tony?report.zid="+zid;
	}
	</script>