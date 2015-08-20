package com.ezb.jdb.dao;

import com.ezb.jdb.common.Constants;
import com.ezb.jdb.common.PageResult;
import com.ezb.jdb.dao.base.BaseDao;
import com.ezb.jdb.model.Alumnus;
import com.ezb.jdb.model.User;
import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Repository;

import javax.persistence.OneToOne;
import java.text.MessageFormat;
import java.util.ArrayList;
import java.util.List;

/**
 * author : liufeng
 * create time: 2015/8/1 16:21.
 */
@Repository
public class UserDao extends BaseDao<User> {

    public User login(User user) {
        String hql = "from User user where user.username=''{0}'' and user.password=''{1}''";
        return queryUnique(MessageFormat.format(hql, user.getUsername(), user.getPassword()));
    }

    public User queryByPhone(String phone) {
        String hql = "from User user where user.username=''{0}''";
        return queryUnique(MessageFormat.format(hql, phone));
    }

    public int qcByPhone(String phone) {
        String hql = "from User user where user.username=''{0}''";
        return queryCount(MessageFormat.format(hql, phone));
    }

    public PageResult<User> queryUser(PageResult<User> pageResult,
                                      String phone, Alumnus alumnus, String orderby) {

        List<Object> paramList = new ArrayList<Object>();

        User user = queryByPhone(phone);
        Double lat = user.getAlumnus().getLat();
        Double lng = user.getAlumnus().getLng();

        String hql = "from User o where o.state=1 and o.username not in " +
                " (select o1.user.username from Friend o1 where o1.user.username=''{0}'')" +
                " and o.username not in (select o2.friend.username from Friend o2 where o2.user.username=''{0}'')";
        paramList.add(phone);

        int i = 1;

        if (null != alumnus) {
            //姓名
            if (!StringUtils.isEmpty(alumnus.getRealName())) {
                hql += " and o.alumnus.realName like ''%{" + i + "}%''";
                paramList.add(alumnus.getRealName());
                i++;
            }

            //性别
            if (null != alumnus.getSex()) {
                hql += " and o.alumnus.sex=''{" + i + "}''";
                paramList.add(alumnus.getSex());
                i++;
            }

            //学校
            if (!StringUtils.isEmpty(alumnus.getSchool())) {
                hql += " and o.alumnus.school like ''%{" + i + "}%''";
                paramList.add(alumnus.getSchool());
                i++;
            }

            //院系
            if (!StringUtils.isEmpty(alumnus.getDepartment())) {
                hql += " and o.alumnus.department like ''%{" + i + "}%''";
                paramList.add(alumnus.getDepartment());
                i++;
            }

            //年级
            if (!StringUtils.isEmpty(alumnus.getGrade())) {
                hql += " and o.alumnus.grade=''{" + i + "}''";
                paramList.add(alumnus.getGrade());
                i++;
            }
        }

        //按距离排序
        if (StringUtils.equals(Constants.ORDERBY_LOCATION, orderby)) {
            int latIndex = i;
            int lngIndex = i++;
            hql += " order by round(6378.138*2*asin(sqrt(pow(sin( (o.alumnus.lat*pi()/180-{" + latIndex + "}*pi()/180)/2),2)" +
                    "+cos(o.alumnus.lat*pi()/180)*cos({" + latIndex + "}*pi()/180)* pow(sin( (o.alumnus.lng*pi()/180-" +
                    "{" + lngIndex + "}*pi()/180)/2),2)))*1000)/1000";
            paramList.add(lat);
            paramList.add(lng);
        }

        //按姓名排序
        if (StringUtils.equals(Constants.ORDERBY_USERNAME, orderby)) {
            hql += " order by o.alumnus.realName";
        }

        return query(MessageFormat.format(hql, paramList.toArray()), pageResult);
    }

    public PageResult<User> queryNearUsers(PageResult<User> pageResult, String phone) {

        User user = queryByPhone(phone);
        Double lat = user.getAlumnus().getLat();
        Double lng = user.getAlumnus().getLng();

        String hql = "from User o where o.state=1 and o.username != ''{0}''";
        hql += " order by round(6378.138*2*asin(sqrt(pow(sin( (o.alumnus.lat*pi()/180-{1}*pi()/180)/2),2)" +
                "+cos(o.alumnus.lat*pi()/180)*cos({1}*pi()/180)* pow(sin( (o.alumnus.lng*pi()/180-" +
                "{2}*pi()/180)/2),2)))*1000)/1000";

        return query(MessageFormat.format(hql,phone,lat,lng), pageResult);
    }
}
