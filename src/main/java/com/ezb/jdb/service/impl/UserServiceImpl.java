package com.ezb.jdb.service.impl;

import com.ezb.jdb.common.PageResult;
import com.ezb.jdb.common.ResponseState;
import com.ezb.jdb.dao.InvitateCodeDao;
import com.ezb.jdb.dao.UserDao;
import com.ezb.jdb.dao.VerifyCodeDao;
import com.ezb.jdb.model.Alumnus;
import com.ezb.jdb.model.User;
import com.ezb.jdb.service.IUserService;
import com.ezb.jdb.tool.JdbBeanUtils;
import com.ezb.jdb.tool.JdbFileUtils;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.Date;

/**
 * author : liufeng
 * create time: 2015/8/4 15:44.
 */
@Service
public class UserServiceImpl implements IUserService {

    @Resource
    private UserDao userDao;

    @Value("${uploadWarPath}")
    private String uploadWarPath;

    @Resource
    private VerifyCodeDao verifyCodeDao;

    @Resource
    private InvitateCodeDao invitateCodeDao;

    public String register(User user, String invitateCode, String verifyCode) {
        if (invitateCodeDao.qcByPhoneAndCode(invitateCode) >= 1) {
            if (verifyCodeDao.qcByPhoneAndCode(user.getUsername(), verifyCode) >= 1) {
                if (isValid(user.getUsername())) {
                    return ResponseState.REGED_PHONE;
                }
                Alumnus alumnus = new Alumnus();
                alumnus.setPhone(user.getUsername());
                alumnus.setUser(user);
                user.setAlumnus(alumnus);
                user.setState(1);
                user.setCreateTime(new Date());
                userDao.add(user);
                invitateCodeDao.deleteByCode(user.getUsername(), invitateCode);
                return ResponseState.SUCCESS;
            } else {
                return ResponseState.VERIFYCODE_ERR;
            }
        } else {
            return ResponseState.INVITATE_ERR;
        }
    }

    public boolean login(User user) {
        if (!StringUtils.isEmpty(user.getUsername())) {
            if (!StringUtils.isEmpty(user.getPassword())) {
                return userDao.login(user) != null;
            }
        }
        return false;
    }


    /**
     * 上传头像
     *
     * @param request
     * @param phone
     * @return
     */
    public String uploadHeadPic(HttpServletRequest request, String phone) {

        User user = userDao.queryByPhone(phone);
        if (null == user) {
            return ResponseState.INVALID_PHONE;
        }

        String rpath = JdbFileUtils.uploadFile(request, uploadWarPath);
        if (StringUtils.equals(rpath, ResponseState.PIC_SAVE_ERR)) {
            return ResponseState.PIC_SAVE_ERR_JSON;
        }
        user.getAlumnus().setHeadPicPath(uploadWarPath + rpath);
        userDao.update(user);
        return ResponseState.SUCCESS;
    }

    /**
     * 信息完善
     *
     * @param alumnus
     * @param phone
     * @return
     */
    public String perfInfo(Alumnus alumnus, String phone) {

        User user = userDao.queryByPhone(phone);
        if (null == user) {
            return ResponseState.INVALID_PHONE;
        }
        Alumnus rAlumnus = user.getAlumnus();
        JdbBeanUtils.copyProperties(alumnus, rAlumnus);
        userDao.update(user);
        return ResponseState.SUCCESS;
    }

    public boolean isValid(String phone) {
        return userDao.qcByPhone(phone) >= 1;
    }

    public User queryUserByPhone(String phone) {
        return userDao.queryByPhone(phone);
    }

    public void update(User user) {
        userDao.update(user);
    }

    public PageResult<User> queryUnFriendUser(PageResult<User> pageResult, String phone, Alumnus alumnus, String orderby) {
        return userDao.queryUnFriendUser(pageResult, phone, alumnus, orderby);
    }

    public String resetPwd(String phone, String password, String verifyCode) {
        if (isValid(phone)) {
            if (verifyCodeDao.qcByPhoneAndCode(phone, verifyCode) >= 1) {
                User user = queryUserByPhone(phone);
                user.setPassword(password);
                update(user);
                return ResponseState.SUCCESS;
            } else {
                return ResponseState.VERIFYCODE_ERR;
            }
        } else {
            return ResponseState.INVALID_PHONE;
        }
    }

    public String resetPhone(String phone, String newPhone, String verifyCode) {
        if (verifyCodeDao.qcByPhoneAndCode(newPhone, verifyCode) >= 1) {
            User user = queryUserByPhone(phone);
            if (null != user) {
                user.setUsername(newPhone);
                user.getAlumnus().setPhone(newPhone);
                userDao.update(user);
                return ResponseState.SUCCESS;
            } else {
                return ResponseState.INVALID_PHONE;
            }
        } else {
            return ResponseState.VERIFYCODE_ERR;
        }
    }

    public PageResult<User> queryNearUsers(PageResult<User> pageResult, String phone) {
        return userDao.queryNearUsers(pageResult, phone);
    }

    public PageResult<User> queryAllUser(PageResult<User> pageResult, String phone, Alumnus alumnus, String orderby) {
        return userDao.queryAllUser(pageResult, phone, alumnus, orderby);
    }

    public PageResult<User> query(PageResult<User> pageResult, String username, String state, Alumnus alumnus, String startTime, String endTime) {
        return userDao.query(pageResult, username, state, alumnus, startTime, endTime);
    }

    public String state(String id) {
        User user = userDao.get(User.class, id);
        if (null == user) {
            return ResponseState.INVALID_ID;
        }
        if (1 == user.getState()) {
            user.setState(0);
        } else {
            user.setState(1);
        }
        userDao.update(user);
        return ResponseState.SUCCESS;
    }
}
