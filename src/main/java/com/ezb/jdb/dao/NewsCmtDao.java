package com.ezb.jdb.dao;

import com.ezb.jdb.dao.base.BaseDao;
import com.ezb.jdb.model.NewsCmt;
import org.springframework.stereotype.Repository;

import java.text.MessageFormat;
import java.util.List;

/**
 * author : liufeng
 * create time: 2015/8/7 14:50.
 */
@Repository
public class NewsCmtDao<NewsCmt> extends BaseDao {

    public int likeNewsCmt(String id) {
        String hql = "update NewsCmt o set o.likeCount=o.likeCount+1 where o.id=''{0}''";
        return executeHql(MessageFormat.format(hql,id));
    }

    public List<NewsCmt> qNewsCmtByNewsId(String newsId) {
        String hql = "from NewsCmt o where o.news.id=''{0}'' and o.parentNewsCmt.id is null";
        return query(MessageFormat.format(hql,newsId));
    }
}
