package com.ezb.jdb.controller.pc.admin;

import com.ezb.jdb.common.ResponseData;
import com.ezb.jdb.model.Activity;
import com.ezb.jdb.service.IActivityService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;

/**
 * 活动管理
 * author : liufeng
 * create time:2015/8/25 17:39
 */
@Controller
public class MActivityController {

    @Resource
    private IActivityService activityServiceImpl;

    /**
     * 活动详细页
     *
     * @return
     */
    @RequestMapping(value = "pc/admin/activity/viewactivity")
    public
    @ResponseBody
    String viewActivity(String id) {
        Activity activity = activityServiceImpl.queryById(id);
        return ResponseData.getResData(activity);
    }
}
