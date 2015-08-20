#!/usr/bin/python
# -*- coding: utf-8 -*-
# Author   : liufeng
# Create   : 2015/8/13 16:51
import time

import initconn


def initNews():
    """初始化资讯表"""
    conn = initconn.getConn()
    cur = conn.cursor()

    for i in range(100):
        value = [
            str(i),
            "content" + str(i),
            time.strftime("%Y-%m-%d %H:%M:%S", time.localtime()),
            "path" + str(i),
            str(1),
            str(1),
            "title" + str(i),
            str(1),
            str(i)
        ]
        cur.execute('insert into t_news values(%s,%s,%s,%s,%s,%s,%s,%s,%s)', value)
    conn.commit()
    cur.close()
    conn.close()