package com.ezb.jdb.controller.pc.admin;

import com.ezb.jdb.common.PageResult;
import com.ezb.jdb.common.ResponseState;
import com.ezb.jdb.model.Admin;
import com.ezb.jdb.service.IAdminService;
import com.ezb.jdb.service.IUserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;

/**
 * 管理员管理
 * author : liufeng
 * create time:2015/8/20 14:13
 */
@Controller
public class AdminController {

    @Resource
    private IAdminService adminServiceImpl;

    @RequestMapping(value = "pc/admin/admin/dologin")
    public String doLogin(Admin admin) {

        if (adminServiceImpl.login(admin)) {
            return "pc/admin/index";
        }
        return ResponseState.LOGIN_ERR;
    }

    /**
     * 添加或更新系统管理员
     *
     * @param admin
     * @return
     */
    @RequestMapping(value = "pc/admin/admin/saveorupdate")
    public String saveOrUpdate(Admin admin) {
        return adminServiceImpl.saveOrUpdate(admin);
    }

    /**
     * 删除
     *
     * @param ids
     * @return
     */
    @RequestMapping(value = "pc/admin/admin/delete")
    public String delete(String ids) {
        return adminServiceImpl.delete(ids);
    }

    /**
     * 查询
     *
     * @param pageResult 分页信息
     * @param username   账号
     * @param realName   姓名
     * @param startTime  注册日期 (开始)
     * @param endTime    注册日志 (结束)
     * @return
     */
    @RequestMapping(value = "pc/admin/admin/query")
    public String query(PageResult<Admin> pageResult,
                        String username, String realName,
                        String startTime, String endTime) {
        return adminServiceImpl.query(pageResult,username,realName,startTime,endTime);
    }
}
