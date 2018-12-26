package com.info33.adminbackend.admin.controller;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.google.common.base.CaseFormat;
import com.info33.adminbackend.admin.entity.Leavemes;
import com.info33.adminbackend.admin.service.ILeavemesService;
import com.info33.adminbackend.system.entity.Result;
import com.info33.adminbackend.system.enums.ResultStatusCode;
import lombok.extern.slf4j.Slf4j;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;

/**
 * <p>
 * 留言表 前端控制器
 * </p>
 *
 * @author alex
 * @since 2018-12-11
 */
@Slf4j
@RestController
@RequestMapping("/admin/leavemes")
public class LeavemesController {
    @Resource
    private ILeavemesService iLeavemesService;
    @RequiresPermissions("leavemes:add")
    @PostMapping("save")
    public Result save(@RequestBody Leavemes leavemes) {
        leavemes.setUpdateDate(null);
        return new Result(ResultStatusCode.OK,iLeavemesService.save(leavemes));
    }
    @RequiresPermissions("leavemes:del")
    @PostMapping("remove")
    public Result remove(@RequestBody Leavemes leavemes) {
        leavemes.setUpdateDate(null);
        leavemes.setStatus(0);
        return new Result(ResultStatusCode.OK,iLeavemesService.updateById(leavemes));
    }
    @RequiresPermissions("leavemes:edit")
    @PostMapping("update")
    public Result update(@RequestBody Leavemes leavemes) {
        leavemes.setUpdateDate(null);
        return new Result(ResultStatusCode.OK,iLeavemesService.updateById(leavemes));
    }
    @RequiresPermissions("leavemes:search")
    @PostMapping("page")
    public Result page(@RequestParam(name = "page") int page,
                                @RequestParam(name = "limit") int limit,
                                @RequestParam(name = "content", required = false) String content,
                                @RequestParam(name = "startTime", required = false) String startTime,
                                @RequestParam(name = "endTime", required = false) String endTime,
                                @RequestParam(name = "prop",required = false,defaultValue = "update_date") String prop,
                                @RequestParam(name = "order",required = false,defaultValue = "descending") String order) {
        IPage<Leavemes> leavemesIPage = new Page<>();
        leavemesIPage.setCurrent(page);
        leavemesIPage.setSize(limit);

        QueryWrapper<Leavemes> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("status", 1);
        prop = CaseFormat.LOWER_CAMEL.to(CaseFormat.LOWER_UNDERSCORE, prop);
        log.info(prop);
        if (order.equals("descending")){
            queryWrapper.orderByDesc(prop);
        }else{
            queryWrapper.orderByAsc(prop);
        }
        if (startTime!=null&&endTime!= null){
            log.info(startTime);
            log.info(endTime);
            queryWrapper.gt("create_date",startTime);
            queryWrapper.lt("create_date",endTime);
        }
        if (content != null) {
            queryWrapper.like("content", content);
        }
        return new Result(ResultStatusCode.OK,iLeavemesService.page(leavemesIPage, queryWrapper));
    }
}
