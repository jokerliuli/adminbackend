package com.info33.adminbackend.system;

/**
 * @author JokerLiu
 * @create 2018-12-29 10:36
 * @desc 测试用main函数
 **/
public class MainTest {
    public static void main(String[] args) {
        System.out.println(MainTest.getPrintSize(5000));
    }

    public static String getPrintSize(long size){
        int temp = 0;
        if (size<1024){
            if (temp==0) {
                return String.valueOf(size + 'B');
            }
            if (temp==1) {
                return String.valueOf(size + 'B');
            }
            if (temp==2) {
                return String.valueOf(size + 'B');
            }
        }else {
            size = size / 1024;
            temp++;
        }
        return null;
    }
}
