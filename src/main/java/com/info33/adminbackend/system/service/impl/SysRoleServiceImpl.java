package com.info33.adminbackend.system.service.impl;

import com.info33.adminbackend.system.entity.SysRole;
import com.info33.adminbackend.system.mapper.SysRoleMapper;
import com.info33.adminbackend.system.service.ISysRoleService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * <p>
 * 系统角色表 服务实现类
 * </p>
 *
 * @author alex
 * @since 2018-12-11
 */
@Service
public class SysRoleServiceImpl extends ServiceImpl<SysRoleMapper, SysRole> implements ISysRoleService {

    @Resource
    private SysRoleMapper sysRoleMapper;

    @Override
    public List<SysRole> findByUserid(Long id) {
        return sysRoleMapper.findByUserId(id);
    }
}
