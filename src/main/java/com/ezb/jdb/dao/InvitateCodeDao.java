package com.ezb.jdb.dao;

import com.ezb.jdb.dao.base.BaseDao;
import com.ezb.jdb.model.InvitateCode;
import org.springframework.stereotype.Repository;

import java.text.MessageFormat;

/**
 * author : liufeng
 * create time: 2015/8/6 11:06.
 */
@Repository
public class InvitateCodeDao extends BaseDao<InvitateCode> {

    public int qcByPhoneAndCode(String code){
        String hql = "from InvitateCode o where o.code=''{0}''";
        return queryCount(MessageFormat.format(hql,code));
    }

    public int deleteByCode(String phone,String invitateCode) {
        String hql = "delete from InvitateCode o where o.createUser.username=''{0}'' o.code=''{1}''";
        return executeHql(MessageFormat.format(hql,phone,invitateCode));
    }
}
