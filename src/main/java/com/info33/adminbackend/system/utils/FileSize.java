package com.info33.adminbackend.system.utils;

/**
 * @author JokerLiu
 * @create 2018-12-29 10:36
 * @desc 文件大小转换工具类
 **/
public class FileSize {
    private static final int SIZE = 1024;
    public static String getPrintSize(long size) {
        //如果字节数少于1024，则直接以B为单位，否则先除于1024，后3位因太少无意义
        if (size < SIZE) {
            return size + "B";
        } else {
            size = size / SIZE;
        }
        //如果原字节数除于1024之后，少于1024，则可以直接以KB作为单位
        //因为还没有到达要使用另一个单位的时候
        //接下去以此类推
        if (size < SIZE) {
            return size + "KB";
        } else {
            size = size / SIZE;
        }
        if (size < SIZE) {
            //因为如果以MB为单位的话，要保留最后1位小数，
            //因此，把此数乘以100之后再取余
            size = size * 100;
            return size / 100 + "."
                    + size % 100 + "MB";
        } else {
            //否则如果要以GB为单位的，先除于1024再作同样的处理
            size = size * 100 / SIZE;
            return size / 100 + "."
                    + size % 100 + "GB";
        }
    }
}
