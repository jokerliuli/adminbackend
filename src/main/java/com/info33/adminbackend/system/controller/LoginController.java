package com.info33.adminbackend.system.controller;

import com.alibaba.fastjson.JSONObject;
import com.info33.adminbackend.system.entity.Result;
import com.info33.adminbackend.system.entity.SysMenu;
import com.info33.adminbackend.system.entity.SysRole;
import com.info33.adminbackend.system.entity.SysUser;
import com.info33.adminbackend.system.enums.ResultStatusCode;
import com.info33.adminbackend.system.service.ISysMenuService;
import com.info33.adminbackend.system.service.ISysRoleService;
import com.info33.adminbackend.system.service.ISysUserService;
import com.info33.adminbackend.system.utils.MD5Util;
import com.info33.adminbackend.system.vo.MetaVO;
import com.info33.adminbackend.system.vo.SysMenuVO;
import lombok.extern.slf4j.Slf4j;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.LockedAccountException;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.BeanUtils;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.*;


/**
 * @author JokerLiu
 * @create 2018-12-29 10:36
 * @desc 登陆controller
 **/
@Slf4j
@RestController
public class LoginController {


    @Resource
    private ISysRoleService iSysRoleService;
    @Resource
    private ISysMenuService iSysMenuService;

    @GetMapping("test")
    public String test() {
        return "test";
    }

    @GetMapping("admin/test")
    public String admintest() {
        return "test";
    }

    @Resource
    private ISysUserService iSysUserService;

    @PostMapping("/login")
    public Result login(@RequestParam(name = "username") String username,
                        @RequestParam(name = "password") String password) {
        try {
            log.info("username:" + username + "," + "password:" + password);
            UsernamePasswordToken token = new UsernamePasswordToken(username, password);
            //登录不在该处处理，交由shiro处理
            Subject subject = SecurityUtils.getSubject();
            subject.login(token);

            if (subject.isAuthenticated()) {
                JSONObject json = new JSONObject();
                json.put("token", subject.getSession().getId());
                log.info("json:" + json);
                return new Result(ResultStatusCode.OK, json);
            } else {
                return new Result(ResultStatusCode.SHIRO_ERROR);
            }
        } catch (IncorrectCredentialsException | UnknownAccountException e) {
            return new Result(ResultStatusCode.NOT_EXIST_USER_OR_ERROR_PWD);
        } catch (LockedAccountException e) {
            return new Result(ResultStatusCode.USER_FROZEN);
        } catch (Exception e) {
            return new Result(ResultStatusCode.SYSTEM_ERR);
        }
    }

    @GetMapping("admin/info")
    public Result getCurrentUserInfo() {
        Subject sub = SecurityUtils.getSubject();
        SysUser sysUser = (SysUser) sub.getPrincipal();
        JSONObject json = new JSONObject();
        json.put("avatar", sysUser.getHeadImg());
        json.put("name", sysUser.getTrueName());
        List<SysRole> roleList = iSysRoleService.findByUserid(sysUser.getId());
        json.put("roles", roleList);
        log.info("cuser/info/json:" + json);
        return new Result(ResultStatusCode.OK, json);
    }

//    @GetMapping("admin/menu")
//    public Result getMenu() {
//        Subject subject = SecurityUtils.getSubject();
//        SysMenuVO allmenus = (SysMenuVO) subject.getPrincipal();
//        log.info(String.valueOf(allmenus));
//        return new Result(ResultStatusCode.OK, iSysMenuService.getMenu(Long.valueOf("1"), Long.valueOf("0")));
//    }

    @PostMapping("admin/menuByRoles")
    public Result getMenu(@RequestBody List<SysRole> roleList) {
        //建立左侧菜单树
        List<SysMenuVO> menuVOTree = new ArrayList<>();
        //获取到所有菜单entity的set
        LinkedHashSet<SysMenu> menuSet = new LinkedHashSet<>();
        for (SysRole role : roleList) {
            menuSet.addAll(iSysMenuService.getMenu(role.getId()));
        }
        //获取到所有菜单VO的list
        List<SysMenuVO> menuVOList = new ArrayList<>();
        for (SysMenu menu : menuSet) {
            SysMenuVO menuVO = new SysMenuVO();
            BeanUtils.copyProperties(menu, menuVO);
            MetaVO meta = new MetaVO();
            if (menu.getMetaTitle() != null) {
                meta.setTitle(menu.getMetaTitle());
            }
            if (menu.getMetaIcon() != null) {
                meta.setIcon(menu.getMetaIcon());
            }
            if (menu.getMetaNocache() != null) {
                meta.setNoCache(menu.getMetaNocache());
            }
            if (menu.getMetaBreadcrumb() != null) {
                meta.setBreadcrumb(menu.getMetaBreadcrumb());
            }
            menuVO.setMeta(meta);
            menuVOList.add(menuVO);
        }
        //遍历volist
        for (SysMenuVO menuVO : menuVOList) {
            if (menuVO.getParentId() == 0) {
                //递归
                menuVOTree.add(createTreeChildren(menuVO, menuVOList));
            }
        }
        return new Result(ResultStatusCode.OK, menuVOTree);
    }

    private SysMenuVO createTreeChildren(SysMenuVO menuVO, List<SysMenuVO> menuVOList) {

        for (SysMenuVO menuVO2 : menuVOList) {
            if (menuVO2.getParentId() == menuVO.getId()) {
                if (menuVO.getChildren() == null) {
                    menuVO.setChildren(new ArrayList<>());
                }
                menuVO.getChildren().add(createTreeChildren(menuVO2, menuVOList));
            }
        }
        return menuVO;
    }

    /**
     * 退出登录
     *
     * @return
     */
    @PostMapping("admin/logout")
    public Result logout() {
        log.info("进入logout");
        SecurityUtils.getSubject().logout();
        return new Result(ResultStatusCode.OK);
    }

    @PostMapping("register")
    public Result register(String loginName, String pwd) {
        SysUser user = new SysUser();
        user.setLoginName(loginName);
        user.setPassword(MD5Util.encrypt(pwd));
        iSysUserService.save(user);
        return new Result(ResultStatusCode.OK);
    }


}
