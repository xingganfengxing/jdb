package com.ezb.jdb.service;

import com.ezb.jdb.common.PageResult;
import com.ezb.jdb.model.Admin;

/**
 * 系统管理员
 * author : liufeng
 * create time:2015/8/21 14:06
 */
public interface IAdminService {

    boolean login(Admin admin);

    String saveOrUpdate(Admin admin);

    String delete(String ids);

    String query(PageResult<Admin> pageResult, String username, String realName, String startTime, String endTime);
}
