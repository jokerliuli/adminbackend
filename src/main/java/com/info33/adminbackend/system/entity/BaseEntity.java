package com.info33.adminbackend.system.entity;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import javax.validation.constraints.NotNull;


/**
 * 所有对象的基类，所有对象必须继承
 *
 * Created by Joker
 * Date： 2018/12/11
 * Time: 9:49
 * @author alex
 */
@Data
public class BaseEntity implements java.io.Serializable {

	private static final long serialVersionUID = 1L;

	@NotNull
	private Long id;
	@ApiModelProperty(value="备注")
	private String remarks;
	@ApiModelProperty(value="排序")
	private Integer sort;
	@ApiModelProperty(value="数据版本")
	private Integer version;
	@ApiModelProperty(value="数据状态 1可用，0不可用")
	private Integer status;
	@ApiModelProperty(value="创建人ID")
	private Long createBy;
	@ApiModelProperty(value="创建时间")
	private String createDate;
	@ApiModelProperty(value="修改人ID")
	private Long updateBy;
	@ApiModelProperty(value="修改时间")
	private String updateDate;
	@ApiModelProperty(value="uuid")
	private String uuid;
}
