package com.tony.utils;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class UtilCommon {
	public static String getSerial(Date date, int index) {
		long msel = date.getTime();
		SimpleDateFormat fm = new SimpleDateFormat("MMddyyyyHHmmssSS");
		msel += index;
		date.setTime(msel);
		String serials = fm.format(date);
		return serials;
	}
	// 检查是否是图片格式
	public static boolean checkIsImage(String imgStr) {
		boolean flag = false;
		if (imgStr != null) {
			if (imgStr.equalsIgnoreCase(".gif")
					|| imgStr.equalsIgnoreCase(".jpg")
					|| imgStr.equalsIgnoreCase(".jpeg")
					|| imgStr.equalsIgnoreCase(".png")) {
				flag = true;
			}
		}
		return flag;
	}
    public static Date StrToDate(String str) throws ParseException{
    	return new SimpleDateFormat("MM/dd/yyyy").parse(str);
    }
}