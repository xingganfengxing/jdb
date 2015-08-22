package com.ezb.jdb.service.impl;

import com.ezb.jdb.common.Constants;
import com.ezb.jdb.common.NavType;
import com.ezb.jdb.common.PageResult;
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

    public PageResult<Inform> query(PageResult<Inform> pageResult,
                                    String realname, String startTime,
                                    String endTime, String reason, String state) {
        return informDao.query(pageResult, realname, startTime, endTime, reason, state);
    }

    public String del(String ids) {
        String[] idArrs = StringUtils.splitByWholeSeparator(ids, ",");
        for (String id : idArrs) {
            if (informDao.del(id) != 1) {
                return ResponseState.FAIL;
            }
        }
        return ResponseState.SUCCESS;
    }

    public String handle(String id) {
        if (informDao.handle(id) == 1) {
            return ResponseState.SUCCESS;
        }
        return ResponseState.FAIL;
    }
}
