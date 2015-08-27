package com.ezb.jdb.service.impl;

import com.ezb.jdb.common.ResponseData;
import com.ezb.jdb.common.ResponseState;
import com.ezb.jdb.dao.InvitateCodeDao;
import com.ezb.jdb.dao.UserDao;
import com.ezb.jdb.model.InvitateCode;
import com.ezb.jdb.model.User;
import com.ezb.jdb.service.IInvitateCodeService;
import com.ezb.jdb.tool.ShareCodeUtil;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Date;

/**
 * author : liufeng
 * create time: 2015/8/6 11:16.
 */
@Service
public class InvitateCodeServiceImpl implements IInvitateCodeService {

    @Resource
    private InvitateCodeDao invitateCodeDao;

    @Resource
    private UserDao userDao;

    /**
     * 生成邀请码
     *
     * @param username
     */
    public String generateCode(String username) {

        User user = userDao.queryByPhone(username);
        if (null == user) {
            return ResponseState.INVALID_PHONE;
        }
        InvitateCode invitateCode = new InvitateCode();
        invitateCode.setCode(ShareCodeUtil.shareCode(username));
        invitateCode.setCreateTime(new Date());
        invitateCode.setCreateUser(user);
        invitateCodeDao.add(invitateCode);
        return ResponseData.getResData(invitateCode.getCode());
    }
}
