package com.ezb.jdb.dao;

import com.ezb.jdb.common.PageResult;
import com.ezb.jdb.dao.base.BaseDao;
import com.ezb.jdb.model.Circle;
import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Repository;

import java.text.MessageFormat;

/**
 * 圈子
 * author : liufeng
 * create time:2015/8/14 16:04
 */
@Repository
public class CircleDao extends BaseDao<Circle> {

    public PageResult<Circle> queryCircles(PageResult<Circle> pageResult, String queryWords) {
        String hql = "from Circle o ";
        if(null != queryWords){
            if(!StringUtils.isEmpty(queryWords.trim())){
                hql += "where o.title like ''%{0}%'' ";
            }
        }
        hql += " order by o.createTime desc";

        return query(MessageFormat.format(hql, queryWords), pageResult);
    }
}
