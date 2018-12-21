package com.info33.adminbackend.admin.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RequestMapping("/common")
@RestController
public class CommonController {

    /**
     * 未授权跳转方法
     * @return
     */
//    @GetMapping("/unauth")
//    public Result unauth(){
//        SecurityUtils.getSubject().logout();
//        return new Result(ResultStatusCode.UNAUTHO_ERROR);
//    }

    /**
     * 被踢出后跳转方法
     * @return
     */
//    @GetMapping("/kickout")
//    public Result kickout(){
//        return new Result(ResultStatusCode.INVALID_TOKEN);
//    }

}
