package com.ezb.jdb.service.impl;

import com.ezb.jdb.common.PageResult;
import com.ezb.jdb.common.ResponseState;
import com.ezb.jdb.dao.CirCmtDao;
import com.ezb.jdb.dao.CircleDao;
import com.ezb.jdb.dao.UserDao;
import com.ezb.jdb.model.Circle;
import com.ezb.jdb.model.User;
import com.ezb.jdb.service.ICircleService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.HashSet;

/**
 * 圈子
 * author : liufeng
 * create time:2015/8/14 16:06
 */
@Service
public class CircleServiceImpl implements ICircleService {

    @Resource
    private CircleDao circleDao;

    @Resource
    private CirCmtDao cirCmtDao;

    @Resource
    private UserDao userDao;

    public PageResult<Circle> queryCircles(PageResult<Circle> pageResult, String queryWords) {
        pageResult = circleDao.queryCircles(pageResult, queryWords);
        for (Circle circle : pageResult.getResultList()) {
            circle.setCmtCount(cirCmtDao.queryCount(circle.getId()));
        }
        return pageResult;
    }

    public PageResult<Circle> queryMyCircles(PageResult<Circle> pageResult, String phone, String queryWords) {
        pageResult = circleDao.queryMyCircles(pageResult, phone,queryWords);
        for (Circle circle : pageResult.getResultList()) {
            circle.setCmtCount(cirCmtDao.queryCount(circle.getId()));
        }
        return pageResult;
    }

    public String join(String phone, String id) {
        User user = userDao.queryByPhone(phone);
        if (null != user) {
            Circle circle = circleDao.get(Circle.class, id);
            if (null != circle) {
                if(null == circle.getMembers()){
                    circle.setMembers(new HashSet<User>());
                }
                circle.getMembers().add(user);
                circleDao.update(circle);
                return ResponseState.SUCCESS;
            } else {
                return ResponseState.INVALID_ID;
            }
        } else {
            return ResponseState.INVALID_PHONE;
        }
    }

    public Circle queryById(String id) {
        return circleDao.get(Circle.class,id);
    }
}
