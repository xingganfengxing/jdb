#!/usr/bin/python
# -*- coding: utf-8 -*-
# Author   : liufeng
# Create   : 2015/8/13 16:51
import time

import initconn, random


def initNews():
    """初始化资讯表"""
    conn = initconn.getConn()
    cur = conn.cursor()
    type = ["投融资", "思源创业", "合作商机", "互帮互助", "校友企业", "求职招聘", "新闻动态", "在水一方"]

    for i in range(100):
        value = [
            str(i),
            "content" + str(i),
            time.strftime("%Y-%m-%d %H:%M:%S", time.localtime()),
            "path" + str(i),
            str(1),
            str(1),
            "title" + str(i),
            type[random.randint(0, 7)],
            str(i)
        ]
        cur.execute('insert into news values(%s,%s,%s,%s,%s,%s,%s,%s,%s)', value)
    conn.commit()
    cur.close()
    conn.close()


def resetType():
    conn = initconn.getConn()
    cur = conn.cursor()
    type = ["投融资", "思源创业", "合作商机", "互帮互助", "校友企业", "求职招聘", "新闻动态", "在水一方"]
    for i in range(100):
        value = [type[random.randint(0, 7)], str(i)]
        cur.execute('update news set type=%s where id=%s', value)
    conn.commit()
    cur.close()
    conn.close()

if __name__ == '__main__':
    resetType()
