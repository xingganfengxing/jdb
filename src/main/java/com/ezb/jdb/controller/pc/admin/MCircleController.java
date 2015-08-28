package com.ezb.jdb.controller.pc.admin;

import com.ezb.jdb.common.PageResult;
import com.ezb.jdb.common.ResponseData;
import com.ezb.jdb.model.Circle;
import com.ezb.jdb.service.ICircleService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

/**
 * 圈子管理
 * author : liufeng
 * create time:2015/8/22 14:08
 */
@Controller
public class MCircleController {

    @Resource
    private ICircleService circleServiceImpl;

    /**
     * 圈子分页列表
     *
     * @param pageResult
     * @param id         圈子id
     * @param title      圈子名称
     * @param realName   创建人
     * @param startTime  开始时间
     * @param endTime    结束时间
     * @return
     */
    @RequestMapping(value = "pc/admin/circle/query")
    public
    @ResponseBody
    String query(PageResult<Circle> pageResult,
                 String id,
                 String title,
                 String realName,
                 String state,
                 String startTime,
                 String endTime) {

        pageResult = circleServiceImpl.query(pageResult, id, title, realName, state,startTime, endTime);
        return ResponseData.getResData(pageResult);
    }

    /**
     * 查看圈子详情
     *
     * @return
     */
    @RequestMapping(value = "pc/admin/circle/view")
    public
    @ResponseBody
    String view(String id) {
        Circle circle = circleServiceImpl.queryById(id);
        return ResponseData.getResData(circle);
    }

    /**
     * 创建/跟新圈子
     *
     * @return
     */
    @RequestMapping(value = "pc/admin/circle/save")
    public
    @ResponseBody
    String save(HttpServletRequest request, Circle circle) {
        return circleServiceImpl.save(request, circle);
    }

    /**
     * 圈子下线
     *
     * @param id
     * @return
     */
    @RequestMapping(value = "pc/admin/circle/offline")
    public
    @ResponseBody
    String offline(String id) {
        return circleServiceImpl.offline(id);
    }
}
