#!/usr/bin/python
# -*- coding: utf-8 -*-
# Author   : liufeng
# Create   : 2015/8/13 16:53
import initconn,random

def initAlumnus():
    """用户详细信息表"""
    conn = initconn.getConn()
    cur = conn.cursor()

    for i in range(100):
        value = [
            str(i),
            "company" + str(i),
            "department" + str(i),
            "email" + str(i) + "@qq.com",
            "enrealname" + str(i),
            "grade" + str(i),
            "headpicpath" + str(i),
            str(round(random.random() * 360, 2)),
            str(round(random.random() * 360, 2)),
            "111111" + str(i),
            "realname" + str(i),
            "school" + str(i),
            random.randint(0, 1),
            "title" + str(i),
            "weixin" + str(i),
            str(i)
        ]
        cur.execute('insert into alumnus values(%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)', value)
    conn.commit()
    cur.close()
    conn.close()
