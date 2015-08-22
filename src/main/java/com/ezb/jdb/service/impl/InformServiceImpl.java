package com.ezb.jdb.service.impl;

import com.ezb.jdb.common.Constants;
import com.ezb.jdb.common.NavType;
import com.ezb.jdb.common.ResponseState;
import com.ezb.jdb.dao.UserDao;
import com.ezb.jdb.dao.base.InformDao;
import com.ezb.jdb.model.Inform;
import com.ezb.jdb.model.User;
import com.ezb.jdb.service.IInformService;
import org.apache.commons.lang.StringUtils;
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
            if (null == inform || null == inform.getAssoId()) {
                return ResponseState.INFORM_NULL;
            }

            if (StringUtils.equals(inform.getType(), NavType.CIRCLE.toString())) {
                inform.setViewurl(Constants.VIEWURL_CIRCLE + "?id=" + inform.getAssoId());
            }

            if (StringUtils.equals(inform.getType(), NavType.NEWS.toString())) {
                inform.setViewurl(Constants.VIEWURL_NEWS + "?id=" + inform.getAssoId());
            }

            if (StringUtils.equals(inform.getType(), NavType.ACTIVITY.toString())) {
                inform.setViewurl(Constants.VIEWURL_ACTIVITY + "?id=" + inform.getAssoId());
            }

            inform.setCreateUser(user);
            inform.setCreateTime(new Date());
            informDao.add(inform);

            return ResponseState.SUCCESS;
        }
    }
}
