#!/usr/bin/python
# -*- coding: utf-8 -*-
# Author   : liufeng
# Create   : 2015/8/13 16:51
import initconn,time,random

def initCircle():
    """初始化圈子表"""
    conn = initconn.getConn()
    cur = conn.cursor()

    for i in range(100):
        value = [
            str(i),
            time.strftime("%Y-%m-%d %H:%M:%S", time.localtime()),
            "iconpath" + str(i),
            "introduce" + str(i),
            "picpath" + str(i),
            str(1),
            "title" + str(i),
            random.randint(0, 99)
        ]
        cur.execute('insert into circle values(%s,%s,%s,%s,%s,%s,%s,%s)', value)
    conn.commit()
    cur.close()
    conn.close()