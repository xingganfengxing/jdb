package com.ezb.jdb.service;

import com.ezb.jdb.common.PageResult;
import com.ezb.jdb.model.Alumnus;
import com.ezb.jdb.model.User;

import javax.servlet.http.HttpServletRequest;

/**
 * author : liufeng
 * create time: 2015/8/4 15:42.
 */
public interface IUserService {

    String register(User user,String invitateCode, String verifyCode);

    boolean login(User user);

    String uploadHeadPic(HttpServletRequest request, String phone);

    String perfInfo(Alumnus alumnus, String phone);

    boolean isValid(String phone);

    User queryUserByPhone(String phone);

    void update(User user);

    PageResult<User> queryUnFriendUser(PageResult<User> pageResult, String phone, Alumnus alumnus, String orderby);

    String resetPwd(String phone, String password, String verifyCode);

    String resetPhone(String phone, String newPhone,String verifyCode);

    PageResult<User> queryNearUsers(PageResult<User> pageResult, String phone);

    PageResult<User> queryAllUser(PageResult<User> pageResult, String phone, Alumnus alumnus, String orderby);
}
