package com.ezb.jdb.controller;

import com.alibaba.fastjson.JSONObject;
import com.ezb.jdb.common.PageResult;
import com.ezb.jdb.common.ResponseData;
import com.ezb.jdb.common.ResponseState;
import com.ezb.jdb.model.Activity;
import com.ezb.jdb.model.AtvCmt;
import com.ezb.jdb.service.IActivityService;
import com.ezb.jdb.service.IAtvCmtService;
import com.ezb.jdb.service.IUserService;
import com.ezb.jdb.view.ActivityView;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.ServletRequestDataBinder;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/**
 * 活动
 * author : liufeng
 * create time:2015/8/10 9:46
 */
@Controller
public class ActivityController {

    @Resource
    private IActivityService activityServiceImpl;

    @Resource
    private IAtvCmtService atvCmtServiceImpl;

    @Resource
    private IUserService userServiceImpl;

    /**
     * 页面提交的日期格式str注入Date类型
     *
     * @param request
     * @param binder
     */
    @InitBinder
    protected void init(HttpServletRequest request, ServletRequestDataBinder binder) {
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        dateFormat.setLenient(false);
        binder.registerCustomEditor(Date.class, new CustomDateEditor(
                dateFormat, false));
    }

    /**
     * 活动分页列表
     *
     * @param pageResult
     * @param queryWords 查询关键字
     * @return
     */
    @RequestMapping(value = "activity/queryactivity", method = RequestMethod.POST)
    public
    @ResponseBody
    String queryActivity(PageResult<Activity> pageResult, String queryWords) {
        List<Activity> list = activityServiceImpl.queryActivity(pageResult, queryWords).getResultList();
        return ActivityView.convert2Json(list);
    }

    /**
     * 我发起的活动列表
     *
     * @param pageResult
     * @param phone      当前用户的手机号
     * @param queryWords 查询关键字
     * @return
     */
    @RequestMapping(value = "activity/querymyactivity", method = RequestMethod.POST)
    public
    @ResponseBody
    String queryMyActivity(PageResult<Activity> pageResult, String phone, String queryWords) {
        if (!userServiceImpl.isValid(phone)) {
            return ResponseState.INVALID_PHONE;
        }
        List<Activity> list = activityServiceImpl.queryMyActivity(pageResult, phone, queryWords).getResultList();
        return ActivityView.convert2Json(list);
    }

    /**
     * 我报名的活动列表
     *
     * @param pageResult
     * @param phone      当前用户的手机号
     * @param queryWords 查询关键字
     * @return
     */
    @RequestMapping(value = "activity/querymyjoinactivity", method = RequestMethod.POST)
    public
    @ResponseBody
    String queryMyJoinActivity(PageResult<Activity> pageResult, String phone, String queryWords) {
        if (!userServiceImpl.isValid(phone)) {
            return ResponseState.INVALID_PHONE;
        }
        List<Activity> list = activityServiceImpl.queryMyJoinActivity(pageResult, phone, queryWords).getResultList();
        return ActivityView.convert2Json(list);
    }

    /**
     * 活动详细页
     *
     * @return
     */
    @RequestMapping(value = "activity/viewactivity", method = RequestMethod.POST)
    public
    @ResponseBody
    String viewActivity(String id) {
        Activity activity = activityServiceImpl.queryById(id);
        List<AtvCmt> comments = atvCmtServiceImpl.qAtvCmtByActivityId(id);
        JSONObject jsonObject = new JSONObject();
        jsonObject.put("activity", activity);
        jsonObject.put("comments", comments);
        return ResponseData.getResData(jsonObject);
    }

    /**
     * 资讯创建页
     *
     * @return
     */
    @RequestMapping(value = "activity/createactivity", method = RequestMethod.POST)
    public
    @ResponseBody
    String createActivity(HttpServletRequest request, Activity activity, String phone) {
        return activityServiceImpl.addActivity(request, activity, phone);
    }

    /**
     * 创建评论
     *
     * @return
     */
    @RequestMapping(value = "activity/createatvcmt", method = RequestMethod.POST)
    public
    @ResponseBody
    String createAtvCmt(String phone, AtvCmt atvCmt) {
        return atvCmtServiceImpl.addAtvCmt(phone, atvCmt);
    }

    /**
     * 评论点赞
     *
     * @return
     */
    @RequestMapping(value = "activity/likeatvcmt", method = RequestMethod.POST)
    public
    @ResponseBody
    String likeAtvCmt(String phone, String id) {
        return atvCmtServiceImpl.likeAtvCmt(phone, id);
    }

    /**
     * 活动报名
     *
     * @return
     */
    @RequestMapping(value = "activity/signup", method = RequestMethod.POST)
    public
    @ResponseBody
    String signup(String phone, String id) {
        return activityServiceImpl.signup(phone, id);
    }

    /**
     * 参加活动的详细名单
     *
     * @return
     */
    @RequestMapping(value = "activity/queryjoinusers", method = RequestMethod.POST)
    public
    @ResponseBody
    String queryJoinUsers(String id) {
        Activity activity = activityServiceImpl.queryById(id);
        if (null == activity) {
            return ResponseState.INVALID_ID;
        }
        return ResponseData.getResData(activity.getJoinUsers());
    }

    /**
     * 导出名单至Email
     *
     * @return
     */
    @RequestMapping(value = "activity/sendjoinusers2email", method = RequestMethod.POST)
    public
    @ResponseBody
    String sendJoinUsers2Email(String id) {
        return activityServiceImpl.sendJoinUsers2Email(id);
    }
}
