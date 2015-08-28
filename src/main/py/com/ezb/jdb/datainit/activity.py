#!/usr/bin/python
# -*- coding: utf-8 -*-
# Author   : liufeng
# Create   : 2015/8/13 16:59
import initconn,time,random

def initActivity():
    """活动信息表"""
    conn = initconn.getConn()
    cur = conn.cursor()

    for i in range(100):
        value = [
            str(i),
            "activitydesc" + str(i),
            "address" + str(i),
            "city" + str(i),
            time.strftime("%Y-%m-%d %H:%M:%S", time.localtime()),
            "contactemail" + str(i) + "@qq.com",
            "contactman" + str(i),
            "contactphone" + str(i),
            time.strftime("%Y-%m-%d %H:%M:%S", time.localtime()),
            time.strftime("%Y-%m-%d %H:%M:%S", time.localtime()),
            "joinfee" + str(i),
            "otherinfo" + str(i),
            random.randint(0, 99),
            "picpath" + str(i),
            random.randint(1, 100),
            time.strftime("%Y-%m-%d %H:%M:%S", time.localtime()),
            str(1),
            "title" + str(i),
            "topic" + str(i),
            str(i)
        ]
        cur.execute('insert into activity values(%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)', value)
    conn.commit()
    cur.close()
    conn.close()