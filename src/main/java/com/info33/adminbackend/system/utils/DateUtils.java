package com.info33.adminbackend.system.utils;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
/**
 * @author JokerLiu
 * @create 2018-12-29 10:36
 * @desc 日期工具类
 **/
public class DateUtils {
	
	/**
	 * 根据固定的格式，将字符串转化为Date
	 * @param str
	 * @param ftm
	 * @return
	 */
	public static Date parseDate(String str, String ftm) {
		if (str == null){
			return null;
		}
		try {
			return new SimpleDateFormat(ftm).parse(str);
		} catch (ParseException e) {
			return null;
		}
		
	}

	/**
	 * 获取过去的天数
	 * @param date
	 * @return
	 */
	public static long pastDays(Date date) {
		long t = System.currentTimeMillis()-date.getTime();
		return t/(24*60*60*1000);
	}

	/**
	 * 获取过去的小时
	 * @param date
	 * @return
	 */
	public static long pastHour(Date date) {
		long t = System.currentTimeMillis()-date.getTime();
		return t/(60*60*1000);
	}
	
	/**
	 * 获取过去的分钟
	 * @param date
	 * @return
	 */
	public static long pastMinutes(Date date) {
		long t =System.currentTimeMillis()-date.getTime();
		return t/(60*1000);
	}
	
	/**
	 * 转换为时间（天,时:分:秒.毫秒）
	 * @param timeMillis
	 * @return
	 */
    public static String formatDateTime(long timeMillis){
		long day = timeMillis/(24*60*60*1000);
		long hour = (timeMillis/(60*60*1000)-day*24);
		long min = ((timeMillis/(60*1000))-day*24*60-hour*60);
		long s = (timeMillis/1000-day*24*60*60-hour*60*60-min*60);
		long sss = (timeMillis-day*24*60*60*1000-hour*60*60*1000-min*60*1000-s*1000);
		return (day>0?day+",":"")+hour+":"+min+":"+s+"."+sss;
    }
	
	/**
	 * 获取两个日期之间的天数，Date类型
	 * 
	 * @param before
	 * @param after
	 * @return
	 */
	public static double getDistanceOfTwoDate(Date before, Date after) {
		long beforeTime = before.getTime();
		long afterTime = after.getTime();
		return (afterTime - beforeTime) / (1000 * 60 * 60 * 24);
	}
	/**
	 * 获取两个日期之间的天数，字符串格式
	 * 
	 * @param before
	 * @param after
	 * @param fmt : 字符串的日期格式
	 * @return
	 */
	public static double getDistanceOfTwoDate(String before, String after, String fmt){
		Date beforeD = parseDate(before, fmt);
		Date afterD = parseDate(after, fmt);
		
		return getDistanceOfTwoDate(beforeD, afterD);
	}
	/**
	 * @Description: 获取两个日期之间的小时数
	 * @param before
	 * @param after
	 * @return
	 */
	public static double getDistHoursOfTwoDate(Date before, Date after){
		long beforeTime = before.getTime();
		long afterTime = after.getTime();
		return (afterTime - beforeTime) / (1000 * 60 * 60);
	}
	/**
	 * @Description: 获取两个时间相差的分钟数
	 * @param start
	 * @param end
	 * @return
	 */
	public static Integer diffMinute(Date start, Date end){
		return  (int)Math.ceil((double)(end.getTime() - start.getTime()) / (1000 * 60));
	}

	/**
	 * 通过毫秒时间戳获取小时数和分钟数
	 * @param time
	 * @return
	 */
	public static String getHourAndMinute(long time){
		int minute = (int)Math.ceil((double)(time) / (1000 * 60));
		int hours = (int) Math.floor((double)minute / 60);
		minute = minute % 60;
		StringBuilder sb = new StringBuilder();
		if (hours > 0){
			sb.append(hours).append("小时");
		}
		if (minute > 0){
			sb.append(minute).append("分");
		}
		return sb.toString();
	}

}
