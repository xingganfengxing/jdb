package com.ezb.jdb.service;

import com.ezb.jdb.common.PageResult;
import com.ezb.jdb.model.Circle;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * 圈子
 * author : liufeng
 * create time:2015/8/14 16:05
 */
public interface ICircleService {


    PageResult<Circle> queryCircles(PageResult<Circle> pageResult, String queryWords);

    PageResult<Circle> queryMyCircles(PageResult<Circle> pageResult, String phone, String queryWords);

    String join(String phone, String id);

    Circle queryById(String id);

    PageResult<Circle> query(PageResult<Circle> pageResult, String id, String title, String realName, String startTime, String endTime);

    String save(HttpServletRequest request, Circle circle);

    String offline(String id);
}
