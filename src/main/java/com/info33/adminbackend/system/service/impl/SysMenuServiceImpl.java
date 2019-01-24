package com.info33.adminbackend.system.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.info33.adminbackend.system.entity.SysMenu;
import com.info33.adminbackend.system.mapper.SysMenuMapper;
import com.info33.adminbackend.system.service.ISysMenuService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.LinkedHashSet;
import java.util.List;

/**
 * <p>
 * 系统菜单表 服务实现类
 * </p>
 *
 * @author alex
 * @since 2018-12-11
 */
@Service
public class SysMenuServiceImpl extends ServiceImpl<SysMenuMapper, SysMenu> implements ISysMenuService {

    @Resource
    private SysMenuMapper sysMenuMapper;

    @Override
    public List<SysMenu> getAllMenuByRoleId(Long roleId) {
        return sysMenuMapper.getAllMenuByRoleId(roleId);
    }

    @Override
    public LinkedHashSet<SysMenu> getMenu(Long roleId) {
        return sysMenuMapper.getMenu(roleId);
    }


}
