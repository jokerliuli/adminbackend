package com.info33.adminbackend.admin.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import java.time.LocalDateTime;
import com.info33.adminbackend.system.entity.BaseEntity;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

/**
 * <p>
 * 留言表
 * </p>
 *
 * @author alex
 * @since 2018-12-11
 */
@Data
@EqualsAndHashCode(callSuper = true)
@Accessors(chain = true)
@TableName("admin_leavemes")
public class Leavemes extends BaseEntity {

    private static final long serialVersionUID = 1L;

    /**
     * 留言标题
     */
    private String title;

    /**
     * 留言内容
     */
    private String content;

    /**
     * 姓名
     */
    private String name;

    /**
     * 手机号
     */
    private String mobile;

    /**
     * 电子邮箱
     */
    private String email;

    /**
     * 地址
     */
    private String address;



}
