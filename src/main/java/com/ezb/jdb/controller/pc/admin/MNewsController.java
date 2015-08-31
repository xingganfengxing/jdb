package com.ezb.jdb.controller.pc.admin;

import com.ezb.jdb.common.PageResult;
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

    /**
     * 资讯查询
     *
     * @param id        编号
     * @param title     标题
     * @param startTime 开始时间
     * @param endTime   结束时间
     * @param username  创建者账号
     * @param realName  创建者姓名
     * @return
     */
    @RequestMapping(value = "pc/admin/news/query")
    public
    @ResponseBody
    String query(PageResult<News> pageResult,
                 String id,
                 String title,
                 String startTime,
                 String endTime,
                 String username,
                 String realName,
                 String type,
                 String state) {

        pageResult = newsServiceImpl.query(pageResult,id,title,startTime,endTime,username,realName,type,state);
        return ResponseData.getResData(pageResult);
    }

    /**
     * 下线或恢复资讯
     * @param id
     * @return
     */
    @RequestMapping(value = "pc/admin/news/state")
    public
    @ResponseBody
    String state(String id){
        return newsServiceImpl.state(id);
    }
}
