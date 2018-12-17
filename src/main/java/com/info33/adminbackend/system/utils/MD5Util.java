package com.info33.adminbackend.system.utils;

import java.security.MessageDigest;

/**
 * Created on 2018/7/19
 *
 * @author
 */
public class MD5Util {

	public static String encrypt(String encryptStr) {
		MessageDigest md5;
		try {
			md5 = MessageDigest.getInstance("MD5");
			byte[] md5Bytes = md5.digest(encryptStr.getBytes());
			StringBuffer hexValue = new StringBuffer();
			for (int i = 0; i < md5Bytes.length; i++) {
				int val = ((int) md5Bytes[i]) & 0xff;
				if (val < 16)
					hexValue.append("0");
				hexValue.append(Integer.toHexString(val));
			}
			encryptStr = hexValue.toString();
		}
		catch (Exception e) {
			throw new RuntimeException(e);
		}
		return encryptStr;
	}

	public static String encrypt16(String encryptStr) {
		return encrypt(encryptStr).substring(8, 24);
	}

}
