package com.info33.adminbackend.system.mapper;

import com.info33.adminbackend.system.entity.SysRole;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;

import java.util.List;

/**
 * <p>
 * 系统角色表 Mapper 接口
 * </p>
 *
 * @author alex
 * @since 2018-12-11
 */
public interface SysRoleMapper extends BaseMapper<SysRole> {

    public List<SysRole> findByUserId(Long id);

}
