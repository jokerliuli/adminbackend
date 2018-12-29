package com.info33.adminbackend.system.service;

import com.info33.adminbackend.system.entity.SysMenu;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;

/**
 * <p>
 * 系统菜单表 服务类
 * </p>
 *
 * @author alex
 * @since 2018-12-11
 */
public interface ISysMenuService extends IService<SysMenu> {
    /**
     * 根据roleId获得所有菜单权限
     * @param roleId
     * @return List<SysMenu>
     */
    List<SysMenu> getAllMenuByRoleId(Long roleId);
}
