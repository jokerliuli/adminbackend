package com.info33.adminbackend.system.entity;

import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

/**
 * <p>
 * 系统图片管理
 * </p>
 *
 * @author alex
 * @since 2018-12-19
 */
@Data
@EqualsAndHashCode(callSuper = true)
@Accessors(chain = true)
public class SysPictureManage extends BaseEntity {

    private static final long serialVersionUID = 1L;

    /**
     * 图片名称
     */
    private String pictureName;

    /**
     * 图片大小
     */
    private String pictureSize;

    /**
     * 图片url
     */
    private String pictureUrl;

    /**
     * 图片key
     */
    private String pictureKey;

    /**
     * 图片尺寸长*宽
     */
    private String pictureDimension;
}
