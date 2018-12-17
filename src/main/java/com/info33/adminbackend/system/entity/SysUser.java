package com.info33.adminbackend.system.entity;

import java.time.LocalDateTime;
import com.info33.adminbackend.system.entity.BaseEntity;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

/**
 * <p>
 * 系统用户表
 * </p>
 *
 * @author alex
 * @since 2018-12-11
 */
@Data
@EqualsAndHashCode(callSuper = true)
@Accessors(chain = true)
public class SysUser extends BaseEntity {

    private static final long serialVersionUID = 1L;

    /**
     * 用户类型（USER普通用户，ADMIN管理员） 
     */
    private String userType;

    /**
     * 登录名
     */
    private String loginName;

    /**
     * 真实姓名
     */
    private String trueName;

    /**
     * 密码
     */
    private String password;

    /**
     * 盐值
     */
    private String salt;

    /**
     * 性别（10男，20女）
     */
    private Integer sex;

    /**
     * 生日
     */
    private LocalDateTime brithday;

    /**
     * 身份证号码
     */
    private String idCard;

    /**
     * 电子邮箱
     */
    private String email;

    /**
     * 手机号
     */
    private String mobile;

    /**
     * 固定电话
     */
    private String phone;

    /**
     * 头像
     */
    private String headImg;

    /**
     * 注册日期
     */
    private LocalDateTime registerDate;

    /**
     * 上次登录时间
     */
    private LocalDateTime lastLoginTime;



}
