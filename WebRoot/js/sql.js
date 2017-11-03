var sqlobj=["select zid,zname,zmoney,ztype,zboss,ztel,zaddress,zfanwei,ggunit from tbunit order by ztype desc,zdate desc",  //0  unitInfo.jsp
            "select zid,zdate,zscript,zip,zremark,zcode from tbnote where 1=1 order by zdate desc", //1  note.jsp
            "select zid,'<input type=checkbox name=cbox>',zname,zsex,zwork,zunit,zyfw,zjob,zlange,ztel,zmob from tbpeople where 1=2 order by zid desc",//2  findpeo.jsp
            "select '0', cnname,enname from tbdictionary group by cnname,enname",//3  dic.jsp
            "select A.zid,B.zpost,B.zjob,B.zname,A.zuser,A.powerid from tbuser A,tbuserinfo B where A.zid=B.userid and 1=1",//4  juese.jsp
            "SELECT zid,znum,zname,'<img class=''bt_img'' src=''"+imgEdit+"'' onclick=''edit_tr(this)'' alt=''编辑''>&nbsp;<img class=''bt_img'' src=''"+imgDel+"'' onclick=''del_tr(this)'' alt=''删除''>' FROM cabinet_room ORDER BY znum",   //5  wzsz.jsp
            "select zid,zname,zremark,'<img class=''bt_img'' src=''"+imgEdit+"'' onclick=''edit_file(this)'' alt=''编辑''>&nbsp;<img class=''bt_img'' src=''"+imgDel+"'' onclick=''del_file(this)'' alt=''删除''>' FROM cabinet_file where 1=2 ORDER BY zname ",  //6   wzsz.jsp  2
            "SELECT zid,'<input type=checkbox name=cbox>',ztype,zname,alonginfo,zno,zpost,linkpeo,linktel,zstate,zbar FROM cabinet_main where 1=1",  //7  dalr.jsp
            "SELECT B.zid,B.zname,B.zsex,B.zpost,B.zjob,B.linktel,B.card,A.zuser,B.zbz,B.ztype FROM tbuser A,tbuserinfo B WHERE A.zid=B.userid ",   //8 userinfo.jsp
            ""];
