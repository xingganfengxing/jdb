package com.ezb.jdb.service.impl;

import com.ezb.jdb.dao.InvitateCodeDao;
import com.ezb.jdb.model.InvitateCode;
import com.ezb.jdb.service.IInvitateCodeService;
import com.ezb.jdb.tool.ShareCodeUtil;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import javax.transaction.Transactional;
import java.util.Date;

/**
 * author : liufeng
 * create time: 2015/8/6 11:16.
 */
@Service
public class InvitateCodeServiceImpl implements IInvitateCodeService {

    @Resource
    private InvitateCodeDao invitateCodeDao;

    /**
     * 生成邀请码
     * @param name
     */
    public String generateCode(String name) {
        InvitateCode invitateCode = new InvitateCode();
        invitateCode.setCode(ShareCodeUtil.shareCode(name));
        invitateCode.setCreateTime(new Date());
        invitateCodeDao.add(invitateCode);
        return invitateCode.getCode();
    }
}
