package com.ezb.jdb.controller.pc.admin;

import com.ezb.jdb.common.NavType;
import com.ezb.jdb.common.PageResult;
import com.ezb.jdb.common.ResponseData;
import com.ezb.jdb.common.ResponseState;
import com.ezb.jdb.model.*;
import com.ezb.jdb.service.IActivityService;
import com.ezb.jdb.service.ICircleService;
import com.ezb.jdb.service.IFocusService;
import com.ezb.jdb.service.INewsService;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import javax.annotation.Resource;

/**
 * 焦点图设置相关
 * author : liufeng
 * create time:2015/8/20 10:12
 */
@Controller
@Slf4j
public class FocusController {

    @Resource
    private IFocusService focusServiceImpl;

    @Resource
    private INewsService newsServiceImpl;

    @Resource
    private IActivityService activityServiceImpl;

    @Resource
    private ICircleService circleServiceImpl;

    /**
     * 资讯、活动
     *
     * @return
     */
    @RequestMapping(value = "pc/admin/focus/newsactivity", method = RequestMethod.POST)
    public
    @ResponseBody
    String newsActivity(PageResult<Focus> pageResult) {
        pageResult = focusServiceImpl.getTopFocus(pageResult);
        return ResponseData.getResData(pageResult);
    }

    /**
     * 圈子
     *
     * @return
     */
    @RequestMapping(value = "pc/admin/focus/circle", method = RequestMethod.POST)
    public
    @ResponseBody
    String circle(PageResult<Focus> pageResult) {
        pageResult = focusServiceImpl.getCircleFocus(pageResult);
        return ResponseData.getResData(pageResult);
    }

    /**
     * 焦点数据绑定
     *
     * @param id   对应id
     * @param type 类型
     * @return
     */
    @RequestMapping(value = "pc/admin/focus/databind", method = RequestMethod.POST)
    public
    @ResponseBody
    String dataBind(String id, String type) {

        if (StringUtils.equals(NavType.ACTIVITY.toString(), type)) {
            Activity activity = activityServiceImpl.queryById(id);
            return ResponseData.getResData(activity);
        }

        if (StringUtils.equals(NavType.NEWS.toString(), type)) {
            News news = newsServiceImpl.queryNewsById(id);
            return ResponseData.getResData(news);
        }

        if (StringUtils.equals(NavType.CIRCLE.toString(), type)) {
            Circle circle = circleServiceImpl.queryById(id);
            return ResponseData.getResData(circle);
        }
        return ResponseState.FOCUSTYPE_ERR;
    }

    /**
     * 焦点数据保存
     * @return
     */
    @RequestMapping(value = "pc/admin/focus/datasave", method = RequestMethod.POST)
    public
    @ResponseBody
    String dataSave(FocusData focusData) {
        return focusServiceImpl.saveFocusDatas(focusData.getFocuses());
    }

}
