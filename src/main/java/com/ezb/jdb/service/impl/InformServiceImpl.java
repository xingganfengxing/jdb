package com.ezb.jdb.service.impl;

import com.ezb.jdb.common.ResponseState;
import com.ezb.jdb.dao.UserDao;
import com.ezb.jdb.dao.base.InformDao;
import com.ezb.jdb.model.Inform;
import com.ezb.jdb.model.User;
import com.ezb.jdb.service.IInformService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Date;

/**
 * author : liufeng
 * create time:2015/8/13 14:29
 */
@Service
public class InformServiceImpl implements IInformService {

    @Resource
    private InformDao informDao;

    @Resource
    private UserDao userDao;

    public String addInform(String phone, Inform inform) {
        User user = userDao.queryByPhone(phone);

        if (null == user) {
            return ResponseState.INVALID_PHONE;
        } else {

            if(null == inform){
                return ResponseState.INFORM_NULL;
            }

            inform.setCreateUser(user);
            inform.setCreateTime(new Date());
            informDao.add(inform);
            return ResponseState.SUCCESS;
        }
    }
}
