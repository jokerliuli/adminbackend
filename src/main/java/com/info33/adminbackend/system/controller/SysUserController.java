package com.info33.adminbackend.system.controller;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.google.common.base.CaseFormat;
import com.info33.adminbackend.system.entity.Result;
import com.info33.adminbackend.system.entity.SysUser;
import com.info33.adminbackend.system.enums.CommonStatus;
import com.info33.adminbackend.system.enums.ResultStatusCode;
import com.info33.adminbackend.system.service.ISysUserService;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;

/**
 * <p>
 * 系统用户表 前端控制器
 * </p>
 *
 * @author alex
 * @since 2018-12-11
 */
@RestController
@RequestMapping("/system/sys-user")
public class SysUserController {

    @Resource
    private ISysUserService iSysUserService;

    @PostMapping("page")
    public Result page(@RequestParam(name = "page") int page,
                       @RequestParam(name = "limit") int limit,
                       @RequestParam(name = "publishStatus",required = false) Integer  publishStatus,
                       @RequestParam(name = "informationType",required = false) Integer  informationType,
                       @RequestParam(name = "title",required = false) String title,
                       @RequestParam(name = "prop",required = false,defaultValue = "update_date") String prop,
                       @RequestParam(name = "order",required = false,defaultValue = "Desc") String order){
        IPage<SysUser> userIPage = new Page<>();
        userIPage.setCurrent(page);
        userIPage.setSize(limit);
        QueryWrapper<SysUser> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("status", 1);
        prop = CaseFormat.LOWER_CAMEL.to(CaseFormat.LOWER_UNDERSCORE, prop);
        if (CommonStatus.DESC.getMsg().equals(order)){
            queryWrapper.orderByDesc(prop);
        }else{
            queryWrapper.orderByAsc(prop);
        }
        if(informationType!=null){
            queryWrapper.eq("information_type",informationType);
        }
        if(title!=null){
            queryWrapper.like("title",title);
        }
        return new Result(ResultStatusCode.OK,iSysUserService.page(userIPage,queryWrapper));
    }
}
