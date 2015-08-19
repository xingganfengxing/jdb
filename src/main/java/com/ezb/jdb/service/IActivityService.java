package com.ezb.jdb.service;

import com.ezb.jdb.common.PageResult;
import com.ezb.jdb.model.Activity;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import javax.servlet.http.HttpServletRequest;

/**
 * 活动
 * author : liufeng
 * create time:2015/8/10 10:02
 */
public interface IActivityService {

    PageResult<Activity> queryActivity(PageResult<Activity> pageResult, String queryWords);

    Activity queryById(String id);

    String addActivity(HttpServletRequest request,Activity activity, String phone);

    String signup(String phone, String id);

    /**
     * 查询我创建的活动
     * @param pageResult
     * @param phone 当前用户的手机号
     * @param queryWords
     * @return
     */
    PageResult<Activity> queryMyActivity(PageResult<Activity> pageResult, String phone, String queryWords);

    /**
     * 查询我报名的活动
     * @param pageResult
     * @param phone 当前用户的手机号
     * @param queryWords
     * @return
     */
    PageResult<Activity> queryMyJoinActivity(PageResult<Activity> pageResult, String phone, String queryWords);

    /**
     * 导出名单至email
     * @param id
     * @return
     */
    String sendJoinUsers2Email(String id);
}
