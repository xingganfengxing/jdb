package com.ezb.jdb.dao;

import com.ezb.jdb.common.PageResult;
import com.ezb.jdb.common.ResponseState;
import com.ezb.jdb.dao.base.BaseDao;
import com.ezb.jdb.model.Friend;
import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Repository;

import java.text.MessageFormat;

/**
 * 通讯录
 * author : liufeng
 * create time:2015/8/12 10:53
 */
@Repository
public class FriendDao extends BaseDao<Friend> {

    public PageResult<Friend> queryFriend(PageResult<Friend> pageResult, String phone,
                                          String queryWords,Integer state) {

        String hql = "from Friend o where (o.user.username=''{0}'' or o.friend.username=''{0}'') " +
                "and o.state=''{1}''";

        if(!StringUtils.isEmpty(queryWords)){
            hql += " and (o.user.alumnus.realName like ''%{2}%'' or o.friend.alumnus.realName like ''%{2}%'')";
        }

        return query(MessageFormat.format(hql,phone,state,queryWords),pageResult);
    }

    public String confireFriend(String id) {
        String hql = "update Friend o set o.state=1,o.confireDate=now() where o.id=''{0}''";
        if(executeHql(MessageFormat.format(hql,id)) != 1){
            return ResponseState.CONFIRE_FRIEND_ERR;
        }else{
            return ResponseState.SUCCESS;
        }
    }

    public Friend queryBy2Phone(String phone1,String phone2){
        String hql = "from Friend o where (o.user.username=''{0}'' and o.friend.username=''{1}'' " +
                "or o.user.username=''{1}'' and o.friend.username=''{0}'')";
        return queryUnique(MessageFormat.format(hql,phone1,phone2));
    }
}
