package com.info33.adminbackend.admin.controller;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.google.common.base.CaseFormat;
import com.info33.adminbackend.admin.entity.Information;
import com.info33.adminbackend.admin.service.IInformationService;
import com.info33.adminbackend.system.entity.Result;
import com.info33.adminbackend.system.entity.SysPictureManage;
import com.info33.adminbackend.system.enums.ResultStatusCode;
import com.info33.adminbackend.system.service.ISysPictureManageService;
import lombok.extern.slf4j.Slf4j;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;

/**
 * <p>
 * 资讯表 前端控制器
 * </p>
 *
 * @author alex
 * @since 2018-12-12
 */
@Slf4j
@RestController
@RequestMapping("/admin/information")
public class InformationController {

    @Resource
    private IInformationService iInfomationService;

    @Resource
    private ISysPictureManageService iSysPictureManageService;

    @RequiresPermissions("information:add")
    @PostMapping("save")
    public Result save(@RequestBody Information information){
        log.info(information.toString());
        QueryWrapper<SysPictureManage> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("picture_url",information.getThumbnail());
        SysPictureManage sysPictureManage = iSysPictureManageService.getOne(queryWrapper);
        if(sysPictureManage != null){
            sysPictureManage.setStatus(1);
            iSysPictureManageService.updateById(sysPictureManage);
        }
        information.setUpdateDate(null);
        return new Result(ResultStatusCode.OK,iInfomationService.save(information));
    }

    @RequiresPermissions("information:del")
    @PostMapping("remove")
    public Result remove(@RequestBody Information information){
        information.setStatus(0);
        return new Result(ResultStatusCode.OK,iInfomationService.updateById(information));
    }
    @RequiresPermissions("information:edit")
    @PostMapping("update")
    public Result update(@RequestBody Information information){
        log.info(information.getCreateDate());
        QueryWrapper<SysPictureManage> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("picture_url",information.getThumbnail());
        SysPictureManage sysPictureManage = iSysPictureManageService.getOne(queryWrapper);
        if(sysPictureManage != null){
            sysPictureManage.setStatus(1);
            iSysPictureManageService.updateById(sysPictureManage);
        }
        information.setUpdateDate(null);
        return new Result(ResultStatusCode.OK,iInfomationService.updateById(information));
    }
    @RequiresPermissions("information:search")
    @GetMapping("getOne")
    public Result getOne(@RequestParam(name = "id") Long id){
        return new Result(ResultStatusCode.OK,iInfomationService.getById(id));
    }
    @RequiresPermissions("information:search")
    @PostMapping("page")
    public Result page(@RequestParam(name = "page") int page,
                                   @RequestParam(name = "limit") int limit,
                                   @RequestParam(name = "publishStatus",required = false) Integer  publishStatus,
                                   @RequestParam(name = "informationType",required = false) Integer  informationType,
                                   @RequestParam(name = "title",required = false) String title,
                                   @RequestParam(name = "prop",required = false,defaultValue = "update_date") String prop,
                                   @RequestParam(name = "order",required = false,defaultValue = "descending") String order){
        IPage<Information> informationIPage = new Page<>();
        informationIPage.setCurrent(page);
        informationIPage.setSize(limit);
        QueryWrapper<Information> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("status", 1);
        prop = CaseFormat.LOWER_CAMEL.to(CaseFormat.LOWER_UNDERSCORE, prop);
        if (order.equals("descending")){
            queryWrapper.orderByDesc(prop);
        }else{
            queryWrapper.orderByAsc(prop);
        }
        if(publishStatus!=null){
            queryWrapper.eq("publish_status",publishStatus);
        }
        if(informationType!=null){
            queryWrapper.eq("information_type",informationType);
        }
        if(title!=null){
            queryWrapper.like("title",title);
        }
        return new Result(ResultStatusCode.OK,iInfomationService.page(informationIPage,queryWrapper));
    }
}
