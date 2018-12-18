package com.info33.adminbackend.admin.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import com.info33.adminbackend.system.entity.BaseEntity;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

/**
 * <p>
 * 资讯表
 * </p>
 *
 * @author alex
 * @since 2018-12-12
 */
@Data
@EqualsAndHashCode(callSuper = true)
@Accessors(chain = true)
@TableName("admin_information")
public class Information extends BaseEntity {

    private static final long serialVersionUID = 1L;

    /**
     * 文章标题
     */
    private String title;

    /**
     * 简略标题
     */
    private String shortTitle;

    /**
     * 分类栏目：新闻动态(1)，产品方案(2)，成功案例(3) 
     */
    private Integer informationType;

    /**
     * 关键词
     */
    private String keyword;

    /**
     * 文章摘要
     */
    private String summary;

    /**
     * 文章作者
     */
    private String author;

    /**
     * 删除(0)草稿(1)发布(2)
     */
    private Integer publishStatus;

    /**
     * 缩略图
     */
    private String thumbnail;

    /**
     * 文章内容
     */
    private String content;

//    /**
//     * 排序
//     */
//    private Long sort;
//
//    /**
//     * 数据状态 1可用，0不可用
//     */
//    private Integer status;
//
//    /**
//     * 数据版本
//     */
//    private Integer version;
//
//    /**
//     * 创建人ID
//     */
//    private Long createBy;
//
//    /**
//     * 创建时间
//     */
//    private LocalDateTime createDate;
//
//    /**
//     * 修改人ID
//     */
//    private Long updateBy;
//
//    /**
//     * 修改时间
//     */
//    private LocalDateTime updateDate;
//
//    /**
//     * 备注
//     */
//    private String remarks;
//
//    private String uuid;


}
