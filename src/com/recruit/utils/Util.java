package com.recruit.utils;

import java.util.Arrays;
import java.util.Map;
import java.util.UUID;

public class Util {

	public static String getUUID(){
		return UUID.randomUUID().toString().replace("-", "");
		
	}
	
	public static String arrayToUrl(String[] arr){
		String str = Arrays.toString(arr);
		str = str.substring(1, str.length()-1);
		return str;
	}

	public static String RandomFileName(String fileName) {
		String ext = fileName.substring(fileName.lastIndexOf("."));
		String fname = getUUID()+ext;
		return fname;
	}
	public static String priceToString(int price){
		String s = price+"";
		if(s.length()>2){
			return s.substring(0,s.length()-2)+"."+s.substring(s.length()-2);
		}else if(s.length()==2){
			return "0."+s;
		}else{
			return "0.0"+s;
		}
	}
	
	//用来输出所有的请求域
	public static void showParam(Map<String,String[]> map){
		
		System.out.println(map);
		for(String key : map.keySet()){
			for(String value : map.get(key)){
				System.out.println(key+":"+value);
			}
		}
	}
	
}
