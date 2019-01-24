package com.info33.adminbackend.system.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.info33.adminbackend.system.entity.SysMenu;

import java.util.LinkedHashSet;
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
     * 根据roleId获得所有权限
     *
     * @param roleId
     * @return List<SysMenu>
     */
    List<SysMenu> getAllMenuByRoleId(Long roleId);

    /**
     * 根据roleID只获取前端左侧菜单(去重)
     *
     * @param roleId
     * @return Set<SysMenu>
     */
    LinkedHashSet<SysMenu> getMenu(Long roleId);
}
