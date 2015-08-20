#!/usr/bin/python
# -*- coding: utf-8 -*-
# Author   : liufeng
# Create   : 2015/8/13 16:50
import MySQLdb, initconn


def initfocus():
    """焦点推荐"""
    try:
        conn = initconn.getConn()
        cur = conn.cursor()

        value = [1, "", 1, "", "", "资讯", ""]
        cur.execute('insert into t_focus values(%s,%s,%s,%s,%s,%s,%s)', value)

        value = [2, "", 2, "", "", "资讯", ""]
        cur.execute('insert into t_focus values(%s,%s,%s,%s,%s,%s,%s)', value)

        value = [3, "", 3, "", "", "活动", ""]
        cur.execute('insert into t_focus values(%s,%s,%s,%s,%s,%s,%s)', value)

        value = [4, "", 4, "", "", "活动", ""]
        cur.execute('insert into t_focus values(%s,%s,%s,%s,%s,%s,%s)', value)

        value = [5, "", 5, "", "", "资讯", ""]
        cur.execute('insert into t_focus values(%s,%s,%s,%s,%s,%s,%s)', value)

        value = [6, "", 6, "", "", "资讯", ""]
        cur.execute('insert into t_focus values(%s,%s,%s,%s,%s,%s,%s)', value)

        value = [7, "", 7, "", "", "圈子", ""]
        cur.execute('insert into t_focus values(%s,%s,%s,%s,%s,%s,%s)', value)

        value = [8, "", 8, "", "", "圈子", ""]
        cur.execute('insert into t_focus values(%s,%s,%s,%s,%s,%s,%s)', value)

        value = [9, "", 9, "", "", "圈子", ""]
        cur.execute('insert into t_focus values(%s,%s,%s,%s,%s,%s,%s)', value)

        value = [10, "", 10, "", "", "圈子", ""]
        cur.execute('insert into t_focus values(%s,%s,%s,%s,%s,%s,%s)', value)

        conn.commit()
        cur.close()
        conn.close()

    except MySQLdb.Error, e:
        print "Mysql Error %d: %s" % (e.args[0], e.args[1])
