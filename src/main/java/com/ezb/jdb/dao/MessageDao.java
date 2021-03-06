package com.ezb.jdb.dao;

import com.ezb.jdb.common.PageResult;
import com.ezb.jdb.dao.base.BaseDao;
import com.ezb.jdb.model.Message;
import org.springframework.stereotype.Repository;

import java.text.MessageFormat;

/**
 * author : liufeng
 * create time:2015/8/18 10:46
 */
@Repository
public class MessageDao extends BaseDao<Message> {
    public Integer unReadCount(String phone) {
        String hql = "from Message o where o.receiver.username=''{0}'' and o.state=0";
        return queryCount(MessageFormat.format(hql,phone));
    }

    public PageResult<Message> unReadMessage(PageResult<Message> pageResult, String phone) {
        String hql = "from Message o where o.receiver.username=''{0}'' and o.state=0 order by o.createTime desc";
        return query(MessageFormat.format(hql, phone), pageResult);
    }

    public PageResult<Message> query2UserMessage(PageResult<Message> pageResult,
                                                 String senderPhone, String receiverPhone) {
        String hql = "from Message o where (o.sender.username=''{0}'' and o.receiver.username=''{1}'') " +
                " or (o.sender.username=''{1}'' and o.receiver.username=''{0}'')) order by o.createTime desc";
        return query(MessageFormat.format(hql,senderPhone,receiverPhone),pageResult);
    }

    public PageResult<Message> allMessage(PageResult<Message> pageResult, String phone) {
        String hql = "from Message o where o.receiver.username=''{0}'' order by o.createTime desc";
        return query(MessageFormat.format(hql, phone), pageResult);
    }
}
