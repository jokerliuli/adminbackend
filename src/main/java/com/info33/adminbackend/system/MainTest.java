package com.info33.adminbackend.system;

import java.util.HashSet;
import java.util.Set;

/**
 * @author JokerLiu
 * @create 2018-12-29 10:36
 * @desc 测试用main函数
 **/
public class MainTest {
    public static void main(String[] args) {
        Set<String> set = new HashSet<>();
        String a = new String("sdsdsd");
        String b = new String("sdsdsd");
        set.add(a);
        set.add(b);
        System.out.println(set);
        System.out.println(a == b);

    }
}
