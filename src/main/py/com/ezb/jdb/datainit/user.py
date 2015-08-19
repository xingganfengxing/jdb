#!/usr/bin/python
# -*- coding: utf-8 -*-
# Author   : liufeng
# Create   : 2015/8/13 16:50
import MySQLdb,initconn

def inituser():
    """初始化用户表"""
    try:
        conn = initconn.getConn()
        cur = conn.cursor()

        for i in range(100):
            value = [i, "pass" + str(i), 1, "111111" + str(i)]
            cur.execute('insert into t_user values(%s,%s,%s,%s)', value)
        conn.commit()
        cur.close()
        conn.close()

    except MySQLdb.Error, e:
        print "Mysql Error %d: %s" % (e.args[0], e.args[1])