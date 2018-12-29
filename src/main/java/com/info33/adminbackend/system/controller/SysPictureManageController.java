package com.info33.adminbackend.system.controller;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.google.common.base.CaseFormat;
import com.info33.adminbackend.system.entity.Result;
import com.info33.adminbackend.system.entity.SysPictureManage;
import com.info33.adminbackend.system.enums.CommonStatus;
import com.info33.adminbackend.system.enums.ResultStatusCode;
import com.info33.adminbackend.system.service.ISysPictureManageService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;

/**
 * <p>
 * 系统图片管理 前端控制器
 * </p>
 *
 * @author alex
 * @since 2018-12-19
 */
@Slf4j
@RestController
@RequestMapping("/admin/pictureManage")
public class SysPictureManageController {

    @Resource
    private ISysPictureManageService iSysPictureManageService;


    @PostMapping("remove")
    public Result remove(@RequestBody SysPictureManage sysPictureManage){
        sysPictureManage.setStatus(0);
        return new Result(ResultStatusCode.OK,iSysPictureManageService.updateById(sysPictureManage));
    }



    @PostMapping("update")
    public Result update(@RequestBody SysPictureManage sysPictureManage){
        log.info(sysPictureManage.getCreateDate());
        sysPictureManage.setUpdateDate(null);
        return new Result(ResultStatusCode.OK,iSysPictureManageService.updateById(sysPictureManage));
    }

    @GetMapping("getOne")
    public Result getOne(@RequestParam(name = "id") Long id){
        return new Result(ResultStatusCode.OK,iSysPictureManageService.getById(id));
    }

    @PostMapping("page")
    public Result page(@RequestParam(name = "page") int page,
                       @RequestParam(name = "limit") int limit,
                       @RequestParam(name = "status",required = false) Integer  status,
                       @RequestParam(name = "pictureName",required = false) String pictureName,
                       @RequestParam(name = "prop",required = false,defaultValue = "id") String prop,
                       @RequestParam(name = "order",required = false,defaultValue = "Desc") String order){

        IPage<SysPictureManage> pcitureIPage = new Page<>();
        pcitureIPage.setCurrent(page);
        pcitureIPage.setSize(limit);

        QueryWrapper<SysPictureManage> queryWrapper = new QueryWrapper<>();
        prop = CaseFormat.LOWER_CAMEL.to(CaseFormat.LOWER_UNDERSCORE, prop);

        if (CommonStatus.DESC.getMsg().equals(order)){
            queryWrapper.orderByDesc(prop);
        }else{
            queryWrapper.orderByAsc(prop);
        }

        if (status != null){
            queryWrapper.eq("status", status);
        }
        if(pictureName != null){
            queryWrapper.like("picture_name",pictureName);
        }
        return new Result(ResultStatusCode.OK,iSysPictureManageService.page(pcitureIPage,queryWrapper));
    }
}

