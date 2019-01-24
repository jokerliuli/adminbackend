package com.info33.adminbackend.system.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.info33.adminbackend.system.entity.SysMenu;

import java.util.LinkedHashSet;
import java.util.List;

/**
 * <p>
 * 系统菜单表 Mapper 接口
 * </p>
 *
 * @author alex
 * @since 2018-12-11
 */
public interface SysMenuMapper extends BaseMapper<SysMenu> {
    /**
     * 根据roleID获取所有菜单权限
     * @param roleId
     * @return List<SysMenu>
     */
    List<SysMenu> getAllMenuByRoleId(Long roleId);
    /**
     * 根据roleID获取前端左侧菜单
     * @param roleId,id
     * @return List<SysMenu>
     */
    LinkedHashSet<SysMenu> getMenu(Long roleId);

}
