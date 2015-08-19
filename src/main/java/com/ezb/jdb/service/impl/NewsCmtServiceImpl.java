package com.ezb.jdb.service.impl;

import com.ezb.jdb.common.ResponseState;
import com.ezb.jdb.dao.NewsCmtDao;
import com.ezb.jdb.dao.NewsDao;
import com.ezb.jdb.dao.UserDao;
import com.ezb.jdb.model.News;
import com.ezb.jdb.model.NewsCmt;
import com.ezb.jdb.model.User;
import com.ezb.jdb.service.INewsCmtService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import javax.transaction.Transactional;
import java.util.Date;
import java.util.List;

/**
 * 资讯评论
 * author : liufeng
 * create time: 2015/8/7 14:48.
 */
@Service
public class NewsCmtServiceImpl implements INewsCmtService {

    @Resource
    private UserDao userDao;

    @Resource
    private NewsCmtDao newsCmtDao;

    @Resource
    private NewsDao newsDao;

    public String addNewsCmt(String phone, NewsCmt newsCmt) {
        User user = userDao.queryByPhone(phone);
        if (null != user) {

            News news = newsDao.get(News.class, newsCmt.getNews().getId());
            if (null == news) {
                return ResponseState.INVALID_ID;
            }
            newsCmt.setNews(news);
            newsCmt.setLikeCount(0);
            newsCmt.setCommentUser(user);
            newsCmt.setCreateTime(new Date());
            newsCmtDao.add(newsCmt);
            return ResponseState.SUCCESS;
        } else {
            return ResponseState.INVALID_PHONE;
        }
    }

    public String likeNewsCmt(String phone, String id) {
        User user = userDao.queryByPhone(phone);
        if (null != user) {
            if (1 == newsCmtDao.likeNewsCmt(id)) {
                return ResponseState.SUCCESS;
            } else {
                return ResponseState.LIKE_OPT_ERR;
            }
        } else {
            return ResponseState.INVALID_PHONE;
        }
    }

    public List<NewsCmt> qNewsCmtByNewsId(String newsId) {
        return newsCmtDao.qNewsCmtByNewsId(newsId);
    }
}
