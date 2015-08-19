package com.ezb.jdb.service.impl;

import com.ezb.jdb.common.PageResult;
import com.ezb.jdb.common.ResponseState;
import com.ezb.jdb.dao.ActivityDao;
import com.ezb.jdb.dao.UserDao;
import com.ezb.jdb.model.Activity;
import com.ezb.jdb.model.User;
import com.ezb.jdb.service.IActivityService;
import com.ezb.jdb.service.IMailService;
import com.ezb.jdb.tool.JdbFileUtils;
import com.ezb.jdb.view.ActivityView;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * 活动
 * author : liufeng
 * create time:2015/8/10 10:04
 */
@Service
public class ActivityServiceImpl implements IActivityService {

    @Resource
    private ActivityDao activityDao;

    @Resource
    private UserDao userDao;

    @Value("${uploadWarPath}")
    private String uploadWarPath;

    @Resource
    private IMailService mailServiceImpl;

    public PageResult<Activity> queryActivity(PageResult<Activity> pageResult, String queryWords) {

        return activityDao.queryActivity(pageResult, queryWords);
    }

    public PageResult<Activity> queryMyActivity(PageResult<Activity> pageResult,
                                                String phone, String queryWords) {
        return activityDao.queryMyActivity(pageResult, phone, queryWords);
    }

    public PageResult<Activity> queryMyJoinActivity(PageResult<Activity> pageResult,
                                                    String phone, String queryWords) {
        return activityDao.queryMyJoinActivity(pageResult, phone, queryWords);
    }

    public String sendJoinUsers2Email(String id) {
        Activity activity = activityDao.get(Activity.class, id);
        if (activity == null) {
            return ResponseState.INVALID_ID;
        }
        String subject = "参加" + activity.getTitle() + "活动人员详细名单";
        String content = ActivityView.buildHtmlContent(activity.getJoinUsers());
        return mailServiceImpl.sendHtmlMail(activity.getContactEmail(), subject, content);
    }

    public Activity queryById(String id) {
        //更新pv
        int affectNum = activityDao.updatePv(id);
        if (affectNum == 1) {
            return activityDao.get(Activity.class, id);
        } else {
            return null;
        }
    }

    public String addActivity(HttpServletRequest request,Activity activity,
                              String phone) {
        User user = userDao.queryByPhone(phone);
        if (null != user) {

            String rpath = JdbFileUtils.uploadFile(request,uploadWarPath);
            if (StringUtils.equals(rpath, ResponseState.PIC_SAVE_ERR)) {
                return ResponseState.PIC_SAVE_ERR_JSON;
            }

            activity.setCreateUser(user);
            activity.setCreateTime(new Date());
            activity.setPicPath(rpath);
            activity.setPv(0);
            activityDao.add(activity);
            return ResponseState.SUCCESS;
        } else {
            return ResponseState.INVALID_PHONE;
        }
    }

    public String signup(String phone, String id) {
        User user = userDao.queryByPhone(phone);
        if (null != user) {
            Activity activity = activityDao.get(Activity.class, id);
            if (null != activity) {
                if (null == activity.getJoinUsers()) {
                    activity.setJoinUsers(new HashSet<User>());
                }
                activity.getJoinUsers().add(user);
                activityDao.update(activity);
                return ResponseState.SUCCESS;
            } else {
                return ResponseState.INVALID_ID;
            }
        } else {
            return ResponseState.INVALID_PHONE;
        }
    }

}
