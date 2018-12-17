package com.info33.adminbackend.admin.controller;

import com.alibaba.fastjson.JSONObject;
import com.info33.adminbackend.system.enums.ResultStatusCode;
import com.info33.adminbackend.system.entity.Result;
import com.info33.adminbackend.system.entity.SysUser;
import com.info33.adminbackend.system.mapper.SysUserMapper;
import com.info33.adminbackend.system.service.ISysUserService;
import com.info33.adminbackend.system.utils.MD5Util;
import lombok.extern.slf4j.Slf4j;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.LockedAccountException;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;


/**
 * Created by Joker
 * Date： 2018/12/11
 * Time: 9:49
 */
@Slf4j
@RestController
public class LoginController {

    @Resource
    private SysUserMapper sysUserMapper;

    @GetMapping("test")
    public String test(){
        return "111";
    }

    @GetMapping("admin/test")
    public String admintest(){
        return "test";
    }
    @Resource
    private ISysUserService iSysUserService;

    @PostMapping("/login")
    public Result login(@RequestParam(name = "username") String username,
                        @RequestParam(name = "password") String password){
        try {
            log.info("username:"+username+","+"password:" +password);
            UsernamePasswordToken token = new UsernamePasswordToken(username, password);
            //登录不在该处处理，交由shiro处理
            Subject subject = SecurityUtils.getSubject();
            subject.login(token);

            if (subject.isAuthenticated()) {
                JSONObject json = new JSONObject();
                json.put("token", subject.getSession().getId());
                log.info("json:"+json);
                return new Result(ResultStatusCode.OK, json);
            }else{
                return new Result(ResultStatusCode.SHIRO_ERROR);
            }
        }catch (IncorrectCredentialsException | UnknownAccountException e){
            return new Result(ResultStatusCode.NOT_EXIST_USER_OR_ERROR_PWD);
        }catch (LockedAccountException e){
            return new Result(ResultStatusCode.USER_FROZEN);
        }catch (Exception e){
            return new Result(ResultStatusCode.SYSTEM_ERR);
        }
    }

    @GetMapping("admin/info")
    public Result getCurrentUserInfo(){
        Subject sub = SecurityUtils.getSubject();
        SysUser sysUser = (SysUser) sub.getPrincipal();
        JSONObject json = new JSONObject();
        json.put("avatar",sysUser.getHeadImg());
        json.put("name",sysUser.getTrueName());
        //角色写死
        json.put("roles","admin");
        log.info("cuser/info/json:"+json);
        return new Result(ResultStatusCode.OK, json);
    }
    /**
     * 退出登录
     * @return
     */
    @PostMapping("admin/logout")
    public Result logout(){
        log.info("进入logout");
        SecurityUtils.getSubject().logout();
        return new Result(ResultStatusCode.OK);
    }

    @PostMapping("register")
    public Result register(String loginName, String pwd){
        SysUser user = new SysUser();
        user.setLoginName(loginName);
        user.setPassword(MD5Util.encrypt(pwd));
        iSysUserService.save(user);
        return new Result(ResultStatusCode.OK);
    }


}
