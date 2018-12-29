package com.info33.adminbackend.system.enums;

/**
 * @author JokerLiu
 * @create 2018-12-29 10:42
 * @desc 常用状态
 **/
public enum CommonStatus {
    /**
     * 状态：禁用
     */
    PROHIBIT(0, "禁用"),
    /**
     * 状态：启用
     */
    ENABLE(1, "启用"),

    /**
     * 倒序
     */
    DESC(0,"Desc"),
    /**
     * 升序
     */
    ASC(0,"Asc");
    private int code;
    private String msg;

    public int getCode() {
        return code;
    }
    public void setCode(int code) {
        this.code = code;
    }
    public String getMsg() {
        return msg;
    }
    public void setMsg(String msg) {
        this.msg = msg;
    }
    CommonStatus(int code, String msg) {
        this.code = code;
        this.msg = msg;
    }
}
