package com.ezb.jdb.service.impl;

import com.ezb.jdb.common.ResponseState;
import com.ezb.jdb.dao.ActivityDao;
import com.ezb.jdb.dao.AtvCmtDao;
import com.ezb.jdb.dao.UserDao;
import com.ezb.jdb.model.Activity;
import com.ezb.jdb.model.AtvCmt;
import com.ezb.jdb.model.User;
import com.ezb.jdb.service.IAtvCmtService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;

/**
 * 活动
 * author : liufeng
 * create time:2015/8/10 13:57
 */
@Service
public class AtvCmtServiceImpl implements IAtvCmtService {

    @Resource
    private AtvCmtDao atvCmtDao;

    @Resource
    private UserDao userDao;

    @Resource
    private ActivityDao activityDao;

    public List<AtvCmt> qAtvCmtByActivityId(String id) {
        return atvCmtDao.qAtvCmtByActivityId(id);
    }

    public String addAtvCmt(String phone, AtvCmt atvCmt) {

        User user = userDao.queryByPhone(phone);
        if (null != user) {
            Activity activity = activityDao.get(Activity.class, atvCmt.getActivity().getId());
            if (null != activity) {
                atvCmt.setActivity(activity);
                atvCmt.setLikeCount(0);
                atvCmt.setCommentUser(user);
                atvCmt.setCreateTime(new Date());
                atvCmtDao.add(atvCmt);
                return ResponseState.SUCCESS;
            } else {
                return ResponseState.INVALID_ID;
            }
        } else {
            return ResponseState.INVALID_PHONE;
        }
    }

    public String likeAtvCmt(String phone, String id) {
        User user = userDao.queryByPhone(phone);
        if (null != user) {
            if (1 == atvCmtDao.likeAtvCmt(id)) {
                return ResponseState.SUCCESS;
            } else {
                return ResponseState.LIKE_OPT_ERR;
            }
        } else {
            return ResponseState.INVALID_PHONE;
        }
    }
}