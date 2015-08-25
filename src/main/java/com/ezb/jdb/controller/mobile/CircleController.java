package com.ezb.jdb.controller.mobile;

import com.ezb.jdb.common.PageResult;
import com.ezb.jdb.common.ResponseData;
import com.ezb.jdb.model.CirCmt;
import com.ezb.jdb.model.Circle;
import com.ezb.jdb.service.ICirCmtService;
import com.ezb.jdb.service.ICircleService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;

/**
 * 圈子
 * author : liufeng
 * create time:2015/8/14 14:56
 */
@Controller
public class CircleController {

    @Resource
    private ICircleService circleServiceImpl;

    @Resource
    private ICirCmtService cirCmtServiceImpl;

    /**
     * 圈子分页列表
     *
     * @param pageResult
     * @param queryWords 查询关键字
     * @return
     */
    @RequestMapping(value = "mobile/circle/querycircles")
    public
    @ResponseBody
    String queryCircles(PageResult<Circle> pageResult, String queryWords) {
        List<Circle> list = circleServiceImpl.queryCircles(pageResult, queryWords).getResultList();
        return ResponseData.getResData(list);
    }

    /**
     * 我的圈子列表
     *
     * @param pageResult
     * @param phone      当前用户手机号
     * @param queryWords 查询关键字
     * @return
     */
    @RequestMapping(value = "mobile/circle/querymycircles")
    public
    @ResponseBody
    String queryMyCircles(PageResult<Circle> pageResult, String phone, String queryWords) {
        List<Circle> list = circleServiceImpl.queryMyCircles(pageResult, phone, queryWords).getResultList();
        return ResponseData.getResData(list);
    }

    /**
     * 圈子评论列表
     *
     * @param pageResult
     * @param circleid
     * @return
     */
    @RequestMapping(value = "mobile/circle/querycircmt")
    public
    @ResponseBody
    String queryCircmt(PageResult<CirCmt> pageResult, String circleid) {
        List<CirCmt> list = cirCmtServiceImpl.queryCircmts(pageResult, circleid).getResultList();
        return ResponseData.getResData(list);
    }

    /**
     * 创建圈子评论
     *
     * @return
     */
    @RequestMapping(value = "mobile/circle/createcircmt")
    public
    @ResponseBody
    String createCircmt(String phone, CirCmt cirCmt) {
        return cirCmtServiceImpl.createCircmt(phone, cirCmt);
    }

    /**
     * 加入圈子
     *
     * @return
     */
    @RequestMapping(value = "mobile/circle/join")
    public
    @ResponseBody
    String join(String phone, String id) {
        return circleServiceImpl.join(phone, id);
    }

    /**
     * 查看圈子详情
     *
     * @return
     */
    @RequestMapping(value = "mobile/circle/viewcircle")
    public
    @ResponseBody
    String viewCircle(String id) {
        Circle circle = circleServiceImpl.queryById(id);
        return ResponseData.getResData(circle);
    }

}
