package com.ezb.jdb.service.impl;

import com.ezb.jdb.common.PageResult;
import com.ezb.jdb.common.ResponseState;
import com.ezb.jdb.dao.AdminDao;
import com.ezb.jdb.dao.CirCmtDao;
import com.ezb.jdb.dao.CircleDao;
import com.ezb.jdb.dao.UserDao;
import com.ezb.jdb.model.Admin;
import com.ezb.jdb.model.Circle;
import com.ezb.jdb.model.User;
import com.ezb.jdb.service.ICircleService;
import com.ezb.jdb.tool.JdbBeanUtils;
import com.ezb.jdb.tool.JdbFileUtils;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;

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

    @Resource
    private AdminDao adminDao;

    @Value("${uploadWarPath}")
    private String uploadWarPath;

    public PageResult<Circle> queryCircles(PageResult<Circle> pageResult,
                                           String queryWords) {
        pageResult = circleDao.queryCircles(pageResult, queryWords);
        for (Circle circle : pageResult.getResultList()) {
            circle.setCmtCount(cirCmtDao.queryCount(circle.getId()));
        }
        return pageResult;
    }

    public PageResult<Circle> queryMyCircles(PageResult<Circle> pageResult,
                                             String phone, String queryWords) {
        pageResult = circleDao.queryMyCircles(pageResult, phone, queryWords);
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
                if (null == circle.getMembers()) {
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
        return circleDao.get(Circle.class, id);
    }

    public PageResult<Circle> query(PageResult<Circle> pageResult,
                                    String id,
                                    String title,
                                    String realName,
                                    String state,
                                    String startTime,
                                    String endTime) {

        return circleDao.query(pageResult, id, title, realName, state, startTime, endTime);
    }

    public String save(HttpServletRequest request, Circle circle) {

        //id获取
        Object adminIdObj = request.getSession().getAttribute("admin_id");
        if (null == circle.getId()) {
            if (null == adminIdObj) {
                return ResponseState.SESSION_ERR;
            }
        }

        if (uploadPics(request, circle)) { //图片上传
            if (null != circle.getId()) {
                Circle oldCircle = circleDao.get(Circle.class, circle.getId());
                JdbBeanUtils.copyProperties(circle, oldCircle);
                circleDao.update(oldCircle);
            } else {
                circle.setCreateUser(adminDao.get(Admin.class, (String) adminIdObj));
                circle.setCreateTime(new Date());
                circle.setState(1);
                circleDao.add(circle);
            }
            return ResponseState.SUCCESS;
        } else {
            return ResponseState.PIC_SAVE_ERR_JSON;
        }
    }

    public String offline(String id) {
        if (circleDao.offline(id) == 1) {
            return ResponseState.SUCCESS;
        } else {
            return ResponseState.FAIL;
        }
    }

    /**
     * 上传图标和不图片，设置circle属性
     *
     * @param request
     * @param circle
     */
    private boolean uploadPics(HttpServletRequest request, Circle circle) {
        CommonsMultipartResolver multipartResolver = new CommonsMultipartResolver(
                request.getSession().getServletContext());

        if (multipartResolver.isMultipart(request)) {
            String prePath = request.getSession().getServletContext().getRealPath("/")
                    + File.separator + uploadWarPath;

            MultipartHttpServletRequest multiRequest = (MultipartHttpServletRequest) request;
            Iterator<String> iter = multiRequest.getFileNames();

            while (iter.hasNext()) {
                MultipartFile file = multiRequest.getFile(iter.next());

                if (file != null && !StringUtils.isEmpty(file.getOriginalFilename())) {
                    String rpath = JdbFileUtils.uploadFile(file, prePath);
                    if (StringUtils.equals(rpath, ResponseState.PIC_SAVE_ERR)) {
                        return false;
                    }
                    if (StringUtils.equals(file.getName(), "pic")) {
                        circle.setPicPath(uploadWarPath + rpath);
                    }
                    if (StringUtils.equals(file.getName(), "icon")) {
                        circle.setIconPath(uploadWarPath + rpath);
                    }
                }
            }
        }
        return true;
    }
}
