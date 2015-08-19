package com.ezb.jdb.controller;

import com.ezb.jdb.common.PageResult;
import com.ezb.jdb.model.News;
import com.ezb.jdb.model.NewsCmt;
import junit.framework.TestCase;
import lombok.extern.slf4j.Slf4j;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;
import javax.transaction.Transactional;

/**
 * author : liufeng
 * create time: 2015/8/7 11:30.
 */
@Slf4j
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:configs/spring/*.xml"})
@Transactional
public class NewsContollerTest extends TestCase {

    @Resource
    private NewsController newsController;

    @Test
    public void queryNews() {
        PageResult<News> pageResult = new PageResult<News>();
        pageResult.setPageSize(10);
        pageResult.setCurPage(1);
        log.info(newsController.queryNews(pageResult, null, null));
        log.info(newsController.queryNews(pageResult, "title10", null));
    }

    @Test
    public void queryMyNews() {
        PageResult<News> pageResult = new PageResult<News>();
        pageResult.setPageSize(10);
        pageResult.setCurPage(1);
        log.info(newsController.queryMyNews(pageResult, "11111166", "title66", null));
    }

    @Test
    public void viewNews() {
        log.info(newsController.viewNews("10"));
    }

    @Test
    @Rollback(false)
    public void createNewsCmt() {
        News news = new News();
        news.setId("10");

        NewsCmt newsCmt = new NewsCmt();
        newsCmt.setContent("评论2");
        newsCmt.setNews(news);

        log.info(newsController.createNewsCmt("1111113", newsCmt));

        NewsCmt newsCmt1 = new NewsCmt();
        newsCmt1.setContent("评论2的子评论");
        newsCmt1.setNews(news);
        newsCmt1.setParentNewsCmt(newsCmt);

        log.info(newsController.createNewsCmt("1111116", newsCmt1));
    }

    @Test
    @Rollback(false)
    public void likeNewsCmt() {
        log.info(newsController.likeNewsCmt("11111110", "2c908c954f0c81a2014f0c81a97d0001"));
    }
}
