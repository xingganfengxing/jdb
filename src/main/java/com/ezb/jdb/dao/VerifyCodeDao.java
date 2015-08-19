package com.ezb.jdb.dao;

import com.ezb.jdb.dao.base.BaseDao;
import org.springframework.stereotype.Repository;

import java.text.MessageFormat;

/**
 * author : liufeng
 * create time: 2015/8/6 10:36.
 */
@Repository
public class VerifyCodeDao<VerifyCode> extends BaseDao {

    public int qcByPhoneAndCode(String phone,String code){
        String hql = "from VerifyCode o where o.phone={0} and o.verifyCode={1}";
        return queryCount(MessageFormat.format(hql,phone,code));
    }
}
