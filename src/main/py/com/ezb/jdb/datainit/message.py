#!/usr/bin/python
# -*- coding: utf-8 -*-
# Author   : liufeng
# Create   : 2015/8/13 16:50
import MySQLdb, initconn, time
import random


def initmessage():
    """初始化消息表"""
    try:
        conn = initconn.getConn()
        cur = conn.cursor()

        for i in range(100):
            value = [
                i,
                "attachpath" + str(i),
                "content" + str(i),
                time.strftime("%Y-%m-%d %H:%M:%S", time.localtime()),
                random.randint(0, 1),
                "title" + str(i),
                str(random.randint(0, 99)),
                str(random.randint(0, 99))
            ]
            cur.execute('insert into t_message values(%s,%s,%s,%s,%s,%s,%s,%s)', value)
        conn.commit()
        cur.close()
        conn.close()

    except MySQLdb.Error, e:
        print "Mysql Error %d: %s" % (e.args[0], e.args[1])


if __name__ == '__main__':
    initmessage()
