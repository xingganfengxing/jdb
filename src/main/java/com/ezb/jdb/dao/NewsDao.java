package com.ezb.jdb.dao;

import com.ezb.jdb.common.PageResult;
import com.ezb.jdb.dao.base.BaseDao;
import com.ezb.jdb.model.News;
import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Repository;

import java.text.MessageFormat;
import java.util.ArrayList;
import java.util.List;

/**
 * author : liufeng
 * create time: 2015/8/7 10:37.
 */
@Repository
public class NewsDao extends BaseDao<News> {

    public int updatePv(String id) {
        String hql = "update News o set o.pv=o.pv+1 where id=''{0}''";
        return executeHql(MessageFormat.format(hql, id));
    }

    public PageResult<News> queryNews(PageResult<News> pageResult, String phone, String keyWords, String type) {

        List<Object> paramList = new ArrayList<Object>();
        int pIndex = 0;

        String hql = "from News o where o.state=1";

        if (!StringUtils.isEmpty(phone)) {
            hql += " and o.createUser.username=''{" + pIndex++ + "}'' ";
            paramList.add(phone);
        }

        if (null != keyWords) {
            if (!StringUtils.isEmpty(keyWords.trim())) {
                hql += " and o.title like ''%{" + pIndex++ + "}%'' ";
                paramList.add(keyWords);
            }
        }

        if (!StringUtils.isEmpty(type)) {
            hql += " and o.type=''{" + pIndex++ + "}'' ";
            paramList.add(type);
        }

        hql += " order by o.createTime desc";
        return query(MessageFormat.format(hql, paramList.toArray()), pageResult);
    }

    public PageResult<News> query(PageResult<News> pageResult, String id, String title,
                                  String startTime, String endTime,
                                  String username, String realName,
                                  String type, String state) {

        List<Object> paramList = new ArrayList<Object>();
        int pIndex = 0;

        String hql = "from News o where 1=1";

        if (!StringUtils.isEmpty(id)) {
            hql += " and o.id like ''%{" + pIndex++ + "}%'' ";
            paramList.add(id);
        }

        if (!StringUtils.isEmpty(title)) {
            hql += " and o.title like ''%{" + pIndex++ + "}%'' ";
            paramList.add(title);
        }

        if (!StringUtils.isEmpty(startTime)) {
            hql += " and o.createTime >= ''{" + pIndex++ + "}'' ";
            paramList.add(startTime);
        }

        if (!StringUtils.isEmpty(endTime)) {
            hql += " and o.createTime <= ''{" + pIndex++ + "}'' ";
            paramList.add(endTime);
        }

        if (!StringUtils.isEmpty(username)) {
            hql += " and o.createUser.username like ''%{" + pIndex++ + "}%'' ";
            paramList.add(username);
        }

        if (!StringUtils.isEmpty(realName)) {
            hql += " and o.createUser.alumnus.realName like ''%{" + pIndex++ + "}%'' ";
            paramList.add(realName);
        }

        if (!StringUtils.isEmpty(type)) {
            hql += " and o.type = ''{" + pIndex++ + "}'' ";
            paramList.add(type);
        }

        if (!StringUtils.isEmpty(state)) {
            hql += " and o.state = ''{" + pIndex++ + "}'' ";
            paramList.add(state);
        }

        hql += " order by o.createTime desc";
        return query(MessageFormat.format(hql, paramList.toArray()), pageResult);
    }
}
