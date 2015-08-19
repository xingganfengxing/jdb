package com.ezb.jdb.dao;

import com.ezb.jdb.dao.base.BaseDao;
import org.springframework.stereotype.Repository;

import java.text.MessageFormat;

/**
 * author : liufeng
 * create time: 2015/8/6 11:06.
 */
@Repository
public class InvitateCodeDao<InvitateCode> extends BaseDao {

    public int qcByPhoneAndCode(String code){
        String hql = "from InvitateCode o where o.code=''{0}''";
        return queryCount(MessageFormat.format(hql,code));
    }
}
