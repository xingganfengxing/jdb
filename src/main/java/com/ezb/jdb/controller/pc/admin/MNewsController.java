package com.ezb.jdb.controller.pc.admin;

import com.ezb.jdb.common.ResponseData;
import com.ezb.jdb.model.News;
import com.ezb.jdb.service.INewsService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;

/**
 * 资讯
 * author : liufeng
 * create time:2015/8/25 18:12
 */
@Controller
public class MNewsController {
    @Resource
    private INewsService newsServiceImpl;

    /**
     * 资讯详情页
     *
     * @return
     */
    @RequestMapping(value = "pc/admin/news/viewnews")
    public
    @ResponseBody
    String viewNews(String id) {
        News news = newsServiceImpl.queryNewsById(id);//新闻实体
        return ResponseData.getResData(news);
    }
}
