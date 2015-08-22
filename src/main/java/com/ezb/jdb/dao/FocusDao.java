package com.ezb.jdb.dao;

import com.ezb.jdb.common.FocusType;
import com.ezb.jdb.common.PageResult;
import com.ezb.jdb.dao.base.BaseDao;
import com.ezb.jdb.model.Focus;
import org.springframework.stereotype.Repository;

/**
 * author : liufeng
 * create time:2015/8/20 10:18
 */
@Repository
public class FocusDao extends BaseDao<Focus> {

    /**
     * 获取首页顶部焦点图(资讯、活动)
     *
     * @param pageResult
     * @return
     */
    public PageResult<Focus> getTopFocus(PageResult<Focus> pageResult) {
        String hql = "from Focus o where (o.type='" + FocusType.NEWS + "' " +
                "or o.type='" + FocusType.ACTIVITY + "') order by o.position";
        return query(hql, pageResult);
    }

    /**
     * 获取圈子推荐
     *
     * @param pageResult
     * @return
     */
    public PageResult<Focus> getCircleFocus(PageResult<Focus> pageResult) {
        String hql = "from Focus o where o.type='" + FocusType.CIRCLE + "' order by o.position";
        return query(hql, pageResult);
    }
}
