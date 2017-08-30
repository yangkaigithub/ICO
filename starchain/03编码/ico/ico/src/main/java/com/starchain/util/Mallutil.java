package com.starchain.util;

import java.text.SimpleDateFormat;
import java.util.Date;

public class Mallutil {

    //获取指定位数的随机字符串(包含小写字母、大写字母、数字,0<length)
    public static String getRandomString(int length) {
        //随机字符串的随机字符库
        String KeyString = "abcdefghijklmnopqrstuvwxyz0123456789";
        StringBuffer sb = new StringBuffer();
        int len = KeyString.length();
        for (int i = 0; i < length; i++) {
            sb.append(KeyString.charAt((int) Math.round(Math.random() * (len - 1))));
        }
        return sb.toString();
    }

    //获取当前日期
    public static String getNowDate() {
        return new SimpleDateFormat("yyyyMMdd").format(new Date());

    }

    //获取当前时间
    public static String getNowTime() {
        return new SimpleDateFormat("HHmmssSSS").format(new Date());

    }



}
