package com.info33.adminbackend.system.service;

import com.info33.adminbackend.system.entity.SysRole;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;

/**
 * <p>
 * 系统角色表 服务类
 * </p>
 *
 * @author alex
 * @since 2018-12-11
 */
public interface ISysRoleService extends IService<SysRole> {

    List<SysRole>  findByUserid(Long id);

}
