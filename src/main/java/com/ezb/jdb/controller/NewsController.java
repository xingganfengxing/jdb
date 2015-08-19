package com.ezb.jdb.controller;

import com.alibaba.fastjson.JSONObject;
import com.ezb.jdb.common.PageResult;
import com.ezb.jdb.common.ResponseData;
import com.ezb.jdb.common.ResponseState;
import com.ezb.jdb.model.News;
import com.ezb.jdb.model.NewsCmt;
import com.ezb.jdb.service.INewsCmtService;
import com.ezb.jdb.service.INewsService;
import com.ezb.jdb.service.IUserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * 资讯
 * author : liufeng
 * create time: 2015/8/7 10:26.
 */
@Controller
public class NewsController {

    @Resource
    private INewsService newsServiceImpl;

    @Resource
    private INewsCmtService newsCmtServiceImpl;

    @Resource
    private IUserService userServiceImpl;

    /**
     * 资讯分页列表
     *
     * @param pageResult
     * @param queryWords 查询关键字
     * @param type       资讯类别
     * @return
     */
    @RequestMapping(value = "news/querynews", method = RequestMethod.POST)
    public
    @ResponseBody
    String queryNews(PageResult<News> pageResult, String queryWords, String type) {
        List<News> list = newsServiceImpl.queryNews(pageResult, null, queryWords, type).getResultList();
        return ResponseData.getResData(list);
    }

    /**
     * 我创建的资讯列表
     *
     * @param pageResult
     * @param phone
     * @param type
     * @param queryWords 查询关键字
     * @return
     */
    @RequestMapping(value = "news/querymynews", method = RequestMethod.POST)
    public
    @ResponseBody
    String queryMyNews(PageResult<News> pageResult, String phone, String queryWords, String type) {
        if (!userServiceImpl.isValid(phone)) {
            return ResponseState.INVALID_PHONE;
        }
        List<News> list = newsServiceImpl.queryNews(pageResult, phone, queryWords, type).getResultList();
        return ResponseData.getResData(list);
    }

    /**
     * 资讯详情页
     *
     * @return
     */
    @RequestMapping(value = "news/viewnews", method = RequestMethod.POST)
    public
    @ResponseBody
    String viewNews(String id) {
        News news = newsServiceImpl.queryNewsById(id);//新闻实体
        List<NewsCmt> comments = newsCmtServiceImpl.qNewsCmtByNewsId(id);
        JSONObject jsonObject = new JSONObject();
        jsonObject.put("news", news);
        jsonObject.put("comments", comments);
        return ResponseData.getResData(jsonObject);
    }

    /**
     * 资讯创建页
     *
     * @return
     */
    @RequestMapping(value = "news/createnews", method = RequestMethod.POST)
    public
    @ResponseBody
    String createNews(HttpServletRequest request, News news, String phone) {
        return newsServiceImpl.addNews(request,news, phone);
    }

    /**
     * 创建评论
     *
     * @return
     */
    @RequestMapping(value = "news/createnewscmt", method = RequestMethod.POST)
    public
    @ResponseBody
    String createNewsCmt(String phone, NewsCmt newsCmt) {
        return newsCmtServiceImpl.addNewsCmt(phone, newsCmt);
    }

    /**
     * 评论点赞
     *
     * @return
     */
    @RequestMapping(value = "news/likenewscmt", method = RequestMethod.POST)
    public
    @ResponseBody
    String likeNewsCmt(String phone, String id) {
        return newsCmtServiceImpl.likeNewsCmt(phone, id);
    }

}
