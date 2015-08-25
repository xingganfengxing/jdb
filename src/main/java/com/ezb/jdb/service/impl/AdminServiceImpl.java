package com.ezb.jdb.service.impl;

import com.ezb.jdb.common.Constants;
import com.ezb.jdb.common.PageResult;
import com.ezb.jdb.common.ResponseData;
import com.ezb.jdb.common.ResponseState;
import com.ezb.jdb.dao.AdminDao;
import com.ezb.jdb.model.Admin;
import com.ezb.jdb.service.IAdminService;
import com.ezb.jdb.tool.JdbBeanUtils;
import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.Date;

/**
 * 管理员
 * author : liufeng
 * create time:2015/8/21 14:08
 */
@Service
public class AdminServiceImpl implements IAdminService {

    @Resource
    private AdminDao adminDao;

    public boolean login(String username,String pass) {
        return adminDao.login(username,pass);
    }

    public String saveOrUpdate(Admin admin) {
        if(adminDao.checkUserName(admin)){
            return ResponseState.USERNAME_EXISIT;
        }
        if(StringUtils.isEmpty(admin.getId())){
            admin.setCreateTime(new Date());
            admin.setLevel(1);
            adminDao.add(admin);
        }else{
            Admin oldAdmin = adminDao.get(Admin.class,admin.getId());
            JdbBeanUtils.copyProperties(admin,oldAdmin);
            adminDao.update(oldAdmin);
        }
        return ResponseState.SUCCESS;
    }

    public String delete(String ids) {
        String[] idArr = StringUtils.splitByWholeSeparator(ids,",");
        for(String id : idArr){
            adminDao.deleteById(id);
        }
        return ResponseState.SUCCESS;
    }

    public String query(PageResult<Admin> pageResult, String username,
                        String realName, String startTime, String endTime) {
        pageResult = adminDao.query(pageResult,username,realName,startTime,endTime);
        return ResponseData.getResData(pageResult);
    }

    public Admin queryByNameAndPass(String username, String pass) {
        return adminDao.queryByNameAndPass(username, pass);
    }

    public String queryCurAdmin(HttpServletRequest request) {
        Object object = request.getSession().getAttribute(Constants.ADMINID);
        if(null == object){
            return ResponseState.SESSION_ERR;
        }
        String adminId = (String)object;
        return ResponseData.getResData(adminDao.get(Admin.class, adminId));
    }

    public String updatePass(HttpServletRequest request,String password) {
        Object object = request.getSession().getAttribute(Constants.ADMINID);
        if(null == object){
            return ResponseState.SESSION_ERR;
        }
        String adminId = (String)object;
        Admin admin = adminDao.get(Admin.class,adminId);
        admin.setPassword(password);
        adminDao.update(admin);
        return ResponseState.SUCCESS;
    }

    public String queryById(String id) {
        Admin admin = adminDao.get(Admin.class,id);
        if(null == admin){
            return ResponseState.INVALID_ID;
        }
        return ResponseData.getResData(admin);
    }
}
