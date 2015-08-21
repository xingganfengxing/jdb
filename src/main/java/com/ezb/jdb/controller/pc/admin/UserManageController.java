package com.ezb.jdb.controller.pc.admin;

import com.ezb.jdb.common.ResponseState;
import com.ezb.jdb.model.User;
import com.ezb.jdb.service.IUserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;

/**
 * 用户管理
 * author : liufeng
 * create time:2015/8/20 14:13
 */
@Controller
public class UserManageController {

    @Resource
    private IUserService userServiceImpl;

    @RequestMapping(value = "pc/admin/dologin")
    public String doLogin(User user) {
        if (userServiceImpl.login(user)) {
            return "pc/admin/index";
        }
        return ResponseState.LOGIN_ERR;
    }
}
