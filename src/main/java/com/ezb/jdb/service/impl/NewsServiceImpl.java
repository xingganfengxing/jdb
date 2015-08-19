package com.ezb.jdb.service.impl;

import com.ezb.jdb.common.PageResult;
import com.ezb.jdb.common.ResponseState;
import com.ezb.jdb.dao.NewsDao;
import com.ezb.jdb.dao.UserDao;
import com.ezb.jdb.model.News;
import com.ezb.jdb.model.User;
import com.ezb.jdb.service.INewsService;
import com.ezb.jdb.tool.JdbFileUtils;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.util.Date;

/**
 * 资讯
 * author : liufeng
 * create time: 2015/8/7 10:36.
 */
@Service
public class NewsServiceImpl implements INewsService {

    @Resource
    private NewsDao newsDao;

    @Resource
    private UserDao userDao;

    @Value("${uploadWarPath}")
    private String uploadWarPath;

    public PageResult<News> queryNews(PageResult<News> pageResult,
                                      String phone, String keyWords, String type) {

        return newsDao.queryNews(pageResult, phone, keyWords, type);
    }

    public News queryNewsById(String id) {
        //更新pv
        int affectNum = newsDao.updatePv(id);
        if (affectNum == 1) {
            return newsDao.get(News.class, id);
        } else {
            return null;
        }
    }

    public String addNews(HttpServletRequest request, News news, String phone) {

        User user = userDao.queryByPhone(phone);
        if (null != user) {

            String rpath = JdbFileUtils.uploadFile(request, uploadWarPath);
            if (StringUtils.equals(rpath, ResponseState.PIC_SAVE_ERR)) {
                return ResponseState.PIC_SAVE_ERR_JSON;
            }

            news.setPicPath(rpath);
            news.setCreateUser(user);
            news.setCreateTime(new Date());
            news.setPv(0);
            newsDao.add(news);
            return ResponseState.SUCCESS;
        } else {
            return ResponseState.INVALID_PHONE;
        }
    }
}
