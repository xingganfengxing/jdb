#!/usr/bin/python
# -*- coding: utf-8 -*-
# Author   : liufeng
# Create   : 2015/8/13 16:50
import MySQLdb, initconn, time
import random


def initinform():
    """初始化举报表"""
    try:
        conn = initconn.getConn()
        cur = conn.cursor()

        type = ["资讯", "活动", "圈子"]
        viewurl = ["pc/admin/news/view", "pc/admin/activity/view", "pc/admin/circle/view"]

        for i in range(100):
            typeIndex = random.randint(0, 2)
            refId = random.randint(0,99)
            value = [
                i,
                refId,
                "title" + str(i),
                time.strftime("%Y-%m-%d %H:%M:%S", time.localtime()),
                "otherinfo" + str(i),
                "reason" + str(i),
                type[typeIndex],
                viewurl[typeIndex] + "id=" + str(refId),
                random.randint(0, 99)
            ]
            cur.execute('insert into t_inform values(%s,%s,%s,%s,%s,%s,%s,%s,%s)', value)
        conn.commit()
        cur.close()
        conn.close()

    except MySQLdb.Error, e:
        print "Mysql Error %d: %s" % (e.args[0], e.args[1])


if __name__ == '__main__':
    initinform()
