package com.ezb.jdb.service;

import com.ezb.jdb.common.PageResult;
import com.ezb.jdb.model.News;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import javax.servlet.http.HttpServletRequest;

/**
 * 资讯服务类
 * author : liufeng
 * create time: 2015/8/7 10:34.
 */
public interface INewsService {

    PageResult<News> queryNews(PageResult<News> pageResult, String phone, String keyWords, String type);

    News queryNewsById(String id);

    String addNews(HttpServletRequest request, News news, String phone);
}
