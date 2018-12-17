package com.info33.adminbackend.system.config.shiro;

import org.apache.commons.lang3.StringUtils;
import org.apache.shiro.session.UnknownSessionException;
import org.apache.shiro.web.servlet.ShiroHttpServletRequest;
import org.apache.shiro.web.session.mgt.DefaultWebSessionManager;
import org.apache.shiro.web.util.WebUtils;

import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import java.io.Serializable;

/**
 * 修改获取token的方式sessionId
 */
public class ShiroSessionManager extends DefaultWebSessionManager {
    private static final String AUTHORIZATION = "Authorization";

    private static final String REFERENCED_SESSION_ID_SOURCE = "Stateless request";

    public ShiroSessionManager() {
    }

    @Override
    protected Serializable getSessionId(ServletRequest request, ServletResponse response) {
        //获取请求头，或者请求参数中的Token
        String id = StringUtils.isEmpty(WebUtils.toHttp(request).getHeader(AUTHORIZATION))
                ? request.getParameter(AUTHORIZATION) : WebUtils.toHttp(request).getHeader(AUTHORIZATION);
        // 如果请求头中有 Token 则其值为sessionId
        if (StringUtils.isNotEmpty(id)) {
            request.setAttribute(ShiroHttpServletRequest.REFERENCED_SESSION_ID_SOURCE, REFERENCED_SESSION_ID_SOURCE);
            request.setAttribute(ShiroHttpServletRequest.REFERENCED_SESSION_ID, id);
            request.setAttribute(ShiroHttpServletRequest.REFERENCED_SESSION_ID_IS_VALID, Boolean.TRUE);

            return id;
        } else {
            // 否则按默认规则从cookie取sessionId
            return super.getSessionId(request, response);
        }
    }
}
